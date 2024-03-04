import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'attendance_vetting_page3_widget.dart' show AttendanceVettingPage3Widget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AttendanceVettingPage3Model
    extends FlutterFlowModel<AttendanceVettingPage3Widget> {
  ///  Local state fields for this page.

  bool isShowFullList = false;

  String scorecolor = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for verify_code widget.
  TextEditingController? verifyCode;
  String? Function(BuildContext, String?)? verifyCodeValidator;
  // Stores action output result for [Backend Call - API (Confirm OTP Pin)] action in Button widget.
  ApiCallResponse? confirmOTpProspective;
  // Stores action output result for [Backend Call - API (Update Credit Check  Prospective Selected)] action in Button widget.
  ApiCallResponse? updateCreditCheck;
  // Stores action output result for [Backend Call - API (Get Prospective Odoo ID )] action in Button widget.
  ApiCallResponse? apiResultgcd;
  // Stores action output result for [Backend Call - API (Update Prospective ID Number)] action in Button widget.
  ApiCallResponse? apiResultjxe;
  // Stores action output result for [Backend Call - API (Update Prospective Consumerview)] action in Button widget.
  ApiCallResponse? consumerViewRes;
  // Stores action output result for [Backend Call - API (Update Prospective Compuscan)] action in Button widget.
  ApiCallResponse? compuscanRes;
  // Stores action output result for [Backend Call - API (Update Prospective Passport)] action in Button widget.
  ApiCallResponse? apiResult02a;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    verifyCode = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    verifyCode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
