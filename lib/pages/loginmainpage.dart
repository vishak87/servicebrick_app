import 'package:flutter/material.dart';
import '../pages/loginotppage.dart';
import 'dart:core';

class LoginPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }


}


class _LoginState extends State<LoginPage>{

  String _mobilenumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildMobileTextField() {
    return TextFormField(
      decoration: InputDecoration(labelStyle: TextStyle(color: Colors.blue),
                                    labelText: 'Mobile Number', filled: false,),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if(!int.parse(value).isNaN && !(value.length==10)){
          return 'Should be a valid mobile number';
        }

      },
      onSaved: (String value) {
        _mobilenumber = value;
      },
      );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Center(
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

            _buildMobileTextField(),
            SizedBox(
              height: screenheight*.02,
              ),


            RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                color: Colors.black,
                textColor: Colors.white,
                child: Text('SUBMIT', style: TextStyle(fontWeight: FontWeight.bold),),
                onPressed: (){
                  // encode password string
                  // call OTP service
                  // handle response
                  // validate response and change state
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginOTPPage()),
                    );

                }

                ),


          ],

          ),
                      key: _formKey,
                    ),
        ),
      );
  }

}