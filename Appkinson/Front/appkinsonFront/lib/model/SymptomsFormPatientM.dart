import 'dart:convert';

import 'dart:io';

class SymptomsFormPatientM {
  String q1;
  String q2;
  String q3;
  String q4;
  String q5;
  DateTime date;
  File video;

  SymptomsFormPatientM(
      {this.q1, this.q2, this.q3, this.q4, this.q5, this.date, this.video});
}