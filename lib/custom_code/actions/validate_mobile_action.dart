// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> validateMobileAction(String mobile) async {
  // Add your function code here!
  RegExp regex = RegExp(r"^0\d{9}$|^\d{9}$");
  return regex.hasMatch(mobile);
}
