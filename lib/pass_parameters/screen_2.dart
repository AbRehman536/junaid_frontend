import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  const Screen2({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(name, style: TextStyle(fontSize: 30),),
          Text(email, style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))

        ],
      ),
    );
  }
}
