import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 30,),
        title: Text("App Bar Screen",
          style: TextStyle(
          fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.purple,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 5,
            decoration: TextDecoration.underline,
            height: 5
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.settings,color: Colors.green,size: 35,),
          Icon(Icons.notification_add,color: Colors.yellow,size: 20,),
          Icon(Icons.bookmark,color: Colors.orange,size: 40,),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.blue,
       foregroundColor: Colors.white,
       onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}
