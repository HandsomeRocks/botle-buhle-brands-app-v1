// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cool_alert/cool_alert.dart';

Future signuperrorPopupMessage(
  BuildContext context,
  String popupTitle,
  String popupMessage,
  String popupPageName,
) async {
  // Add your function code here!
  //return
  // QuickAlert.show(
  //   context: context,
  //   type: QuickAlertType.custom,
  //   barrierDismissible: true,
  //   confirmBtnText: 'Save',
  //   customAsset: 'assets/images/error.gif',
  //   widget: TextFormField(
  //     decoration: const InputDecoration(
  //       alignLabelWithHint: true,
  //       hintText: 'Enter Phone Number',
  //       prefixIcon: Icon(
  //         Icons.phone_outlined,
  //       ),
  //     ),
  //     textInputAction: TextInputAction.next,
  //     keyboardType: TextInputType.phone,
  //     //onChanged: (value) => message = value,
  //   ),
  // );

  CoolAlert.show(
    context: context,
    type: CoolAlertType.error,
    title: popupTitle,
    text: popupMessage,
    barrierDismissible: false,
    confirmBtnText: 'Okay',
    confirmBtnColor: FlutterFlowTheme.of(context).primary,
    //cancelBtnText: 'Okay',
    backgroundColor: Colors.red,
    flareAsset: 'assets/images/error.gif',
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
    //flareAsset: 'flare/error_check.flr',
    //autoCloseDuration: const Duration(seconds: 2),
  );
}
