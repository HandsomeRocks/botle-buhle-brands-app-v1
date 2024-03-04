import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarded_page_model.dart';
export 'onboarded_page_model.dart';

class OnboardedPageWidget extends StatefulWidget {
  const OnboardedPageWidget({super.key});

  @override
  State<OnboardedPageWidget> createState() => _OnboardedPageWidgetState();
}

class _OnboardedPageWidgetState extends State<OnboardedPageWidget>
    with TickerProviderStateMixin {
  late OnboardedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardedPageModel());

    _model.onboardedTabbarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.acceptedSearchInputController ??= TextEditingController();
    _model.acceptedSearchInputFocusNode ??= FocusNode();

    _model.declinedSearchInputController ??= TextEditingController();
    _model.declinedSearchInputFocusNode ??= FocusNode();

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
            'Onboarded',
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).secondary,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Roboto'),
                                    ),
                                unselectedLabelStyle: TextStyle(),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                padding: EdgeInsets.all(4.0),
                                tabs: [
                                  Tab(
                                    text: 'Accepted',
                                  ),
                                  Tab(
                                    text: 'Declined',
                                  ),
                                ],
                                controller: _model.onboardedTabbarController,
                                onTap: (i) async {
                                  [() async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.onboardedTabbarController,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 4.0),
                                            child: Text(
                                              'Accepted Recruits below',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto'),
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 30.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .acceptedSearchInputController,
                                              focusNode: _model
                                                  .acceptedSearchInputFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.acceptedSearchInputController',
                                                Duration(milliseconds: 500),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Search your recruits...',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFE0E3E7),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xB57D283B),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            0.0, 0.0),
                                                prefixIcon: Icon(
                                                  Icons.search_rounded,
                                                  color: Color(0xB57D283B),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto'),
                                                  ),
                                              cursorColor: Color(0xB57D283B),
                                              validator: _model
                                                  .acceptedSearchInputControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.0,
                                            thickness: 1.0,
                                            color: Color(0xFFE0E3E7),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: (_model
                                                            .apiRequestCompleter2 ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              GetOnboardedListAcceptedCall
                                                                  .call(
                                                            managerId:
                                                                FFAppState()
                                                                    .OdooID,
                                                            inductionMeetingAttended:
                                                                true,
                                                            onboardingStarted:
                                                                true,
                                                            onboardingCompleted:
                                                                true,
                                                            interviewStarted:
                                                                true,
                                                            isInterested: true,
                                                            mobileConfirmed:
                                                                true,
                                                            inductionMeetingInvited:
                                                                true,
                                                            documentsSubmitted:
                                                                true,
                                                            creditCheckPermissionGranted:
                                                                true,
                                                            creditCheckGenerated:
                                                                true,
                                                            consumerviewAddressConfirmed:
                                                                true,
                                                            sortbyCreateDate:
                                                                'desc',
                                                            interviewStatus:
                                                                'ACCEPTED',
                                                          )))
                                                    .future,
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child:
                                                              SpinKitCubeGrid(
                                                            color: Color(
                                                                0xFF7D283B),
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final acceptedRecruitsListGetOnboardedListAcceptedResponse =
                                                      snapshot.data!;
                                                  return Builder(
                                                    builder: (context) {
                                                      final allAccepted =
                                                          GetOnboardedListAcceptedCall
                                                                  .allOnboardees(
                                                                acceptedRecruitsListGetOnboardedListAcceptedResponse
                                                                    .jsonBody,
                                                              )?.toList() ??
                                                              [];
                                                      if (allAccepted.isEmpty) {
                                                        return Center(
                                                          child: Image.asset(
                                                            'assets/images/empty_list.png',
                                                          ),
                                                        );
                                                      }
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {},
                                                        child: RefreshIndicator(
                                                          color:
                                                              Color(0xFF7D283B),
                                                          onRefresh: () async {
                                                            setState(() => _model
                                                                    .apiRequestCompleter2 =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted2();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                allAccepted
                                                                    .length,
                                                            itemBuilder: (context,
                                                                allAcceptedIndex) {
                                                              final allAcceptedItem =
                                                                  allAccepted[
                                                                      allAcceptedIndex];
                                                              return Visibility(
                                                                visible: functions.searchResults(
                                                                        _model
                                                                            .acceptedSearchInputController
                                                                            .text,
                                                                        allAcceptedItem
                                                                            .toString()) ??
                                                                    true,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          1.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              0.0,
                                                                          color:
                                                                              Color(0xFF9E848F),
                                                                          offset: Offset(
                                                                              0.0,
                                                                              1.0),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                20.0,
                                                                            height:
                                                                                20.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: colorFromCssString(
                                                                                functions.setColor(getJsonField(
                                                                                  allAcceptedItem,
                                                                                  r'''$.credit_vetting_score''',
                                                                                ).toString())!,
                                                                                defaultColor: Colors.black,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: colorFromCssString(
                                                                                  functions.setColor(getJsonField(
                                                                                    allAcceptedItem,
                                                                                    r'''$.credit_vetting_score''',
                                                                                  ).toString())!,
                                                                                  defaultColor: Colors.black,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 30.0,
                                                                              height: 30.0,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  functions.countryFlag(functions.getDialCodeFromMobile(getJsonField(
                                                                                    allAcceptedItem,
                                                                                    r'''$.mobile''',
                                                                                  ).toString())),
                                                                                  'https://flagcdn.com/h80/za.png',
                                                                                ),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allAcceptedItem,
                                                                                          r'''$.first_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: Color(0xFF101518),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allAcceptedItem,
                                                                                          r'''$.last_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: Color(0xFF101518),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    functions.friendlyMobile(getJsonField(
                                                                                      allAcceptedItem,
                                                                                      r'''$.mobile''',
                                                                                    ).toString()),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Onboarded Date: ${getJsonField(
                                                                                      allAcceptedItem,
                                                                                      r'''$.onboarding_complete_date''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allAcceptedItem,
                                                                                          r'''$.recruiter_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                              fontSize: 16.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        functions.checkForNull('(${getJsonField(
                                                                                          allAcceptedItem,
                                                                                          r'''$.recruitment_medium''',
                                                                                        ).toString()})')!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                              fontSize: 16.0,
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
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
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
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 4.0),
                                            child: Text(
                                              'Declined Recruits below',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto'),
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 30.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .declinedSearchInputController,
                                              focusNode: _model
                                                  .declinedSearchInputFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.declinedSearchInputController',
                                                Duration(milliseconds: 500),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Search your recruits...',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFE0E3E7),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xB57D283B),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            0.0, 0.0),
                                                prefixIcon: Icon(
                                                  Icons.search_rounded,
                                                  color: Color(0xB57D283B),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Roboto'),
                                                  ),
                                              cursorColor: Color(0xB57D283B),
                                              validator: _model
                                                  .declinedSearchInputControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.0,
                                            thickness: 1.0,
                                            color: Color(0xFFE0E3E7),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: (_model
                                                            .apiRequestCompleter1 ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              GetOnboardedListDeclinedCall
                                                                  .call(
                                                            managerId:
                                                                FFAppState()
                                                                    .OdooID,
                                                            inductionMeetingAttended:
                                                                true,
                                                            onboardingStarted:
                                                                true,
                                                            onboardingCompleted:
                                                                true,
                                                            interviewStarted:
                                                                true,
                                                            isInterested: true,
                                                            mobileConfirmed:
                                                                true,
                                                            inductionMeetingInvited:
                                                                true,
                                                            documentsSubmitted:
                                                                true,
                                                            creditCheckPermissionGranted:
                                                                true,
                                                            creditCheckGenerated:
                                                                true,
                                                            consumerviewAddressConfirmed:
                                                                true,
                                                            sortbyCreateDate:
                                                                'desc',
                                                            interviewStatus:
                                                                'DECLINED',
                                                          )))
                                                    .future,
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            20.0),
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child:
                                                              SpinKitCubeGrid(
                                                            color: Color(
                                                                0xFF7D283B),
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final declinedRecruitsListGetOnboardedListDeclinedResponse =
                                                      snapshot.data!;
                                                  return Builder(
                                                    builder: (context) {
                                                      final allDeclined =
                                                          GetOnboardedListDeclinedCall
                                                                  .allOnboardees(
                                                                declinedRecruitsListGetOnboardedListDeclinedResponse
                                                                    .jsonBody,
                                                              )?.toList() ??
                                                              [];
                                                      if (allDeclined.isEmpty) {
                                                        return Center(
                                                          child: Image.asset(
                                                            'assets/images/empty_list.png',
                                                          ),
                                                        );
                                                      }
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {},
                                                        child: RefreshIndicator(
                                                          color:
                                                              Color(0xFF7D283B),
                                                          onRefresh: () async {
                                                            setState(() => _model
                                                                    .apiRequestCompleter1 =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted1();
                                                          },
                                                          child:
                                                              ListView.builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                allDeclined
                                                                    .length,
                                                            itemBuilder: (context,
                                                                allDeclinedIndex) {
                                                              final allDeclinedItem =
                                                                  allDeclined[
                                                                      allDeclinedIndex];
                                                              return Visibility(
                                                                visible: functions.searchResults(
                                                                        _model
                                                                            .declinedSearchInputController
                                                                            .text,
                                                                        allDeclinedItem
                                                                            .toString()) ??
                                                                    true,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          1.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              0.0,
                                                                          color:
                                                                              Color(0xFF9E848F),
                                                                          offset: Offset(
                                                                              0.0,
                                                                              1.0),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                20.0,
                                                                            height:
                                                                                20.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: colorFromCssString(
                                                                                functions.setColor(getJsonField(
                                                                                  allDeclinedItem,
                                                                                  r'''$.credit_vetting_score''',
                                                                                ).toString())!,
                                                                                defaultColor: Colors.black,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                              border: Border.all(
                                                                                color: colorFromCssString(
                                                                                  functions.setColor(getJsonField(
                                                                                    allDeclinedItem,
                                                                                    r'''$.credit_vetting_score''',
                                                                                  ).toString())!,
                                                                                  defaultColor: Colors.black,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 30.0,
                                                                              height: 30.0,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  functions.countryFlag(functions.getDialCodeFromMobile(getJsonField(
                                                                                    allDeclinedItem,
                                                                                    r'''$.mobile''',
                                                                                  ).toString())),
                                                                                  'https://flagcdn.com/h80/za.png',
                                                                                ),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allDeclinedItem,
                                                                                          r'''$.first_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: Color(0xFF101518),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allDeclinedItem,
                                                                                          r'''$.last_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: Color(0xFF101518),
                                                                                              fontSize: 18.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    functions.friendlyMobile(getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.mobile''',
                                                                                    ).toString()),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Onboarded Date: ${getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.onboarding_complete_date''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                          fontSize: 16.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        getJsonField(
                                                                                          allDeclinedItem,
                                                                                          r'''$.recruiter_name''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                              fontSize: 16.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        functions.checkForNull('(${getJsonField(
                                                                                          allDeclinedItem,
                                                                                          r'''$.recruitment_medium''',
                                                                                        ).toString()})')!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                                              fontSize: 16.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                'decline_reasons_info_page',
                                                                                queryParameters: {
                                                                                  'mobile': serializeParam(
                                                                                    functions.friendlyMobile(getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.mobile''',
                                                                                    ).toString()),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'firstname': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.first_name''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'lastname': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.last_name''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'street': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_street''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'suburb': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_suburb''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'state': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_state''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'country': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_country''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'city': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_city''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'zip': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.res_address_zip''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'creditscorecolor': serializeParam(
                                                                                    functions.setColor(getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.credit_vetting_score''',
                                                                                    ).toString()),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'creditscoretext': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.credit_vetting_score''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'odooid': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.odoo_id''',
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'id': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.id''',
                                                                                    ),
                                                                                    ParamType.int,
                                                                                  ),
                                                                                  'recruitername': serializeParam(
                                                                                    getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.recruiter_name''',
                                                                                    ).toString(),
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'declineReasons': serializeParam(
                                                                                    (getJsonField(
                                                                                      allDeclinedItem,
                                                                                      r'''$.interview_decline_reasons''',
                                                                                      true,
                                                                                    ) as List)
                                                                                        .map<String>((s) => s.toString())
                                                                                        .toList(),
                                                                                    ParamType.String,
                                                                                    true,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.arrow_forward,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
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
        ),
      ),
    );
  }
}
