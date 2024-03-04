import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attendance_vetting_page3_model.dart';
export 'attendance_vetting_page3_model.dart';

class AttendanceVettingPage3Widget extends StatefulWidget {
  const AttendanceVettingPage3Widget({
    super.key,
    this.mobile,
    this.idpassporttype,
    this.idpassportfield,
    this.id,
    String? recruitername,
  }) : this.recruitername = recruitername ?? 'Recruiter Name';

  final String? mobile;
  final String? idpassporttype;
  final String? idpassportfield;
  final int? id;
  final String recruitername;

  @override
  State<AttendanceVettingPage3Widget> createState() =>
      _AttendanceVettingPage3WidgetState();
}

class _AttendanceVettingPage3WidgetState
    extends State<AttendanceVettingPage3Widget> {
  late AttendanceVettingPage3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttendanceVettingPage3Model());

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
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
              context.pop();
            },
          ),
          title: Text(
            'Vetting',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1F000000),
                          )
                        ],
                        borderRadius: BorderRadius.circular(0.0),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              functions.friendlyMobile(widget.mobile!),
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).primary,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Roboto'),
                                  ),
                            ),
                            Divider(
                              height: 24.0,
                              thickness: 2.0,
                              color: Color(0xFFE0E3E7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Request consent verification code from your prospective consultant.',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF14181B),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Roboto'),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 32.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: PinCodeTextField(
                                              autoDisposeControllers: false,
                                              appContext: context,
                                              length: 4,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF7D283B),
                                                        fontSize: 18.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              enableActiveFill: false,
                                              autoFocus: true,
                                              enablePinAutofill: false,
                                              errorTextSpace: 16.0,
                                              showCursor: true,
                                              cursorColor: Color(0xFF7D283B),
                                              obscureText: false,
                                              hintCharacter: '-',
                                              keyboardType:
                                                  TextInputType.number,
                                              pinTheme: PinTheme(
                                                fieldHeight: 44.0,
                                                fieldWidth: 44.0,
                                                borderWidth: 2.0,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12.0),
                                                  bottomRight:
                                                      Radius.circular(12.0),
                                                  topLeft:
                                                      Radius.circular(12.0),
                                                  topRight:
                                                      Radius.circular(12.0),
                                                ),
                                                shape: PinCodeFieldShape.box,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                selectedColor:
                                                    Color(0xFF7D283B),
                                                activeFillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                inactiveFillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                selectedFillColor:
                                                    Color(0xFF7D283B),
                                              ),
                                              controller: _model.verifyCode,
                                              onChanged: (_) {},
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              validator: _model
                                                  .verifyCodeValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              _model.confirmOTpProspective =
                                                  await ConfirmOTPPinCall.call(
                                                mobile: widget.mobile,
                                                pin: int.tryParse(
                                                    _model.verifyCode!.text),
                                              );
                                              if ((_model.confirmOTpProspective
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.updateCreditCheck =
                                                    await UpdateCreditCheckProspectiveSelectedCall
                                                        .call(
                                                  id: widget.id,
                                                  creditCheckPermissionGranted:
                                                      true,
                                                  creditCheckPermissionDate:
                                                      getCurrentTimestamp
                                                          .toString(),
                                                );
                                                if ((_model.updateCreditCheck
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.apiResultgcd =
                                                      await GetProspectiveOdooIDCall
                                                          .call(
                                                    id: widget.id,
                                                  );
                                                  if ((_model.apiResultgcd
                                                          ?.succeeded ??
                                                      true)) {
                                                    if (widget.idpassporttype ==
                                                        'RSA ID Number') {
                                                      _model.apiResultjxe =
                                                          await UpdateProspectiveIDNumberCall
                                                              .call(
                                                        odooId:
                                                            GetProspectiveOdooIDCall
                                                                .prospectiveodooid(
                                                          (_model.apiResultgcd
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        idNumber: widget
                                                            .idpassportfield,
                                                      );
                                                      if ((_model.apiResultjxe
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.consumerViewRes =
                                                            await UpdateProspectiveConsumerviewCall
                                                                .call(
                                                          odooId: GetProspectiveOdooIDCall
                                                              .prospectiveodooid(
                                                            (_model.apiResultgcd
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                        );
                                                        if ((_model
                                                                .consumerViewRes
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.compuscanRes =
                                                              await UpdateProspectiveCompuscanCall
                                                                  .call(
                                                            odooId: GetProspectiveOdooIDCall
                                                                .prospectiveodooid(
                                                              (_model.apiResultgcd
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                          );
                                                          if ((_model
                                                                  .compuscanRes
                                                                  ?.succeeded ??
                                                              true)) {
                                                            await actions
                                                                .successPopupMessage(
                                                              context,
                                                              'Credit Check Successful',
                                                              'Excellent. A successful credit check has been performed for the attendee listed below:  ${widget.mobile}',
                                                            );
                                                            _model.scorecolor =
                                                                UpdateProspectiveCompuscanCall
                                                                    .creditscorecolor(
                                                              (_model.compuscanRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;

                                                            context.pushNamed(
                                                              'attendance_vetting_page_4',
                                                              queryParameters: {
                                                                'mobile':
                                                                    serializeParam(
                                                                  widget.mobile,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'firstname':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveConsumerviewCall
                                                                          .firstname(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString()),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'lastname':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveConsumerviewCall
                                                                          .lastname(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString()),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'street':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveConsumerviewCall
                                                                          .unverifiedstreet(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString()),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'suburb':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveConsumerviewCall
                                                                          .unverifiedsuburb(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString()),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'state':
                                                                    serializeParam(
                                                                  UpdateProspectiveConsumerviewCall
                                                                      .unverifiedstate(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'country':
                                                                    serializeParam(
                                                                  UpdateProspectiveConsumerviewCall
                                                                      .unverifiedcountry(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'city':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveConsumerviewCall
                                                                          .unverifiedcity(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString()),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'zip':
                                                                    serializeParam(
                                                                  UpdateProspectiveConsumerviewCall
                                                                      .unverifiedzip(
                                                                    (_model.consumerViewRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'creditscoretext':
                                                                    serializeParam(
                                                                  functions.setLowerCase(
                                                                      UpdateProspectiveCompuscanCall
                                                                          .creditscorecolor(
                                                                    (_model.compuscanRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'id':
                                                                    serializeParam(
                                                                  widget.id,
                                                                  ParamType.int,
                                                                ),
                                                                'idpassportfield':
                                                                    serializeParam(
                                                                  widget
                                                                      .idpassportfield,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'creditscorecolor':
                                                                    serializeParam(
                                                                  functions.setColor(
                                                                      UpdateProspectiveCompuscanCall
                                                                          .creditscorecolor(
                                                                    (_model.compuscanRes
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'recruitername':
                                                                    serializeParam(
                                                                  widget
                                                                      .recruitername,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            await actions
                                                                .errorPopupMessage(
                                                              context,
                                                              'Recruit Credit Info Error',
                                                              getJsonField(
                                                                (_model.compuscanRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.error''',
                                                              ).toString(),
                                                            );
                                                          }
                                                        } else {
                                                          await actions
                                                              .errorPopupMessage(
                                                            context,
                                                            'Recruit Address Info Error',
                                                            getJsonField(
                                                              (_model.consumerViewRes
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.error''',
                                                            ).toString(),
                                                          );
                                                        }
                                                      } else {
                                                        await actions
                                                            .errorPopupMessage(
                                                          context,
                                                          'Update Recruit RSA ID Number Error',
                                                          getJsonField(
                                                            (_model.apiResultjxe
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.error''',
                                                          ).toString(),
                                                        );
                                                      }
                                                    } else {
                                                      _model.apiResult02a =
                                                          await UpdateProspectivePassportCall
                                                              .call(
                                                        odooId:
                                                            GetProspectiveOdooIDCall
                                                                .prospectiveodooid(
                                                          (_model.apiResultgcd
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        passportNumber: widget
                                                            .idpassportfield,
                                                      );
                                                      if ((_model.apiResult02a
                                                              ?.succeeded ??
                                                          true)) {
                                                        await actions
                                                            .successPopupMessage(
                                                          context,
                                                          'Credit Check Successful',
                                                          'Excellent. A successful credit check has been performed for the attendee listed below:  ${widget.mobile}',
                                                        );
                                                        _model.scorecolor =
                                                            functions.setColor(
                                                                'Black')!;

                                                        context.pushNamed(
                                                          'attendance_vetting_page_4',
                                                          queryParameters: {
                                                            'mobile':
                                                                serializeParam(
                                                              widget.mobile,
                                                              ParamType.String,
                                                            ),
                                                            'creditscoretext':
                                                                serializeParam(
                                                              functions
                                                                  .setLowerCase(
                                                                      'BLACK'),
                                                              ParamType.String,
                                                            ),
                                                            'id':
                                                                serializeParam(
                                                              widget.id,
                                                              ParamType.int,
                                                            ),
                                                            'idpassportfield':
                                                                serializeParam(
                                                              widget
                                                                  .idpassportfield,
                                                              ParamType.String,
                                                            ),
                                                            'creditscorecolor':
                                                                serializeParam(
                                                              functions
                                                                  .setColor(
                                                                      'Black'),
                                                              ParamType.String,
                                                            ),
                                                            'recruitername':
                                                                serializeParam(
                                                              widget
                                                                  .recruitername,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        await actions
                                                            .errorPopupMessage(
                                                          context,
                                                          'Update Recruit Passport Error',
                                                          getJsonField(
                                                            (_model.apiResult02a
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.error''',
                                                          ).toString(),
                                                        );
                                                      }
                                                    }
                                                  } else {
                                                    await actions
                                                        .errorPopupMessage(
                                                      context,
                                                      'Fetch Recruit Details Error',
                                                      getJsonField(
                                                        (_model.apiResultgcd
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.error''',
                                                      ).toString(),
                                                    );
                                                  }
                                                } else {
                                                  await actions
                                                      .errorPopupMessage(
                                                    context,
                                                    'Update Credit Check Error',
                                                    getJsonField(
                                                      (_model.updateCreditCheck
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.error''',
                                                    ).toString(),
                                                  );
                                                }
                                              } else {
                                                await actions.errorPopupMessage(
                                                  context,
                                                  'Vetting Consent OTP Error',
                                                  getJsonField(
                                                    (_model.confirmOTpProspective
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.error''',
                                                  ).toString(),
                                                );
                                              }

                                              setState(() {});
                                            },
                                            text: 'Conduct Vetting',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color: Colors.white,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Roboto'),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
