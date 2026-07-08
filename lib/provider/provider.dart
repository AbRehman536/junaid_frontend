import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  String _name = "";
  String _email = "";

  ///set Name
  void setName(String value){
    _name = value;
    notifyListeners();
  }
  ///set Email
  void setEmail(String value){
    _email = value;
    notifyListeners();
  }

  ///get Name
  String getName() => _name;
  ///get Email
  String getEmail() => _email;
}