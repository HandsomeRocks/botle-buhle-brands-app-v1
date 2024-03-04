import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recruiting_page_backup_widget.dart' show RecruitingPageBackupWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecruitingPageBackupModel
    extends FlutterFlowModel<RecruitingPageBackupWidget> {
  ///  Local state fields for this page.

  String docUrl = 'https://bbb.co.za';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Odoo ID)] action in recruiting_attendance_btn widget.
  ApiCallResponse? getOdooIDRes;
  // Stores action output result for [Backend Call - API (Get Odoo ID)] action in recruit_onboarding_btn widget.
  ApiCallResponse? apiResultjq3;

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
