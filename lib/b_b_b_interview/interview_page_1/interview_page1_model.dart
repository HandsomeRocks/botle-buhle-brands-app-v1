import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'interview_page1_widget.dart' show InterviewPage1Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InterviewPage1Model extends FlutterFlowModel<InterviewPage1Widget> {
  ///  Local state fields for this page.

  bool isShowFullList = false;

  int? numOfOnboardees;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for search_input widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputController;
  String? Function(BuildContext, String?)? searchInputControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchInputFocusNode?.dispose();
    searchInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
