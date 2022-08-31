
import 'package:flutter/material.dart';

class RegScreen extends StatelessWidget {
  Map map;
  RegScreen(this.map, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var title=map['PageName'];
    return Scaffold(
      appBar: AppBar(title:  Text(title),),
    );
  }
}