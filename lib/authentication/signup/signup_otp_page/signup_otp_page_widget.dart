import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'signup_otp_page_model.dart';
export 'signup_otp_page_model.dart';

class SignupOtpPageWidget extends StatefulWidget {
  const SignupOtpPageWidget({
    super.key,
    this.mobile,
    this.username,
    this.role,
    this.userid,
  });

  final String? mobile;
  final String? username;
  final String? role;
  final int? userid;

  @override
  State<SignupOtpPageWidget> createState() => _SignupOtpPageWidgetState();
}

class _SignupOtpPageWidgetState extends State<SignupOtpPageWidget> {
  late SignupOtpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupOtpPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('bbb_signup_page');
              },
            ),
            actions: [],
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/bbb_logov2.png',
                                  width: 309.0,
                                  height: 147.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Container(
                                  width: 369.0,
                                  height: 372.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0xFF7D283B),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(40.0),
                                    border: Border.all(
                                      color: Color(0xFF7D283B),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'OTP Pin',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 28.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Roboto'),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        30.0, 30.0, 30.0, 0.0),
                                                child: PinCodeTextField(
                                                  autoDisposeControllers: false,
                                                  appContext: context,
                                                  length: 4,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            Color(0xFF7D283B),
                                                        fontSize: 27.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Lato'),
                                                      ),
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  enableActiveFill: false,
                                                  autoFocus: true,
                                                  enablePinAutofill: true,
                                                  errorTextSpace: 16.0,
                                                  showCursor: true,
                                                  cursorColor:
                                                      Color(0xFF7D283B),
                                                  obscureText: false,
                                                  hintCharacter: '-',
                                                  keyboardType:
                                                      TextInputType.number,
                                                  pinTheme: PinTheme(
                                                    fieldHeight: 45.0,
                                                    fieldWidth: 44.0,
                                                    borderWidth: 2.0,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(12.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                    shape: PinCodeFieldShape
                                                        .underline,
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    inactiveColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    selectedColor:
                                                        Color(0xFF7D283B),
                                                    activeFillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    inactiveFillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    selectedFillColor:
                                                        Color(0xFF7D283B),
                                                  ),
                                                  controller: _model.otpPinCode,
                                                  onChanged: (_) {},
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  validator: _model
                                                      .otpPinCodeValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Opacity(
                                                        opacity: 0.6,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.apiResultm5x =
                                                                    await GetOTPPinCall
                                                                        .call(
                                                                  mobile: widget
                                                                      .mobile,
                                                                );
                                                                if ((_model
                                                                        .apiResultm5x
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  await actions
                                                                      .infoPopupMessage(
                                                                    context,
                                                                    'OTP Pin resent',
                                                                    'OTP Pin has been resent to your mobile.',
                                                                  );
                                                                } else {
                                                                  await actions
                                                                      .errorPopupMessage(
                                                                    context,
                                                                    'OTP Error',
                                                                    getJsonField(
                                                                      (_model.apiResultm5x
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.error''',
                                                                    ).toString(),
                                                                  );
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                'Resend OTP',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          18.0,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Roboto'),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        30.0, 20.0, 30.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          _model.confirmOTPRes =
                                                              await ConfirmOTPPinCall
                                                                  .call(
                                                            mobile:
                                                                widget.mobile,
                                                            pin: int.tryParse(
                                                                _model
                                                                    .otpPinCode!
                                                                    .text),
                                                          );
                                                          if ((_model
                                                                  .confirmOTPRes
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (FFAppState()
                                                                    .viewmodel ==
                                                                'hr.employee') {
                                                              setState(() {
                                                                FFAppState()
                                                                        .mobile =
                                                                    widget
                                                                        .mobile!;
                                                                FFAppState()
                                                                        .userrole =
                                                                    'consultant';
                                                              });

                                                              context.pushNamed(
                                                                'welcom_homepage',
                                                                queryParameters:
                                                                    {
                                                                  'mobile':
                                                                      serializeParam(
                                                                    widget
                                                                        .mobile,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'role':
                                                                      serializeParam(
                                                                    'consultant',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            300),
                                                                  ),
                                                                },
                                                              );
                                                            } else {
                                                              await actions
                                                                  .errorPopupMessage(
                                                                context,
                                                                'Sign Up Error',
                                                                'Sorry. You can only Sign Up if you are a valid Sales Force member.',
                                                              );
                                                            }
                                                          } else {
                                                            await actions
                                                                .errorPopupMessage(
                                                              context,
                                                              'Confirm OTP Pin Error',
                                                              getJsonField(
                                                                (_model.confirmOTPRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.error''',
                                                              ).toString(),
                                                            );
                                                          }

                                                          setState(() {});
                                                        },
                                                        text: 'CONTINUE',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 235.0,
                                                          height: 52.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        20.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'Roboto'),
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
