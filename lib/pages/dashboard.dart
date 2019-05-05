import 'package:flutter/material.dart';
import 'projectlistscrollview.dart';

class DashBoard extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DashBoardState();
  }

}


class _DashBoardState extends State<DashBoard>{

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width  = MediaQuery.of(context).size.width;
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        floatingActionButton: FloatingActionButton(elevation: 2.0,backgroundColor: Colors.white,onPressed: (



            ){

        },child: Icon(Icons.add,size: height*.07,color: Colors.black,),),

        appBar: AppBar(
          title: Text('Projects'),actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: (){

        })],bottom: TabBar(tabs: [
          Tab(child: Text('PENDING PROPOSALS',textScaleFactor: .85, style: TextStyle(fontWeight: FontWeight.bold),),),
          Tab(child: Text('SENT PROPOSALS',textScaleFactor: .85, style: TextStyle(fontWeight: FontWeight.bold)),),
          Tab(child: Text('ARCHIVED PROPOSALS',textScaleFactor: .85, style: TextStyle(fontWeight: FontWeight.bold)),)
        ], indicatorColor: Colors.deepOrange,),
          backgroundColor: Colors.black87,

          ),

        body: TabBarView(children: [

           ProjectListView('Pending'),
           ProjectListView('Sent'),
           ProjectListView('Archived')

        ]),


      ),
    );
  }
}