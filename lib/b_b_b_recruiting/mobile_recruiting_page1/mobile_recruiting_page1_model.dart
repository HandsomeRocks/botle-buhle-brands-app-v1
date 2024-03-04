import '/backend/api_requests/api_calls.dart';
import '/components/country_dial_code_list_widget.dart';
import '/components/invite_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'mobile_recruiting_page1_widget.dart' show MobileRecruitingPage1Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MobileRecruitingPage1Model
    extends FlutterFlowModel<MobileRecruitingPage1Widget> {
  ///  Local state fields for this page.

  bool mobileValid = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mobile_number widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  // Stores action output result for [Custom Action - validateMobileAction] action in mobile_number widget.
  bool? isMobileValid;
  // Stores action output result for [Custom Action - sanitiseMobileNumber] action in Button widget.
  String? sanitisedMobile;
  // Stores action output result for [Backend Call - API (Mobile Recruiting)] action in Button widget.
  ApiCallResponse? apiResultods;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // State field(s) for recruiting_tabbar widget.
  TabController? recruitingTabbarController;
  int get recruitingTabbarCurrentIndex => recruitingTabbarController != null
      ? recruitingTabbarController!.index
      : 0;

  // State field(s) for search_input widget.
  FocusNode? searchInputFocusNode1;
  TextEditingController? searchInputController1;
  String? Function(BuildContext, String?)? searchInputController1Validator;
  // State field(s) for search_input widget.
  FocusNode? searchInputFocusNode2;
  TextEditingController? searchInputController2;
  String? Function(BuildContext, String?)? searchInputController2Validator;
  Completer<ApiCallResponse>? apiRequestCompleter1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();

    recruitingTabbarController?.dispose();
    searchInputFocusNode1?.dispose();
    searchInputController1?.dispose();

    searchInputFocusNode2?.dispose();
    searchInputController2?.dispose();
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
