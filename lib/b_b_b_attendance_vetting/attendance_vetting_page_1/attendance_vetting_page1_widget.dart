import '/backend/api_requests/api_calls.dart';
import '/components/attendance_alert_message_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'attendance_vetting_page1_model.dart';
export 'attendance_vetting_page1_model.dart';

class AttendanceVettingPage1Widget extends StatefulWidget {
  const AttendanceVettingPage1Widget({
    super.key,
    this.creditscore,
    this.isRecruitConfirmed,
  });

  final String? creditscore;
  final bool? isRecruitConfirmed;

  @override
  State<AttendanceVettingPage1Widget> createState() =>
      _AttendanceVettingPage1WidgetState();
}

class _AttendanceVettingPage1WidgetState
    extends State<AttendanceVettingPage1Widget> {
  late AttendanceVettingPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttendanceVettingPage1Model());

    _model.searchInputController ??= TextEditingController();
    _model.searchInputFocusNode ??= FocusNode();

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
              context.pushNamed('onboarding_meeting_page');
            },
          ),
          title: Text(
            'Attendance & Vetting',
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
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Attend Recruits below',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF14181B),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Roboto'),
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: TextFormField(
                            controller: _model.searchInputController,
                            focusNode: _model.searchInputFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.searchInputController',
                              Duration(milliseconds: 500),
                              () => setState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Search your recruits...',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Plus Jakarta Sans'),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Plus Jakarta Sans'),
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E3E7),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xB57D283B),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF5963),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF5963),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Color(0xB57D283B),
                              ),
                              suffixIcon: _model
                                      .searchInputController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.searchInputController?.clear();
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF14181B),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Roboto'),
                                ),
                            cursorColor: Color(0xB57D283B),
                            validator: _model.searchInputControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          indent: 30.0,
                          endIndent: 30.0,
                          color: Color(0xFFE0E3E7),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 12.0, 30.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    'Please initiate the vetting process by clicking the arrow. Please wait for a green tick confirmation before proceeding to attend to your recruits.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 14.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Roboto'),
                                        ),
                                  ),
                                ),
                              ),
                              if (_model.checkboxList.length > 0)
                                Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: WebViewAware(
                                              child: GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.6,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.8,
                                                  child:
                                                      AttendanceAlertMessageWidget(
                                                    noOfRecruits: _model
                                                        .checkboxList.length,
                                                    listOfRecruits:
                                                        _model.checkboxList,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    text: 'Attend',
                                    icon: FaIcon(
                                      FontAwesomeIcons.check,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Colors.white,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Roboto'),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(GetAttendanceListCall.call(
                                          managerId: FFAppState().OdooID,
                                          inductionMeetingAttended: false,
                                          isInterested: true,
                                          mobileConfirmed: true,
                                          inductionMeetingInvited: true,
                                        )))
                                  .future,
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: SpinKitCubeGrid(
                                          color: Color(0xFF7D283B),
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final recruitsListGetAttendanceListResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final allRecruits =
                                        GetAttendanceListCall.allattendees(
                                              recruitsListGetAttendanceListResponse
                                                  .jsonBody,
                                            )?.toList() ??
                                            [];
                                    if (allRecruits.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/empty_list.png',
                                        ),
                                      );
                                    }
                                    return RefreshIndicator(
                                      color: Color(0xFF7D283B),
                                      onRefresh: () async {
                                        setState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                        setState(() {
                                          _model.checkboxList = [];
                                        });
                                      },
                                      child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: allRecruits.length,
                                        itemBuilder:
                                            (context, allRecruitsIndex) {
                                          final allRecruitsItem =
                                              allRecruits[allRecruitsIndex];
                                          return Visibility(
                                            visible: functions.searchResults(
                                                    _model.searchInputController
                                                        .text,
                                                    allRecruitsItem
                                                        .toString()) ??
                                                true,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 1.0),
                                              child: Container(
                                                width: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 0.0,
                                                      color: Color(0xFF9E848F),
                                                      offset: Offset(0.0, 1.0),
                                                    )
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        Color(
                                                                            0xFF57636C),
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .attendanceCheckboxValueMap[
                                                                        allRecruitsItem] ??= false,
                                                                    onChanged: !(getJsonField(
                                                                              allRecruitsItem,
                                                                              r'''$.documents_submitted''',
                                                                            ) &&
                                                                            getJsonField(
                                                                              allRecruitsItem,
                                                                              r'''$.onboarding_started''',
                                                                            ))
                                                                        ? null
                                                                        : (newValue) async {
                                                                            setState(() =>
                                                                                _model.attendanceCheckboxValueMap[allRecruitsItem] = newValue!);
                                                                            if (newValue!) {
                                                                              setState(() {
                                                                                _model.addToCheckboxList(getJsonField(
                                                                                  allRecruitsItem,
                                                                                  r'''$.id''',
                                                                                ));
                                                                              });
                                                                            } else {
                                                                              setState(() {
                                                                                _model.removeFromCheckboxList(getJsonField(
                                                                                  allRecruitsItem,
                                                                                  r'''$.id''',
                                                                                ));
                                                                              });
                                                                            }
                                                                          },
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .success,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 30.0,
                                                                    height:
                                                                        30.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .countryFlag(functions.getDialCodeFromMobile(getJsonField(
                                                                          allRecruitsItem,
                                                                          r'''$.mobile''',
                                                                        ).toString())),
                                                                        'https://flagcdn.com/h80/za.png',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        functions
                                                                            .friendlyMobile(getJsonField(
                                                                          allRecruitsItem,
                                                                          r'''$.mobile''',
                                                                        ).toString()),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 18.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                            ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                allRecruitsItem,
                                                                                r'''$.recruiter_name''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    fontSize: 14.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              functions.checkForNull('(${getJsonField(
                                                                                allRecruitsItem,
                                                                                r'''$.recruitment_medium''',
                                                                              ).toString()})')!,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    fontSize: 14.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          if (!(getJsonField(
                                                                allRecruitsItem,
                                                                r'''$.documents_submitted''',
                                                              ) &&
                                                              getJsonField(
                                                                allRecruitsItem,
                                                                r'''$.onboarding_started''',
                                                              ))) {
                                                            return InkWell(
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
                                                                context
                                                                    .pushNamed(
                                                                  'attendance_vetting_page_2',
                                                                  queryParameters:
                                                                      {
                                                                    'mobile':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allRecruitsItem,
                                                                        r'''$.mobile''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'id':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allRecruitsItem,
                                                                        r'''$.id''',
                                                                      ),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'recruitername':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allRecruitsItem,
                                                                        r'''$.recruiter_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_forward,
                                                                color: Color(
                                                                    0xFF7D283B),
                                                                size: 24.0,
                                                              ),
                                                            );
                                                          } else {
                                                            return FaIcon(
                                                              FontAwesomeIcons
                                                                  .check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 24.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
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
      ),
    );
  }
}
