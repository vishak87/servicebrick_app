import 'package:flutter/material.dart';
import 'Sections.dart';

class ProjectModel {
  final String projectName;
  final String address;
  final List<Sections> quantities;
  final String type;
  final String leadStatus;
  final String actionStatus;
  final String primaryContactName;
  final String secondaryContactName;
  final String primaryMobile;
  final String secondaryMobile;
  ProjectModel(this.projectName,this.address,this.quantities,this.type,this.leadStatus,this.actionStatus,this.primaryContactName,
  this.secondaryContactName,this.primaryMobile,this.secondaryMobile
  );
}