import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcom_homepage_model.dart';
export 'welcom_homepage_model.dart';

class WelcomHomepageWidget extends StatefulWidget {
  const WelcomHomepageWidget({
    super.key,
    this.mobile,
    String? username,
    this.role,
    this.userid,
  }) : this.username = username ?? 'Name';

  final String? mobile;
  final String username;
  final String? role;
  final int? userid;

  @override
  State<WelcomHomepageWidget> createState() => _WelcomHomepageWidgetState();
}

class _WelcomHomepageWidgetState extends State<WelcomHomepageWidget> {
  late WelcomHomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomHomepageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getConsRes = await GetConsultantInfoInOdooCall.call(
        viewResId: FFAppState().viewresid,
      );
      if ((_model.getConsRes?.succeeded ?? true)) {
        _model.createUserRes = await CreateUserCall.call(
          username: GetConsultantInfoInOdooCall.salesforcecode(
            (_model.getConsRes?.jsonBody ?? ''),
          ),
          mobile: widget.mobile,
          role: widget.role,
          salesForceCode: GetConsultantInfoInOdooCall.salesforcecode(
            (_model.getConsRes?.jsonBody ?? ''),
          ),
        );
        if ((_model.createUserRes?.succeeded ?? true)) {
          _model.createConsRes = await CreateConsultantCall.call(
            userId: CreateUserCall.id(
              (_model.createUserRes?.jsonBody ?? ''),
            ),
            firstName: GetConsultantInfoInOdooCall.firstname(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            lastName: GetConsultantInfoInOdooCall.lastname(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            odooId: GetConsultantInfoInOdooCall.id(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            salesForceCode: GetConsultantInfoInOdooCall.salesforcecode(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            mobile: widget.mobile,
            nonRsaPassportNumber: GetConsultantInfoInOdooCall.passport(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            rsaIdNumber: GetConsultantInfoInOdooCall.said(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            nationality: GetConsultantInfoInOdooCall.country(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            resAddressStreet: GetConsultantInfoInOdooCall.street(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            resAddressSuburb: GetConsultantInfoInOdooCall.suburb(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            resAddressCity: GetConsultantInfoInOdooCall.city(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            resAddressZip: GetConsultantInfoInOdooCall.zip(
              (_model.getConsRes?.jsonBody ?? ''),
            ).toString(),
            resAddressProvince: GetConsultantInfoInOdooCall.state(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            resAddressCountry: GetConsultantInfoInOdooCall.country(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            genealogy: GetConsultantInfoInOdooCall.genealogy(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            recruiterSource: GetConsultantInfoInOdooCall.recruitersource(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            recruiterId: GetConsultantInfoInOdooCall.recruiterid(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            managerId: GetConsultantInfoInOdooCall.managerid(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
            distributorId: GetConsultantInfoInOdooCall.distributorid(
              (_model.getConsRes?.jsonBody ?? ''),
            ),
          );
          if ((_model.createConsRes?.succeeded ?? true)) {
            _model.apiResultv0b = await UpdateLastLoginDateCall.call(
              user: CreateUserCall.id(
                (_model.createUserRes?.jsonBody ?? ''),
              ),
              lastLoginDate: getCurrentTimestamp.toString(),
            );
            if ((_model.apiResultv0b?.succeeded ?? true)) {
              FFAppState().userid = CreateUserCall.id(
                (_model.createUserRes?.jsonBody ?? ''),
              )!;
              FFAppState().FirstName = GetConsultantInfoInOdooCall.firstname(
                (_model.getConsRes?.jsonBody ?? ''),
              )!;
              FFAppState().Title = GetConsultantInfoInOdooCall.genealogy(
                (_model.getConsRes?.jsonBody ?? ''),
              )!;
              FFAppState().LastName = GetConsultantInfoInOdooCall.lastname(
                (_model.getConsRes?.jsonBody ?? ''),
              )!;
              FFAppState().OdooID = GetConsultantInfoInOdooCall.id(
                (_model.getConsRes?.jsonBody ?? ''),
              )!;
              FFAppState().mobile = widget.mobile!;
              FFAppState().isFirstTime = true;

              context.goNamed('distributor_homepage');
            } else {
              context.goNamed('distributor_homepage');
            }
          } else {
            await actions.errorPopupMessage(
              context,
              'Sign Up Error',
              getJsonField(
                (_model.createConsRes?.jsonBody ?? ''),
                r'''$.error''',
              ).toString().toString(),
            );
            _model.apiResult3cr = await DeactivateUserCall.call(
              user: CreateUserCall.id(
                (_model.createUserRes?.jsonBody ?? ''),
              ),
              active: false,
            );
            if ((_model.apiResult3cr?.succeeded ?? true)) {
              context.goNamed('bbb_signup_page');
            } else {
              await actions.signuperrorPopupMessage(
                context,
                'Sign Up Error',
                'Sorry something went wrong. Support Office will contact you shortly.  ',
                'login_page',
              );
            }
          }
        } else {
          await actions.signuperrorPopupMessage(
            context,
            'Sign Up Error',
            getJsonField(
              (_model.createUserRes?.jsonBody ?? ''),
              r'''$.error''',
            ).toString().toString(),
            'login_page',
          );
        }
      } else {
        await actions.signuperrorPopupMessage(
          context,
          'Sign Up Error',
          getJsonField(
            (_model.getConsRes?.jsonBody ?? ''),
            r'''$.error''',
          ).toString().toString(),
          'bbb_signup_page',
        );
      }
    });

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
          actions: [],
          centerTitle: true,
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
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/LoadingB.gif',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
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
            ],
          ),
        ),
      ),
    );
  }
}
