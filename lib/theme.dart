
import 'package:flutter/material.dart';
import 'package:junaid_frontend/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar:AppBar(
        title: Text("Theme Changer"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Black"),
            Switch(
                value: themeProvider.isDarkMode,
                onChanged: (val){
                  themeProvider.setTheme(val);
                }),
          ],
        ),
      ),
    );
  }
}
