
import 'package:flutter/material.dart';
import 'package:junaid_frontend/provider/provider.dart';
import 'package:junaid_frontend/provider/screen_b.dart';
import 'package:provider/provider.dart';


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
