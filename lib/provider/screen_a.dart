
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tahir_frontend/pass_parameters/screen_2.dart';
import 'package:tahir_frontend/provider/provider.dart';
import 'package:tahir_frontend/provider/screen_b.dart';


class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Abdullah");
          userProvider.setEmail("abd@gmail.com");
         Navigator.push(
             context, MaterialPageRoute(
             builder: (context)=>ScreenB()));
        }, child: Text("Go to Screen B")),
      ),
    );
  }
}
