import 'package:flutter/material.dart';
import '../pages/loginotppage.dart';
import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'firsttimeuserinfo.dart';

class LoginPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }


}


class _LoginState extends State<LoginPage>{

  String _mobilenumber;
  String verificationId;
  TextEditingController _phoneNumberController = TextEditingController();



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildMobileTextField() {
    return TextFormField(
      controller: _phoneNumberController,
      decoration: InputDecoration(labelStyle: TextStyle(color: Colors.blue),
                                    labelText: 'Mobile Number', filled: false,),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if(value.isEmpty){
          return 'Should be a valid mobile number';
        }

      },
      onSaved: (String value) {
        _mobilenumber = value;
      },
      );
  }


  Future<void> _sendCodeToPhoneNumber() async {
    final PhoneVerificationCompleted verificationCompleted = (AuthCredential credential) {

      FirebaseAuth.instance.signInWithCredential(credential).then((user){
        user.getIdToken().then((idToken){
          print('The id token is '+ idToken);
        });
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserInfoFirstTime()),
        );
    };

    final PhoneVerificationFailed verificationFailed = (AuthException authException) {
      setState(() {
        print('Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');}
               );
    };

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      this.verificationId = verificationId;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginOTPPage()),
        );
    };

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      this.verificationId = verificationId;
      print("time out");
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: _phoneNumberController.text,
        timeout: const Duration(seconds: 20),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
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

                  _sendCodeToPhoneNumber();

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