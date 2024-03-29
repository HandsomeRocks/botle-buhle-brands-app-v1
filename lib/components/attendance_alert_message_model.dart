import '/backend/api_requests/api_calls.dart';
import '/components/message_component1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'attendance_alert_message_widget.dart' show AttendanceAlertMessageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AttendanceAlertMessageModel
    extends FlutterFlowModel<AttendanceAlertMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Update Recruits Attendance)] action in confirm_btn widget.
  ApiCallResponse? recruitAttendanceRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
