import '/components/credit_score_explained_widget.dart';
import '/components/unsaved_interview_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'interview_guidev1_widget.dart' show InterviewGuidev1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class InterviewGuidev1Model extends FlutterFlowModel<InterviewGuidev1Widget> {
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

  int? stepWidth;

  ///  State fields for stateful widgets in this component.

  // State field(s) for InterviewPageView widget.
  PageController? interviewPageViewController;

  int get interviewPageViewCurrentIndex =>
      interviewPageViewController != null &&
              interviewPageViewController!.hasClients &&
              interviewPageViewController!.page != null
          ? interviewPageViewController!.page!.round()
          : 0;
  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryController;
  String? Function(BuildContext, String?)? countryControllerValidator;
  // State field(s) for province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceController;
  String? Function(BuildContext, String?)? provinceControllerValidator;
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
  // State field(s) for birthplace widget.
  String? birthplaceValue1;
  FormFieldController<String>? birthplaceValueController1;
  // State field(s) for birthplace widget.
  String? birthplaceValue2;
  FormFieldController<String>? birthplaceValueController2;
  // State field(s) for married_radio_btn widget.
  FormFieldController<String>? marriedRadioBtnValueController;
  // State field(s) for dependents_radio_btn widget.
  FormFieldController<String>? dependentsRadioBtnValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for stock_safe_radio_btn widget.
  FormFieldController<String>? stockSafeRadioBtnValueController;
  // State field(s) for keep_stock_safe_options widget.
  FormFieldController<String>? keepStockSafeOptionsValueController;
  // State field(s) for account_open_radio_btn widget.
  FormFieldController<String>? accountOpenRadioBtnValueController;
  // State field(s) for accounts_open_options widget.
  List<String>? accountsOpenOptionsValues;
  FormFieldController<List<String>>? accountsOpenOptionsValueController;
  // State field(s) for account_paying_dropdown widget.
  String? accountPayingDropdownValue1;
  FormFieldController<String>? accountPayingDropdownValueController1;
  // State field(s) for account_paying_dropdown widget.
  String? accountPayingDropdownValue2;
  FormFieldController<String>? accountPayingDropdownValueController2;
  // State field(s) for account_uptodate_radio_btn widget.
  FormFieldController<String>? accountUptodateRadioBtnValueController;
  // State field(s) for reasons_no_to_date_options widget.
  List<String>? reasonsNoToDateOptionsValues;
  FormFieldController<List<String>>? reasonsNoToDateOptionsValueController;
  // State field(s) for credit_score widget.
  FocusNode? creditScoreFocusNode;
  TextEditingController? creditScoreController;
  String? Function(BuildContext, String?)? creditScoreControllerValidator;
  // State field(s) for aware_of_credit_radio_btn widget.
  FormFieldController<String>? awareOfCreditRadioBtnValueController;
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
  List<String>? joinBbbOptionsValues1;
  FormFieldController<List<String>>? joinBbbOptionsValueController1;
  // State field(s) for join_bbb_options widget.
  List<String>? joinBbbOptionsValues2;
  FormFieldController<List<String>>? joinBbbOptionsValueController2;
  // State field(s) for sales_hisotry_radio_btn widget.
  FormFieldController<String>? salesHisotryRadioBtnValueController;
  // State field(s) for company_worked_for widget.
  FocusNode? companyWorkedForFocusNode;
  TextEditingController? companyWorkedForController;
  String? Function(BuildContext, String?)? companyWorkedForControllerValidator;
  // State field(s) for products_sold_options widget.
  List<String>? productsSoldOptionsValues;
  FormFieldController<List<String>>? productsSoldOptionsValueController;
  // State field(s) for good_fit_radio_btn widget.
  FormFieldController<String>? goodFitRadioBtnValueController;
  // State field(s) for serve_radio_btn widget.
  FormFieldController<String>? serveRadioBtnValueController;
  // State field(s) for successful_radio_btn widget.
  FormFieldController<String>? successfulRadioBtnValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    countryFocusNode?.dispose();
    countryController?.dispose();

    provinceFocusNode?.dispose();
    provinceController?.dispose();

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

    companyWorkedForFocusNode?.dispose();
    companyWorkedForController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get marriedRadioBtnValue => marriedRadioBtnValueController?.value;
  String? get dependentsRadioBtnValue =>
      dependentsRadioBtnValueController?.value;
  String? get stockSafeRadioBtnValue => stockSafeRadioBtnValueController?.value;
  String? get keepStockSafeOptionsValue =>
      keepStockSafeOptionsValueController?.value;
  String? get accountOpenRadioBtnValue =>
      accountOpenRadioBtnValueController?.value;
  String? get accountUptodateRadioBtnValue =>
      accountUptodateRadioBtnValueController?.value;
  String? get awareOfCreditRadioBtnValue =>
      awareOfCreditRadioBtnValueController?.value;
  String? get salesHisotryRadioBtnValue =>
      salesHisotryRadioBtnValueController?.value;
  String? get goodFitRadioBtnValue => goodFitRadioBtnValueController?.value;
  String? get serveRadioBtnValue => serveRadioBtnValueController?.value;
  String? get successfulRadioBtnValue =>
      successfulRadioBtnValueController?.value;
}
