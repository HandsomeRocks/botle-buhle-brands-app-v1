import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'interview_page1_model.dart';
export 'interview_page1_model.dart';

class InterviewPage1Widget extends StatefulWidget {
  const InterviewPage1Widget({super.key});

  @override
  State<InterviewPage1Widget> createState() => _InterviewPage1WidgetState();
}

class _InterviewPage1WidgetState extends State<InterviewPage1Widget> {
  late InterviewPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterviewPage1Model());

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
            'Interview',
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Interview Recruits below',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF14181B),
                                  fontSize: 18.0,
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
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Roboto'),
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Roboto'),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: GetInterviewListCall.call(
                                managerId: FFAppState().OdooID,
                                inductionMeetingAttended: true,
                                onboardingStarted: true,
                                onboardingCompleted: false,
                                interviewStarted: false,
                                isInterested: true,
                                mobileConfirmed: true,
                                inductionMeetingInvited: true,
                                documentsSubmitted: true,
                                creditCheckPermissionGranted: true,
                                creditCheckGenerated: true,
                                consumerviewAddressConfirmed: true,
                              ),
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
                                final onboardRecruitsListGetInterviewListResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final allInterviewees =
                                        GetInterviewListCall.allInterviewees(
                                              onboardRecruitsListGetInterviewListResponse
                                                  .jsonBody,
                                            )?.toList() ??
                                            [];
                                    if (allInterviewees.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/empty_list.png',
                                        ),
                                      );
                                    }
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {},
                                      child: ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: allInterviewees.length,
                                        itemBuilder:
                                            (context, allIntervieweesIndex) {
                                          final allIntervieweesItem =
                                              allInterviewees[
                                                  allIntervieweesIndex];
                                          return Visibility(
                                            visible: functions.searchResults(
                                                    _model.searchInputController
                                                        .text,
                                                    allIntervieweesItem
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
                                                      Container(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              colorFromCssString(
                                                            functions.setColor(
                                                                getJsonField(
                                                              allIntervieweesItem,
                                                              r'''$.credit_vetting_score''',
                                                            ).toString())!,
                                                            defaultColor:
                                                                Colors.white,
                                                          ),
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color:
                                                                colorFromCssString(
                                                              functions.setColor(
                                                                  getJsonField(
                                                                allIntervieweesItem,
                                                                r'''$.credit_vetting_score''',
                                                              ).toString())!,
                                                              defaultColor:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 30.0,
                                                          height: 30.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              functions.countryFlag(
                                                                  functions
                                                                      .getDialCodeFromMobile(
                                                                          getJsonField(
                                                                allIntervieweesItem,
                                                                r'''$.mobile''',
                                                              ).toString())),
                                                              'https://flagcdn.com/h80/za.png',
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
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
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      allIntervieweesItem,
                                                                      r'''$.first_name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              Color(0xFF101518),
                                                                          fontSize:
                                                                              18.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Roboto'),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      allIntervieweesItem,
                                                                      r'''$.last_name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              Color(0xFF101518),
                                                                          fontSize:
                                                                              18.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Roboto'),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                functions
                                                                    .friendlyMobile(
                                                                        getJsonField(
                                                                  allIntervieweesItem,
                                                                  r'''$.mobile''',
                                                                ).toString()),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          16.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Roboto'),
                                                                    ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      allIntervieweesItem,
                                                                      r'''$.recruiter_name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          fontSize:
                                                                              16.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Roboto'),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    functions
                                                                        .checkForNull(
                                                                            '(${getJsonField(
                                                                      allIntervieweesItem,
                                                                      r'''$.recruitment_medium''',
                                                                    ).toString()})')!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          fontSize:
                                                                              16.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Roboto'),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          if (valueOrDefault<
                                                                  bool>(
                                                                getJsonField(
                                                                  allIntervieweesItem,
                                                                  r'''$.induction_meeting_attended''',
                                                                ),
                                                                true,
                                                              ) &&
                                                              valueOrDefault<
                                                                  bool>(
                                                                getJsonField(
                                                                  allIntervieweesItem,
                                                                  r'''$.onboarding_started''',
                                                                ),
                                                                true,
                                                              ) &&
                                                              !getJsonField(
                                                                allIntervieweesItem,
                                                                r'''$.interview_started''',
                                                              )) {
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
                                                                  'interview_page_2',
                                                                  queryParameters:
                                                                      {
                                                                    'mobile':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.mobile''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'firstname':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.first_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'lastname':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.last_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'street':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_street''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'suburb':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_suburb''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'state':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_province''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'country':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_country''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'city':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_city''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'zip':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_zip''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'creditscorecolor':
                                                                        serializeParam(
                                                                      functions
                                                                          .setColor(
                                                                              getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.credit_vetting_score''',
                                                                      ).toString()),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'creditscoretext':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.credit_vetting_score''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'odooid':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.odoo_id''',
                                                                      ),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'id':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.id''',
                                                                      ),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                    'recruitername':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                            );
                                                          } else {
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
                                                                  'interview_page_2',
                                                                  queryParameters:
                                                                      {
                                                                    'mobile':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.mobile''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'firstname':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.first_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'lastname':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.last_name''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'street':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_street''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'suburb':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_suburb''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'state':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_province''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'country':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_country''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'city':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_city''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'zip':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.res_address_zip''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'creditscorecolor':
                                                                        serializeParam(
                                                                      functions
                                                                          .setColor(
                                                                              getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.credit_vetting_score''',
                                                                      ).toString()),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'creditscoretext':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.credit_vetting_score''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'odooid':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        allIntervieweesItem,
                                                                        r'''$.odoo_id''',
                                                                      ),
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .check,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                size: 24.0,
                                                              ),
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
