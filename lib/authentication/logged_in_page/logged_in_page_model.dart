import '/backend/api_requests/api_calls.dart';
import '/components/success_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'logged_in_page_widget.dart' show LoggedInPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LoggedInPageModel extends FlutterFlowModel<LoggedInPageWidget> {
  ///  Local state fields for this page.

  bool showError = false;

  String mobile = '1234';

  int? userid;

  String userrole = 'consultant';

  String username = 'demo1';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in Button widget.
  ApiCallResponse? loggedInUserRes;
  // Stores action output result for [Backend Call - API (Get Odoo ID)] action in Button widget.
  ApiCallResponse? userDetailsRes;

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
