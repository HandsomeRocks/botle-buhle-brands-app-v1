// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cool_alert/cool_alert.dart';

Future infoPopupMessage(
  BuildContext context,
  String popupTitle,
  String popupMessage,
) async {
  // Add your function code here!
  CoolAlert.show(
    context: context,
    type: CoolAlertType.info,
    title: popupTitle,
    text: popupMessage,
    confirmBtnText: 'Okay',
    confirmBtnColor: FlutterFlowTheme.of(context).primary,
    //cancelBtnText: 'Okay',
    backgroundColor: Colors.yellow,
    flareAsset: 'assets/images/info.gif',
    //flareAsset: 'flare/error_check.flr',
    //autoCloseDuration: const Duration(seconds: 2),
  );
}
