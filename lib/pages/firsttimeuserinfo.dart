import 'package:flutter/material.dart';
import 'dashboard.dart';

class UserInfoFirstTime extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserInfoFormState();
  }
}

class _UserInfoFormState extends State<UserInfoFirstTime>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                SizedBox(
                  height: 150.0,
                ),

                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,), onPressed: (){

                  },
                                    ),
                  radius: 50.0,
                  ),
              ]
            ),

            SizedBox(
              height: 10,
            ),
            TextField(

              decoration: InputDecoration(
                 labelStyle: TextStyle(color: Colors.blue),
                labelText: 'Name'

              ),
            ),
            SizedBox(
              height: 10,
              ),
            TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.blue),
                  labelText: 'Phone Number'
                  ),
              ),
            SizedBox(
              height:   10,
              ),

            RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                color: Colors.black,
                textColor: Colors.white,
                child: Text('SUBMIT', style: TextStyle(fontWeight: FontWeight.bold),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoard()),
                    );
                }

                )


          ],
        ),
      ),
    );
  }
}