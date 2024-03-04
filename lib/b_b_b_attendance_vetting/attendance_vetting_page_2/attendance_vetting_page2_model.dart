import '/backend/api_requests/api_calls.dart';
import '/components/missing_documents_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'attendance_vetting_page2_widget.dart' show AttendanceVettingPage2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AttendanceVettingPage2Model
    extends FlutterFlowModel<AttendanceVettingPage2Widget> {
  ///  Local state fields for this page.

  int? id;

  String mobile = '';

  bool isRSAIDValid = false;

  bool isIDNo = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for affidavit_doc_check widget.
  bool? affidavitDocCheckValue;
  // State field(s) for id_copy_doc_check widget.
  bool? idCopyDocCheckValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for id_or_passport widget.
  FocusNode? idOrPassportFocusNode;
  TextEditingController? idOrPassportController;
  String? Function(BuildContext, String?)? idOrPassportControllerValidator;
  String? _idOrPassportControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ID Number/Passport is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - validateRSAIDAction] action in id_or_passport widget.
  bool? isValid;
  // Stores action output result for [Backend Call - API (Update Onboarding  Prospective Selected)] action in Button widget.
  ApiCallResponse? updateOnboardee;
  // Stores action output result for [Backend Call - API (Get Onboardee Prospective)] action in Button widget.
  ApiCallResponse? apiResultf2q;
  // Stores action output result for [Backend Call - API (Get OTP Pin)] action in Button widget.
  ApiCallResponse? apiResult43e;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    idOrPassportControllerValidator = _idOrPassportControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    idOrPassportFocusNode?.dispose();
    idOrPassportController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
