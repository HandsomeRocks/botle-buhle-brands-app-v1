// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cool_alert/cool_alert.dart';

Future recruitSuccessPopupMessage(
  BuildContext context,
  String popupTitle,
  String popupMessage,
  String popupPageName,
) async {
  // Add your function code here!
  CoolAlert.show(
    context: context,
    type: CoolAlertType.success,
    title: popupTitle,
    text: popupMessage,
    confirmBtnText: 'Onboard',
    confirmBtnColor: FlutterFlowTheme.of(context).success,
    cancelBtnText: 'Close',
    showCancelBtn: true,
    backgroundColor: Colors.green,
    flareAsset: 'assets/images/success.gif',
    onConfirmBtnTap: () async {
      context.pushNamed(
        popupPageName,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    },
    onCancelBtnTap: () {
      // Close the component
      Navigator.of(context).pop();
    },
    //flareAsset: 'flare/error_check.flr',
    //autoCloseDuration: const Duration(seconds: 2),
  );
}
