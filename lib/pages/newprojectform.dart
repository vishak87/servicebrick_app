import 'package:flutter/material.dart';
class NewprojectForm extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewProjectFormState();
  }


}


class _NewProjectFormState extends State<NewprojectForm>{


  _LeadStatus _leadStatus = _LeadStatus.Hot;




  GlobalKey _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title:Text('Create project')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(

              child: Form(
                key: _formkey ,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height*.015,),
                    _buildProjectName(),
                    SizedBox(height: height*.015,),
                    _buildProjectAddress(),
                    SizedBox(height: height*.015,),
                    _buildProjectPrimaryContact(),
                    SizedBox(height: height*.015,),
                    _buildProjectPrimaryContactNum(),
                    SizedBox(height: height*.015,),
                    _buildProjectSecondaryContact(),
                    SizedBox(height: height*.015,),
                    _buildProjectSecondaryContactNum(),
                    SizedBox(height: height*.015,),
                    _buildLeadStatusChoice()




                  ],


                ),
                )

              ),
        ),
        ),
      );
  }


  Widget _buildProjectName() {
    return TextFormField(
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Project Name', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Mandatory';
        }
      },
      onSaved: (String value) {

      },
      );
  }

  Widget _buildProjectAddress() {
    return TextFormField(
      maxLines: 5,
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Project Address', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.multiline,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Mandatory';
        }
      },
      onSaved: (String value) {

      },
      );
  }

  Widget _buildProjectPrimaryContact() {
    return TextFormField(
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Primary Contact', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.text,
      validator: (String value) {

      },
      onSaved: (String value) {

      },
      );
  }

  Widget _buildProjectPrimaryContactNum() {
    return TextFormField(
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Mobile Number', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.phone,
      validator: (String value) {

      },
      onSaved: (String value) {

      },
      );
  }

  Widget _buildProjectSecondaryContact() {
    return TextFormField(
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Secondary Contact', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.text,
      validator: (String value) {

      },
      onSaved: (String value) {

      },
      );
  }

  Widget _buildProjectSecondaryContactNum() {
    return TextFormField(
      initialValue:'',
      decoration: InputDecoration(
          labelText: 'Mobile Number', filled: true, fillColor: Colors.white),
      obscureText: false,
      keyboardType: TextInputType.text,
      validator: (String value) {

      },
      onSaved: (String value) {

      },
      );
  }



  Widget _buildLeadStatusChoice(){

    return Column(
      children: <Widget>[
        RadioListTile<_LeadStatus>(
          title: const Text('Hot'),
          value: _LeadStatus.Hot,
          groupValue: _leadStatus,

          ),
        RadioListTile<_LeadStatus>(
          title: const Text('Cold'),
          value: _LeadStatus.Cold,
          groupValue: _leadStatus,

          ),
      ],
      );
  }



}

enum _LeadStatus{
  Hot,Cold
}