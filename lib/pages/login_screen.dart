
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Map map;
  LoginScreen(this.map, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var title=map['PageName'];
    return Scaffold(
      appBar: AppBar(title:  Text(title),),
    );
  }
}