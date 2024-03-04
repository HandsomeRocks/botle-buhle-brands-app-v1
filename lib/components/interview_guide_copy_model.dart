import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'interview_guide_copy_widget.dart' show InterviewGuideCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InterviewGuideCopyModel
    extends FlutterFlowModel<InterviewGuideCopyWidget> {
  ///  Local state fields for this component.

  List<String> listOfAccount = [];
  void addToListOfAccount(String item) => listOfAccount.add(item);
  void removeFromListOfAccount(String item) => listOfAccount.remove(item);
  void removeAtIndexFromListOfAccount(int index) =>
      listOfAccount.removeAt(index);
  void insertAtIndexInListOfAccount(int index, String item) =>
      listOfAccount.insert(index, item);
  void updateListOfAccountAtIndex(int index, Function(String) updateFn) =>
      listOfAccount[index] = updateFn(listOfAccount[index]);

  List<String> listOfCountries = [];
  void addToListOfCountries(String item) => listOfCountries.add(item);
  void removeFromListOfCountries(String item) => listOfCountries.remove(item);
  void removeAtIndexFromListOfCountries(int index) =>
      listOfCountries.removeAt(index);
  void insertAtIndexInListOfCountries(int index, String item) =>
      listOfCountries.insert(index, item);
  void updateListOfCountriesAtIndex(int index, Function(String) updateFn) =>
      listOfCountries[index] = updateFn(listOfCountries[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for married_radio_btn widget.
  FormFieldController<String>? marriedRadioBtnValueController;
  // State field(s) for dependent_radio_btn widget.
  FormFieldController<String>? dependentRadioBtnValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for stock_safe_radio_btn widget.
  FormFieldController<String>? stockSafeRadioBtnValueController;
  // State field(s) for keep_stock_safe_options widget.
  FormFieldController<String>? keepStockSafeOptionsValueController;
  // State field(s) for accounts_radio_btn widget.
  FormFieldController<String>? accountsRadioBtnValueController;
  // State field(s) for accounts_open_options widget.
  List<String>? accountsOpenOptionsValues;
  FormFieldController<List<String>>? accountsOpenOptionsValueController;
  // State field(s) for account_paying_dropdown widget.
  String? accountPayingDropdownValue;
  FormFieldController<String>? accountPayingDropdownValueController;
  // State field(s) for account_up_to_date_options widget.
  FormFieldController<String>? accountUpToDateOptionsValueController;
  // State field(s) for reasons_no_to_date_options widget.
  List<String>? reasonsNoToDateOptionsValues;
  FormFieldController<List<String>>? reasonsNoToDateOptionsValueController;
  // State field(s) for credit_score_radio_btn widget.
  FormFieldController<String>? creditScoreRadioBtnValueController;
  // State field(s) for credit_score_awareness_dropdown widget.
  String? creditScoreAwarenessDropdownValue;
  FormFieldController<String>? creditScoreAwarenessDropdownValueController;
  // State field(s) for credit_socre_awareness_options widget.
  List<String>? creditSocreAwarenessOptionsValues;
  FormFieldController<List<String>>? creditSocreAwarenessOptionsValueController;
  // State field(s) for career_goals_options widget.
  List<String>? careerGoalsOptionsValues;
  FormFieldController<List<String>>? careerGoalsOptionsValueController;
  // State field(s) for join_bbb_options widget.
  List<String>? joinBbbOptionsValues;
  FormFieldController<List<String>>? joinBbbOptionsValueController;
  // State field(s) for sales_experience_radio_btn widget.
  FormFieldController<String>? salesExperienceRadioBtnValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for products_sold_options widget.
  List<String>? productsSoldOptionsValues;
  FormFieldController<List<String>>? productsSoldOptionsValueController;
  // State field(s) for good_fit_radio_btn widget.
  FormFieldController<String>? goodFitRadioBtnValueController;
  // State field(s) for manager_role_radio_btn widget.
  FormFieldController<String>? managerRoleRadioBtnValueController;
  // State field(s) for recruit_success_radio_btn widget.
  FormFieldController<String>? recruitSuccessRadioBtnValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get marriedRadioBtnValue => marriedRadioBtnValueController?.value;
  String? get dependentRadioBtnValue => dependentRadioBtnValueController?.value;
  String? get stockSafeRadioBtnValue => stockSafeRadioBtnValueController?.value;
  String? get keepStockSafeOptionsValue =>
      keepStockSafeOptionsValueController?.value;
  String? get accountsRadioBtnValue => accountsRadioBtnValueController?.value;
  String? get accountUpToDateOptionsValue =>
      accountUpToDateOptionsValueController?.value;
  String? get creditScoreRadioBtnValue =>
      creditScoreRadioBtnValueController?.value;
  String? get salesExperienceRadioBtnValue =>
      salesExperienceRadioBtnValueController?.value;
  String? get goodFitRadioBtnValue => goodFitRadioBtnValueController?.value;
  String? get managerRoleRadioBtnValue =>
      managerRoleRadioBtnValueController?.value;
  String? get recruitSuccessRadioBtnValue =>
      recruitSuccessRadioBtnValueController?.value;
}
