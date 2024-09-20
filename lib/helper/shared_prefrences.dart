import 'dart:convert';
 import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';


class CacheHelper{
  static SharedPreferences? prefereces  ;
  static UserModel? loginShared;

  static init()async{
    prefereces=await SharedPreferences.getInstance();
    if (getData(key:"user") != null && getData(key: "user") != 'null') {
      loginShared = UserModel.from(jsonDecode(getData(key:"user")));
    }
  }
  // static dynamic getData({required String key}){
  //   return prefereces!.get(key);
  // }
  static dynamic getData({required String key}) {
    dynamic value = prefereces!.get(key);
    if (value == null) return null;
    if (value is String) {
      try {
        return json.decode(value);
      } catch (e) {
        return value;
      }
    }
    if (value is List<dynamic>) {
      try {
        return value.cast<Map<String, dynamic>>();
      } catch (e) {
        return value;
      }
    }
    return value;
  }
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await prefereces!.setString(key, value);
    if (value is int) return await prefereces!.setInt(key, value);
    if (value is bool) return await prefereces!.setBool(key, value);
    if (value is List<Map<String, dynamic>>) {
      return await prefereces!.setStringList(key, value.map((map) => json.encode(map)).toList());
    }
    if (value is double) return await prefereces!.setDouble(key, value);
    // Return false if the value is not supported
    return false;
  }
  // static Future<bool> saveData({
  //   required String key,
  //   required dynamic value,
  // }) async {
  //   if (value is String) return await prefereces!.setString(key, value);
  //   if (value is int) return await prefereces!.setInt(key, value);
  //   if (value is bool) return await prefereces!.setBool(key, value);
  //   if (value is List<Map>) {
  //     List<String> stringList = value.map((map) => json.encode(map)).toList();
  //     return await prefereces!.setStringList(key, stringList);
  //   }
  //   if (value is double) return await prefereces!.setDouble(key, value);
  //   // Return false if the value is not supported
  //   return false;
  // }
  static Future<bool>clearData(){return prefereces!.clear();}
  static Future<bool>removeData({required key}){
    return prefereces!.remove(key);
  }

}