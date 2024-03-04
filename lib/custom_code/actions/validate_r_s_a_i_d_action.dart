// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool?> validateRSAIDAction(String saidnumber) async {
  // Add your function code here!
  // Check if the ID number is 13 characters long
  if (saidnumber.length != 13) {
    return false;
  }

  // Check if all characters are numeric
  if (!RegExp(r'^[0-9]+$').hasMatch(saidnumber)) {
    return false;
  }

  // Extract the birthdate from the ID number
  int year = int.parse(saidnumber.substring(0, 2));
  int month = int.parse(saidnumber.substring(2, 4));
  int day = int.parse(saidnumber.substring(4, 6));

  // Validate the birthdate
  if (month < 1 || month > 12 || day < 1 || day > 31) {
    return false;
  }

  // Validate the checksum
  int checksum = int.parse(saidnumber.substring(12, 13));
  int sum = 0;
  for (int i = 0; i < 12; i++) {
    int digit = int.parse(saidnumber[i]);
    sum += (i % 2 == 0) ? digit : (digit * 2 > 9 ? digit * 2 - 9 : digit * 2);
  }

  bool isValid = (10 - (sum % 10)) % 10 == checksum;
  return isValid;
}
