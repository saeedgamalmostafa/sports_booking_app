import 'dart:convert';
import 'package:spod_app/model/sport_field.dart';
import 'package:spod_app/model/user.dart';

class FieldOrder {
  static const String keyfield = "keyfield";
  static const String keyuser = "keyuser";
  static const String keyselectedDate = "keyselectedDate";
  static const String keyselectedTime = "keyselectedTime";
  static const String keypaidStatus = "keypaidStatus";

  SportField field;
  UserModel user;
  String selectedDate;
  List<String> selectedTime;
  bool paidStatus;

  FieldOrder({required this.field,
    required this.user,
    required this.selectedDate,
    required this.selectedTime,
    this.paidStatus = false});


  FieldOrder.from(Map<String, dynamic> json)
      : this(
      field: json[keyfield],
      user: UserModel.from(json[keyuser]),
      selectedDate: json[keyselectedDate],
      selectedTime: json[keyselectedTime],
      paidStatus: json[keypaidStatus]);

  Map<String, dynamic> toJson() {
    return {
      keyuser:  user.toJson,
      keypaidStatus: paidStatus,
      keyselectedDate: selectedDate,
      keyselectedTime: selectedTime,
      keyfield: field
    };
  }
}