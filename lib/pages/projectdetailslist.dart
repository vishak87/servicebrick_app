import 'package:flutter/material.dart';
import '../model/projectmodel.dart';
import '../widgets/projectlistcardwidget.dart';
class ProjectDetailsList extends StatelessWidget{


  static final List<ProjectModel> lstProjectsModel=getProjectList();


  static getProjectList(){

    List<ProjectModel> lstProjects=[];
    String projectName = 'Project';

    String actionStatus='Measurement Pending';
    String primaryContactName= 'Mr.Primary Contact';
    String secondaryContactName='Mr. Secondary Contact';

    for(int i=0;i<10;i++){
      String type ='Interior';
      String leadStatus ='Cold';
      if(i%2==0){
        type='Exterior';
        leadStatus='Hot';

      }
      ProjectModel projectModel= ProjectModel(projectName+' '+i.toString(), null, null, type, leadStatus,
                                                  actionStatus, primaryContactName+' '+i.toString(), secondaryContactName+' '+i.toString(), '97691170214', '22384568');

      lstProjects.add(projectModel);

    }
    return lstProjects;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemCount: lstProjectsModel.length,itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProjectListWidget(lstProjectsModel[index])
            

      );
    });
  }

}