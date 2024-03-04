// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flare_flutter/flare_actor.dart';

import 'package:quickalert/utils/images.dart';

import 'package:quickalert/quickalert.dart';
import 'package:cool_alert/cool_alert.dart';

Future errorPopupMessage(
  BuildContext context,
  String popupTitle,
  String popupMessage,
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

    //flareAsset: 'flare/error_check.flr',
    //autoCloseDuration: const Duration(seconds: 2),
  );
}

class AppAnim {
  static const loading = 'packages/cool_alert/assets/flare/loading.flr';
  static const success = 'packages/cool_alert/assets/flare/success_check.flr';
  static const error = 'packages/cool_alert/assets/flare/error_check.flr';
  static const warning = 'packages/cool_alert/assets/flare/warning_check.flr';
  static const info = 'packages/cool_alert/assets/flare/info_check.flr';
}
