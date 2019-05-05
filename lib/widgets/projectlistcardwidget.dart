import 'package:flutter/material.dart';
import '../model/projectmodel.dart';

class ProjectListWidget extends StatelessWidget{

  final ProjectModel prjctModel;

  ProjectListWidget(this.prjctModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(prjctModel.projectName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    RaisedButton(onPressed: (){},child: Text('Measurement'), color: Colors.black,textColor: Colors.white,)
                  ],
                ),
              )
              ,Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(prjctModel.primaryContactName),
                    Text(prjctModel.primaryMobile)
                  ],
                  ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(prjctModel.secondaryContactName),
                    Text(prjctModel.secondaryMobile)
                  ],
                  ),
              )
              ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(child: Text('Edit'),onPressed: (){},color: Colors.teal,textColor: Colors.white ),
                    RaisedButton(child: Text('Archive'), onPressed: (){}, color: Colors.red,textColor: Colors.white)
                  ],
                  ),
              )
            ],
            ),
        )


      ),
    );
  }
}