import 'package:flutter/material.dart';
import 'sectionadddeduct.dart';

class Sections {

  final double L;
  final double B;
  final double H;
  final double Q;
  final String name;
  List<AddORDeductSections> lstAddDeduct;
  List<Sections> lstChildSections;


  Sections(this.L,this.B,this.H,this.Q,this.name,this.lstAddDeduct);
}

