import '/backend/api_requests/api_calls.dart';
import '/components/country_dial_code_list_widget.dart';
import '/components/sign_up_bottom_sheet_embed_widget.dart';
import '/components/success_message_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool showError = false;

  String mobile = '1234';

  int? userid;

  String userrole = 'consultant';

  String username = 'demo1';

  bool mobileValid = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mobile_number widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  String? _mobileNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required';
    }

    if (val.length < 10) {
      return 'Enter valid mobile number';
    }

    return null;
  }

  // Stores action output result for [Custom Action - validateMobileAction] action in mobile_number widget.
  bool? isMobileValid;
  // Stores action output result for [Custom Action - sanitiseMobileNumber] action in login_btn widget.
  String? sanitisedMobile;
  // Stores action output result for [Backend Call - API (Get User)] action in login_btn widget.
  ApiCallResponse? mobileGetUserRes;
  // Stores action output result for [Backend Call - API (Get OTP Pin)] action in login_btn widget.
  ApiCallResponse? getOTPRes;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileNumberControllerValidator = _mobileNumberControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
