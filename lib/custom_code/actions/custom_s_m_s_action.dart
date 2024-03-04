// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future customSMSAction(
  String datetime,
  String location,
  String managername,
  String mobile,
  String title,
) async {
  // Add your function code here!
  String invitationMessage = generateInvitation(
    datetime,
    location,
    FFAppState().FirstName,
    title,
  );

  String encodedMessage = Uri.encodeComponent(invitationMessage);
  //String encodedMessage = invitationMessage;

  String message_content = "sms:${mobile}&body=${invitationMessage}";

  final Uri url = Uri(
    scheme: 'sms',
    path: mobile,
    queryParameters: <String, String>{'body': encodedMessage},
  );

  try {
    await launchUrl(url);
  } catch (e) {
    print(e.toString);
  }

  //if (isiOS) {
  //  await launchUrl(Uri.parse("sms:$mobile&body=$invitationMessage"));
  //} else {
  //  await launchUrl(Uri(
  //    scheme: 'sms',
  //    path: mobile,
  //    queryParameters: <String, String>{'body': invitationMessage},
  //  ));
  //}
  //await launchUrl(Uri(
  //  scheme: 'sms',
  //  path: mobile,
  //  queryParameters: <String, String>{'body': invitationMessage},
  //));
}

String encodeBody(String body) {
  // iOS expects spaces to be encoded as '+', while other platforms use '%20'.
  return Uri.encodeQueryComponent(body).replaceAll('+', ' ');
}

String generateInvitation(
  String dateTime,
  String location,
  String managerName,
  String title,
) {
  return """
    BBB | ONBOARDING INVITATION

    Hi, my name is $managerName and I am your allocated Botle Buhle Brands $title. 
    I would like to invite you to an onboarding meeting taking place on:

    $dateTime
    at
    $location

    Please respond to this message to confirm your attendance.
  """;
}
