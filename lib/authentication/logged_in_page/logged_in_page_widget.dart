import '/backend/api_requests/api_calls.dart';
import '/components/success_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'logged_in_page_model.dart';
export 'logged_in_page_model.dart';

class LoggedInPageWidget extends StatefulWidget {
  const LoggedInPageWidget({super.key});

  @override
  State<LoggedInPageWidget> createState() => _LoggedInPageWidgetState();
}

class _LoggedInPageWidgetState extends State<LoggedInPageWidget> {
  late LoggedInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoggedInPageModel());

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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/bbb_logov2.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 50.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome back, ${FFAppState().FirstName}!',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.w800,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Roboto'),
                                        ),
                                  ),
                                  Builder(
                                    builder: (context) => Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 30.0, 20.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          _model.loggedInUserRes =
                                              await GetUserCall.call(
                                            mobile: FFAppState().mobile,
                                          );
                                          if ((_model
                                                  .loggedInUserRes?.succeeded ??
                                              true)) {
                                            if (GetUserCall.bbbmobileappaccess(
                                              (_model.loggedInUserRes
                                                      ?.jsonBody ??
                                                  ''),
                                            )!) {
                                              _model.userDetailsRes =
                                                  await GetOdooIDCall.call(
                                                userId: GetUserCall.userid(
                                                  (_model.loggedInUserRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );
                                              if ((_model.userDetailsRes
                                                      ?.succeeded ??
                                                  true)) {
                                                setState(() {
                                                  FFAppState().username =
                                                      GetOdooIDCall
                                                          .salesforcecode(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().FirstName =
                                                      GetOdooIDCall.firstName(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().LastName =
                                                      GetOdooIDCall.lastName(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().Title =
                                                      GetOdooIDCall.title(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().OdooID =
                                                      GetOdooIDCall.odooID(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().salesforcecode =
                                                      GetOdooIDCall
                                                          .salesforcecode(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().mobile =
                                                      GetOdooIDCall.mobile(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().odoorsaid =
                                                      GetOdooIDCall.rsaidnumber(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  FFAppState().isUserLoggedIn =
                                                      true;
                                                  FFAppState().userrole =
                                                      GetUserCall.userrole(
                                                    (_model.loggedInUserRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                  FFAppState().homeaddresscity =
                                                      GetOdooIDCall
                                                          .resaddresscity(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  FFAppState().homeaddresszip =
                                                      GetOdooIDCall
                                                          .resaddresszip(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  FFAppState()
                                                          .homeaddresssuburb =
                                                      GetOdooIDCall
                                                          .resaddresssuburb(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  FFAppState()
                                                          .homeaddressstreet =
                                                      GetOdooIDCall
                                                          .resaddressstreet(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString();
                                                  FFAppState().userid =
                                                      GetUserCall.userid(
                                                    (_model.loggedInUserRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!;
                                                });

                                                context.pushNamed(
                                                    'distributor_homepage');
                                              } else {
                                                await actions.errorPopupMessage(
                                                  context,
                                                  'Log In Error',
                                                  getJsonField(
                                                    (_model.userDetailsRes
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.error''',
                                                  ).toString(),
                                                );
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.75,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.8,
                                                          child:
                                                              SuccessMessageWidget(
                                                            messageTitle:
                                                                'App Access',
                                                            messageBody:
                                                                'Welcome to the Botle Buhle Brands App! We\'re excited that you\'ve chosen to explore our app. Your cell number is currently listed in our database, but access to the all the app functionality is not available at the moment. Rest assured, we\'ll notify you via SMS as soon as access to the functionality  is granted. Thank you for your patience and understanding.',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            }
                                          } else {
                                            await actions.errorPopupMessage(
                                              context,
                                              'Log In Error',
                                              getJsonField(
                                                (_model.loggedInUserRes
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.error''',
                                              ).toString(),
                                            );
                                          }

                                          setState(() {});
                                        },
                                        text: 'Log In',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 46.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Roboto'),
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
                                  Opacity(
                                    opacity: 0.8,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().isUserLoggedIn = false;

                                            context.goNamed(
                                              'login_page',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Text(
                                            'Log In with a different mobile number',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 19.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Roboto'),
                                                ),
                                          ),
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
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [],
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
    );
  }
}
