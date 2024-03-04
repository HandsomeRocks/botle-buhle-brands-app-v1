import '/backend/api_requests/api_calls.dart';
import '/components/success_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'interview_decline_reasons_widget.dart'
    show InterviewDeclineReasonsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InterviewDeclineReasonsModel
    extends FlutterFlowModel<InterviewDeclineReasonsWidget> {
  ///  Local state fields for this component.

  List<String> listOfReasons = [];
  void addToListOfReasons(String item) => listOfReasons.add(item);
  void removeFromListOfReasons(String item) => listOfReasons.remove(item);
  void removeAtIndexFromListOfReasons(int index) =>
      listOfReasons.removeAt(index);
  void insertAtIndexInListOfReasons(int index, String item) =>
      listOfReasons.insert(index, item);
  void updateListOfReasonsAtIndex(int index, Function(String) updateFn) =>
      listOfReasons[index] = updateFn(listOfReasons[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for option_1 widget.
  bool? option1Value;
  // State field(s) for option_2 widget.
  bool? option2Value;
  // State field(s) for option_3 widget.
  bool? option3Value;
  // State field(s) for option_5 widget.
  bool? option5Value;
  // State field(s) for option_6 widget.
  bool? option6Value;
  // State field(s) for option_9 widget.
  bool? option9Value;
  // Stores action output result for [Backend Call - API (Update Prospective  Interview Status)] action in confirm_btn widget.
  ApiCallResponse? interviewUpdateRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
