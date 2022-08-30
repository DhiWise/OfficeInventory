//ignore: unused_import
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }



  Future<void> setEmployeeRecordId(String value) {
    return _sharedPreferences!.setString('EmployeeRecordId', value);
  }

  String getEmployeeRecordId() {
    try {
      return _sharedPreferences!.getString('EmployeeRecordId') ?? '';
    } catch (e) {
      return '';
    }
  }


  Future<void> setEmail(String value) {
    return _sharedPreferences!.setString('userEmail', value);
  }

  String getEmail() {
    try {
      return _sharedPreferences!.getString('userEmail') ?? '';
    } catch (e) {
      return '';
    }
  }


  Future<void> setPassword(String value) {
    return _sharedPreferences!.setString('userPassword', value);
  }

  String getPassword() {
    try {
      return _sharedPreferences!.getString('userPassword') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setDeviceRecordId(String value) {
    return _sharedPreferences!.setString('DeviceRecordId', value);
  }

  String getDeviceRecordId() {
    try {
      return _sharedPreferences!.getString('DeviceRecordId') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setFurnitureRecordId(String value) {
    return _sharedPreferences!.setString('FurnitureRecordId', value);
  }

  String getFurnitureRecordId() {
    try {
      return _sharedPreferences!.getString('FurnitureRecordId') ?? '';
    } catch (e) {
      return '';
    }
  }


  Future<void> setSelectedRecordId(List<String> value) {
    print("selected value - $value");
    return _sharedPreferences!.setString('MySelectedRecordId', jsonEncode(value));
  }


  List<String>? getSelectedRecordId() {
    try {
      return jsonDecode(_sharedPreferences!.getString('MySelectedRecordId') ?? '');
    } catch (e) {
      return null;
    }
  }
}
