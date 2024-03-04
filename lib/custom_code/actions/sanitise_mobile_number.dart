// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> sanitiseMobileNumber(
  String countryDialCode,
  String mobile,
) async {
  // Add your function code here!
  if (mobile.startsWith('0')) {
    // Remove leading '0' from the mobile number
    mobile = mobile.substring(1);
  }

  // Remove '+' from the dial code if present
  countryDialCode = countryDialCode.replaceAll('+', '');

  return '$countryDialCode$mobile';
}
