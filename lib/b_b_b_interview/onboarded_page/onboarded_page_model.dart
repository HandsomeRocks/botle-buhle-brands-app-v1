import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'onboarded_page_widget.dart' show OnboardedPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardedPageModel extends FlutterFlowModel<OnboardedPageWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = false;

  int? numOfOnboardees;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for onboarded_tabbar widget.
  TabController? onboardedTabbarController;
  int get onboardedTabbarCurrentIndex =>
      onboardedTabbarController != null ? onboardedTabbarController!.index : 0;

  // State field(s) for accepted_search_input widget.
  FocusNode? acceptedSearchInputFocusNode;
  TextEditingController? acceptedSearchInputController;
  String? Function(BuildContext, String?)?
      acceptedSearchInputControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // State field(s) for declined_search_input widget.
  FocusNode? declinedSearchInputFocusNode;
  TextEditingController? declinedSearchInputController;
  String? Function(BuildContext, String?)?
      declinedSearchInputControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    onboardedTabbarController?.dispose();
    acceptedSearchInputFocusNode?.dispose();
    acceptedSearchInputController?.dispose();

    declinedSearchInputFocusNode?.dispose();
    declinedSearchInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
