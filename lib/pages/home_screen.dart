
import 'package:flutter/material.dart';
import 'package:flutter_generated_route/my_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: const Text('Home Screen'),
    actions: [
      IconButton(onPressed: (){
        Navigator.pushNamed(context, loginRoute,arguments: {
          'PageName':'Login'
        });
      }, icon: const Icon(Icons.login_outlined)),
      IconButton(onPressed: (){
        Navigator.pushNamed(context, regRoute, arguments: {
          'PageName':'Registration'
        });
      }, icon: const Icon(Icons.panorama)),
    ],
  ),

  );
  }
}