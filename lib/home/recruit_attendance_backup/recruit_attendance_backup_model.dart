import '/backend/api_requests/api_calls.dart';
import '/components/attendance_alert_message_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'recruit_attendance_backup_widget.dart'
    show RecruitAttendanceBackupWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RecruitAttendanceBackupModel
    extends FlutterFlowModel<RecruitAttendanceBackupWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  List<int> checkboxList = [];
  void addToCheckboxList(int item) => checkboxList.add(item);
  void removeFromCheckboxList(int item) => checkboxList.remove(item);
  void removeAtIndexFromCheckboxList(int index) => checkboxList.removeAt(index);
  void insertAtIndexInCheckboxList(int index, int item) =>
      checkboxList.insert(index, item);
  void updateCheckboxListAtIndex(int index, Function(int) updateFn) =>
      checkboxList[index] = updateFn(checkboxList[index]);

  bool isAttendVisible = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for search_input widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputController;
  String? Function(BuildContext, String?)? searchInputControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for attendance_checkbox widget.

  Map<dynamic, bool> attendanceCheckboxValueMap = {};
  List<dynamic> get attendanceCheckboxCheckedItems =>
      attendanceCheckboxValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
