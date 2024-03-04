import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'welcom_homepage_widget.dart' show WelcomHomepageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomHomepageModel extends FlutterFlowModel<WelcomHomepageWidget> {
  ///  Local state fields for this page.

  String? passport = '';

  String? said = '';

  int? userid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Consultant Info in Odoo)] action in welcom_homepage widget.
  ApiCallResponse? getConsRes;
  // Stores action output result for [Backend Call - API (Create User)] action in welcom_homepage widget.
  ApiCallResponse? createUserRes;
  // Stores action output result for [Backend Call - API (Create Consultant)] action in welcom_homepage widget.
  ApiCallResponse? createConsRes;
  // Stores action output result for [Backend Call - API (Update Last Login Date)] action in welcom_homepage widget.
  ApiCallResponse? apiResultv0b;
  // Stores action output result for [Backend Call - API (Deactivate User)] action in welcom_homepage widget.
  ApiCallResponse? apiResult3cr;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
