import '/backend/api_requests/api_calls.dart';
import '/components/credit_score_explained_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'attendance_vetting_page4_widget.dart' show AttendanceVettingPage4Widget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AttendanceVettingPage4Model
    extends FlutterFlowModel<AttendanceVettingPage4Widget> {
  ///  Local state fields for this page.

  bool isShowFullList = false;

  String? stringcolor = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for first_name widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for last_name widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipController;
  String? Function(BuildContext, String?)? zipControllerValidator;
  // State field(s) for suburb widget.
  FocusNode? suburbFocusNode;
  TextEditingController? suburbController;
  String? Function(BuildContext, String?)? suburbControllerValidator;
  // State field(s) for street widget.
  FocusNode? streetFocusNode;
  TextEditingController? streetController;
  String? Function(BuildContext, String?)? streetControllerValidator;
  // State field(s) for credit_score widget.
  FocusNode? creditScoreFocusNode;
  TextEditingController? creditScoreController;
  String? Function(BuildContext, String?)? creditScoreControllerValidator;
  // Stores action output result for [Backend Call - API (Update Prospective  ConsumerviewDetails)] action in Button widget.
  ApiCallResponse? apiResultoyq;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    zipFocusNode?.dispose();
    zipController?.dispose();

    suburbFocusNode?.dispose();
    suburbController?.dispose();

    streetFocusNode?.dispose();
    streetController?.dispose();

    creditScoreFocusNode?.dispose();
    creditScoreController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
