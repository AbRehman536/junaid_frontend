
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tahir_frontend/pass_parameters/screen_2.dart';
import 'package:tahir_frontend/provider/provider.dart';


class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(userProvider.getName().toString()),
          Text(userProvider.getEmail().toString()),
        ],
      )
    );
  }
}
