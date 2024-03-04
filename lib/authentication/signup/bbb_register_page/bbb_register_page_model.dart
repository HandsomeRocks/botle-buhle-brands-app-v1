import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'bbb_register_page_widget.dart' show BbbRegisterPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BbbRegisterPageModel extends FlutterFlowModel<BbbRegisterPageWidget> {
  ///  Local state fields for this page.

  bool isRSAValid = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for options_radio_btn widget.
  FormFieldController<String>? optionsRadioBtnValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for rsa_id_number widget.
  FocusNode? rsaIdNumberFocusNode;
  TextEditingController? rsaIdNumberController;
  String? Function(BuildContext, String?)? rsaIdNumberControllerValidator;
  // Stores action output result for [Custom Action - validateRSAIDAction] action in rsa_id_number widget.
  bool? isValid;
  // State field(s) for non_rsa_id_number widget.
  FocusNode? nonRsaIdNumberFocusNode;
  TextEditingController? nonRsaIdNumberController;
  String? Function(BuildContext, String?)? nonRsaIdNumberControllerValidator;
  // State field(s) for passport widget.
  FocusNode? passportFocusNode;
  TextEditingController? passportController;
  String? Function(BuildContext, String?)? passportControllerValidator;
  // State field(s) for sales_froce_code widget.
  FocusNode? salesFroceCodeFocusNode;
  TextEditingController? salesFroceCodeController;
  String? Function(BuildContext, String?)? salesFroceCodeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    rsaIdNumberFocusNode?.dispose();
    rsaIdNumberController?.dispose();

    nonRsaIdNumberFocusNode?.dispose();
    nonRsaIdNumberController?.dispose();

    passportFocusNode?.dispose();
    passportController?.dispose();

    salesFroceCodeFocusNode?.dispose();
    salesFroceCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get optionsRadioBtnValue => optionsRadioBtnValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
