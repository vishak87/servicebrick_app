
import 'package:flutter/material.dart';
import 'projectdetailslist.dart';
class ProjectListView extends StatefulWidget{

  final String status;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProjectListState(status);
  }

  ProjectListView(this.status);

}

class _ProjectListState extends State<ProjectListView>{
  final String status;

  _ProjectListState(this.status);






  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String appBarText;
    // TODO: implement build
    if(status=='Pending'){
      appBarText ='Pending Proposals';
    }
    else if(status=='Sent'){
      appBarText='Sent Proposals';
    }
    else if(status=='Archived'){
      appBarText = 'Archived Proposals';
    }

    return Scaffold(

      body: Column(
        children: <Widget>[Row(

          mainAxisAlignment: MainAxisAlignment.end
          ,children: <Widget>[
            Row(children: <Widget>[IconButton(icon: Icon(Icons.sort), onPressed: (){
              showModalBottomSheet(context:context,builder:(BuildContext context){
                return Container(
                  color: Colors.white,
                  height: height*.25,
                  child: Wrap(
                    runSpacing: height*.015,
                    spacing: width*.015,
                    children: <Widget>[ChoiceChip(label: Text('Hot',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),), selected: true,selectedColor: Colors.deepOrange,),ChoiceChip(label: Text('Cold',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)), selected: true,selectedColor: Colors.lightBlue,),
                    ChoiceChip(label: Text('Measurement Pending',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),selected: true,selectedColor: Colors.teal,),ChoiceChip(label: Text('Under Review',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)), selected: true,selectedColor: Colors.green,)],
                  ),
                );
              });
            }),Text('Sort/Filter')],)
          ],
        ),
        Expanded(child: ProjectDetailsList())
        ],

        )

    );
  }
}