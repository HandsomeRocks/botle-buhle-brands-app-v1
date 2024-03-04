import '/components/credit_score_explained_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'decline_reasons_info_page_widget.dart'
    show DeclineReasonsInfoPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DeclineReasonsInfoPageModel
    extends FlutterFlowModel<DeclineReasonsInfoPageWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = false;

  String? stringcolor = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for first_name widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for last_name widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
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
  // State field(s) for credit_score widget.
  FocusNode? creditScoreFocusNode;
  TextEditingController? creditScoreController;
  String? Function(BuildContext, String?)? creditScoreControllerValidator;

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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
