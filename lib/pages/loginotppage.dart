import 'package:flutter/material.dart';
import '../pages/firsttimeuserinfo.dart';
import 'dart:core';

class LoginOTPPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginOTPState();
  }


}


class _LoginOTPState extends State<LoginOTPPage>{

  String _otp;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildOTPTextField() {
    return TextFormField(
      decoration: InputDecoration(labelStyle: TextStyle(color: Colors.blue),
        labelText: 'OTP', filled: false,),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if(!int.parse(value).isNaN && !(value.length==4)){
          return 'Should be a number with 4 digits';
        }

      },
      onSaved: (String value) {
        _otp = value;
      },
      );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(
              left: screenWidth*.07,
              right: screenWidth*.07
              ),
          child: Form(child: Column(
            children: <Widget>[


              SizedBox(
                height: screenheight*.3,
                ),

              _buildOTPTextField(),
              SizedBox(
                height: screenheight*.02,
              ),


              RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: (){
                    // encode password string
                    // call OTP service
                    // handle response
                    // validate response and change state
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserInfoFirstTime()),
                      );

                  }

                  ),


            ],

          ),
                        key: _formKey,
                      ),
          ),
      ),
    );
  }

}