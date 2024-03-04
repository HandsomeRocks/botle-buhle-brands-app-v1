import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mobile_1 widget.
  FocusNode? mobile1FocusNode;
  TextEditingController? mobile1Controller;
  String? Function(BuildContext, String?)? mobile1ControllerValidator;
  // State field(s) for mobile_2 widget.
  FocusNode? mobile2FocusNode;
  TextEditingController? mobile2Controller;
  String? Function(BuildContext, String?)? mobile2ControllerValidator;
  // State field(s) for mobile_mvno widget.
  FocusNode? mobileMvnoFocusNode;
  TextEditingController? mobileMvnoController;
  String? Function(BuildContext, String?)? mobileMvnoControllerValidator;
  // State field(s) for country widget.
  String? countryValue1;
  FormFieldController<String>? countryValueController1;
  // State field(s) for province widget.
  String? provinceValue1;
  FormFieldController<String>? provinceValueController1;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityController1;
  String? Function(BuildContext, String?)? cityController1Validator;
  // State field(s) for zip widget.
  FocusNode? zipFocusNode1;
  TextEditingController? zipController1;
  String? Function(BuildContext, String?)? zipController1Validator;
  // State field(s) for suburb widget.
  FocusNode? suburbFocusNode1;
  TextEditingController? suburbController1;
  String? Function(BuildContext, String?)? suburbController1Validator;
  // State field(s) for street widget.
  FocusNode? streetFocusNode1;
  TextEditingController? streetController1;
  String? Function(BuildContext, String?)? streetController1Validator;
  // State field(s) for address_same_btn widget.
  FormFieldController<String>? addressSameBtnValueController;
  // State field(s) for address_label widget.
  FocusNode? addressLabelFocusNode;
  TextEditingController? addressLabelController;
  String? Function(BuildContext, String?)? addressLabelControllerValidator;
  // State field(s) for country widget.
  String? countryValue2;
  FormFieldController<String>? countryValueController2;
  // State field(s) for province widget.
  String? provinceValue2;
  FormFieldController<String>? provinceValueController2;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityController2;
  String? Function(BuildContext, String?)? cityController2Validator;
  // State field(s) for zip widget.
  FocusNode? zipFocusNode2;
  TextEditingController? zipController2;
  String? Function(BuildContext, String?)? zipController2Validator;
  // State field(s) for suburb widget.
  FocusNode? suburbFocusNode2;
  TextEditingController? suburbController2;
  String? Function(BuildContext, String?)? suburbController2Validator;
  // State field(s) for street widget.
  FocusNode? streetFocusNode2;
  TextEditingController? streetController2;
  String? Function(BuildContext, String?)? streetController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    mobile1FocusNode?.dispose();
    mobile1Controller?.dispose();

    mobile2FocusNode?.dispose();
    mobile2Controller?.dispose();

    mobileMvnoFocusNode?.dispose();
    mobileMvnoController?.dispose();

    cityFocusNode1?.dispose();
    cityController1?.dispose();

    zipFocusNode1?.dispose();
    zipController1?.dispose();

    suburbFocusNode1?.dispose();
    suburbController1?.dispose();

    streetFocusNode1?.dispose();
    streetController1?.dispose();

    addressLabelFocusNode?.dispose();
    addressLabelController?.dispose();

    cityFocusNode2?.dispose();
    cityController2?.dispose();

    zipFocusNode2?.dispose();
    zipController2?.dispose();

    suburbFocusNode2?.dispose();
    suburbController2?.dispose();

    streetFocusNode2?.dispose();
    streetController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get addressSameBtnValue => addressSameBtnValueController?.value;
}
