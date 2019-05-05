
import 'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import '../pages/loginmainpage.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // return loginpage for now, in future change this to a suitable homepage
    return Scaffold(
      body: Center(
        child: LoginPage(),
      ),
    );
  }
}