// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:quickalert/quickalert.dart';
import 'package:cool_alert/cool_alert.dart';

Future successPopupMessage(
  BuildContext context,
  String popupTitle,
  String popupMessage,
) async {
  // Add your function code here!
  // return QuickAlert.show(
  //   context: context,
  //   type: QuickAlertType.success,
  //   title: popupTitle,
  //   text: popupMessage,
  //   autoCloseDuration: const Duration(seconds: 2),
  //   showConfirmBtn: false,
  // );
  CoolAlert.show(
    context: context,
    type: CoolAlertType.success,
    title: popupTitle,
    text: popupMessage,
    confirmBtnText: 'Okay',
    confirmBtnColor: FlutterFlowTheme.of(context).primary,
    //cancelBtnText: 'Okay',
    backgroundColor: Colors.green,
    flareAsset: 'assets/images/success.gif',
    //flareAsset: 'flare/error_check.flr',
    //autoCloseDuration: const Duration(seconds: 2),
  );
}
