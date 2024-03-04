import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'otp_page_widget.dart' show OtpPageWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtpPageModel extends FlutterFlowModel<OtpPageWidget> {
  ///  Local state fields for this page.

  String? username = '';

  String role = '';

  int? userid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for otp_pin_code widget.
  TextEditingController? otpPinCode;
  String? Function(BuildContext, String?)? otpPinCodeValidator;
  // Stores action output result for [Backend Call - API (Get OTP Pin)] action in Text widget.
  ApiCallResponse? apiResultm5x;
  // Stores action output result for [Backend Call - API (Confirm OTP Pin)] action in otp_continue_btn widget.
  ApiCallResponse? confirmOTPRes;
  // Stores action output result for [Backend Call - API (Update Last Login Date)] action in otp_continue_btn widget.
  ApiCallResponse? updateLoginRes;
  // Stores action output result for [Backend Call - API (Get Odoo ID)] action in otp_continue_btn widget.
  ApiCallResponse? userDetailsRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    otpPinCode = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    otpPinCode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
