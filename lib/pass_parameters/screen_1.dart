import 'package:flutter/material.dart';
import 'package:tahir_frontend/pass_parameters/screen_2.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=> Screen2(
                name : "Abdullah",
                email : "abd@gmail.com"
              )));
        }, child: Text("Go to Screen 2")),
      ),
    );
  }
}
