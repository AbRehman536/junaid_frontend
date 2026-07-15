import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:junaid_frontend/textfields.dart';
import 'package:pinput/pinput.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ///Switch
  bool isSwitchON = false;
  ///Drop down
  List<String> genderList = ["Male", "Female", "Others"];
  String? selectedGender;
  ///Slider
  double currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              color: isSwitchON ? Colors.green : Colors.grey.withOpacity(0.2),
              child: ListTile(
                leading: Icon(isSwitchON ? Icons.wifi : Icons.wifi_1_bar),
                title: Text("Wifi"),
                subtitle: Text(isSwitchON ? "ON" : "OFF"),
                trailing:  CupertinoSwitch(
                  activeColor: Colors.blue,
                    inactiveTrackColor: Colors.black,
                    thumbColor: Colors.red,
                    inactiveThumbColor: Colors.yellow,
                    value: isSwitchON,
                    onChanged: (val){
                      setState(() {
                        isSwitchON = val;
                      });
                    }),
              ),
            ),
            if(isSwitchON == true)
              Center(child: Text("Wifi On"),),
            DropdownButton(
              hint: Text("Select Gender"),
                value: selectedGender,
                items: genderList.map((gender){
                  return DropdownMenuItem(
                      value: gender,
                      child: Text(gender.toString()));
                }).toList(),
                onChanged: (val){
                setState(() {
                  selectedGender = val;
                });
                }),
            Slider(
                value: currentValue,
                min: 0,
                max: 100,
                divisions: 100,
                label: currentValue.round().toString(),
                onChanged: (val){
                  setState(() {
                    currentValue = val;
                  });
                }),

            Pinput(
              length: 6,
              showCursor: true,
              onCompleted: (value){
                print(value);
              },
              defaultPinTheme: PinTheme(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.red
                )
              ),
            ),
            ElevatedButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Thank You!"),
                      content: Text("Login Successfully"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Back")),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                        }, child: Text("Next")),
                      ],
                    );
                }, );
            }, child: Text("Show Dialog Box")),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                isDismissible: false,
                  context: context,
                builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Profile"),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.cancel))
                            ],
                          ),
                          ListTile(
                            title: Text("Name"),
                            trailing: Text("Abdullah"),
                          ),
                          ListTile(
                            title: Text("Age"),
                            trailing: Text("26"),
                          ),
                          ListTile(
                            title: Text("City"),
                            trailing: Text("Islamabad"),
                          ),
                        ],
                      ),
                    );
              },);
            }, child: Text("Show Bottom Sheet"))


          ],
        ),
      ),
    );
  }
}
