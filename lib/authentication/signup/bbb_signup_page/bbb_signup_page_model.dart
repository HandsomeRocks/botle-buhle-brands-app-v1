import '/backend/api_requests/api_calls.dart';
import '/components/country_dial_code_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'bbb_signup_page_widget.dart' show BbbSignupPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class BbbSignupPageModel extends FlutterFlowModel<BbbSignupPageWidget> {
  ///  Local state fields for this page.

  String? mobile = '';

  bool mobileValid = false;

  int? userid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mobile_number_field widget.
  FocusNode? mobileNumberFieldFocusNode;
  TextEditingController? mobileNumberFieldController;
  String? Function(BuildContext, String?)? mobileNumberFieldControllerValidator;
  // Stores action output result for [Custom Action - validateMobileAction] action in mobile_number_field widget.
  bool? isMobileValid;
  // Stores action output result for [Custom Action - sanitiseMobileNumber] action in continue_btn widget.
  String? sanitisedMobile;
  // Stores action output result for [Backend Call - API (Check User in Odoo)] action in continue_btn widget.
  ApiCallResponse? getUserOdooRes;
  // Stores action output result for [Backend Call - API (Get OTP Pin)] action in continue_btn widget.
  ApiCallResponse? getOTPRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFieldFocusNode?.dispose();
    mobileNumberFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
