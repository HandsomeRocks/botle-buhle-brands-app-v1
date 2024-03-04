import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_app_message_model.dart';
export 'welcome_app_message_model.dart';

class WelcomeAppMessageWidget extends StatefulWidget {
  const WelcomeAppMessageWidget({
    super.key,
    this.noOfRecruits,
    this.listOfRecruits,
    this.messageBody,
    String? messageTitle,
    this.mobile,
  }) : this.messageTitle = messageTitle ?? 'Success';

  final int? noOfRecruits;
  final List<int>? listOfRecruits;
  final String? messageBody;
  final String messageTitle;
  final String? mobile;

  @override
  State<WelcomeAppMessageWidget> createState() =>
      _WelcomeAppMessageWidgetState();
}

class _WelcomeAppMessageWidgetState extends State<WelcomeAppMessageWidget> {
  late WelcomeAppMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeAppMessageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/in_app_access.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.messageTitle,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Roboto'),
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Opacity(
                        opacity: 0.7,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.messageBody,
                              'Success',
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 14.0,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Roboto'),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultuax =
                              await GetAppUserProfileCall.call(
                            mobile: widget.mobile,
                            active: true,
                          );
                          if ((_model.apiResultuax?.succeeded ?? true)) {
                            setState(() {
                              FFAppState().username = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].sales_force_code''',
                              ).toString();
                              FFAppState().salesforcecode = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].sales_force_code''',
                              ).toString();
                              FFAppState().odoorsaid = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].rsa_id_number''',
                              ).toString();
                              FFAppState().homeaddresscity = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].res_address_city''',
                              ).toString();
                              FFAppState().homeaddresszip = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].res_address_zip''',
                              ).toString();
                              FFAppState().homeaddresssuburb = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].res_address_suburb''',
                              ).toString();
                              FFAppState().homeaddressstreet = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].res_address_street''',
                              ).toString();
                              FFAppState().userid = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].user_id''',
                              );
                              FFAppState().mobile = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].mobile''',
                              ).toString();
                              FFAppState().homeaddressprovince = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].res_address_province''',
                              ).toString();
                              FFAppState().odoomanagerid = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].manager_id''',
                              );
                              FFAppState().odoorecruiterid = getJsonField(
                                (_model.apiResultuax?.jsonBody ?? ''),
                                r'''$.data[:].recruiter_id''',
                              );
                              FFAppState().isFirstTime = false;
                            });
                            Navigator.pop(context);
                          } else {
                            await actions.errorPopupMessage(
                              context,
                              'Oops...',
                              'Something went wrong.',
                            );
                          }

                          setState(() {});
                        },
                        text: 'Okay',
                        icon: FaIcon(
                          FontAwesomeIcons.check,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).success,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Roboto'),
                              ),
                          elevation: 4.0,
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
            ],
          ),
        ),
      ],
    );
  }
}
