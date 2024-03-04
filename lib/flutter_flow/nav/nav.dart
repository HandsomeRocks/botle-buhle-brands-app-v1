import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/bbb_splash.gif',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : BbbSignupPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/bbb_splash.gif',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : BbbSignupPageWidget(),
        ),
        FFRoute(
          name: 'login_page',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(
            dialCode: params.getParam('dialCode', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'bbb_signup_page',
          path: '/bbbSignupPage',
          builder: (context, params) => BbbSignupPageWidget(),
        ),
        FFRoute(
          name: 'distributor_homepage',
          path: '/distributorHomepage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'distributor_homepage')
              : DistributorHomepageWidget(
                  mobile: params.getParam('mobile', ParamType.String),
                  username: params.getParam('username', ParamType.String),
                  role: params.getParam('role', ParamType.String),
                  userid: params.getParam('userid', ParamType.int),
                ),
        ),
        FFRoute(
          name: 'profile_page',
          path: '/profilePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile_page')
              : ProfilePageWidget(),
        ),
        FFRoute(
          name: 'catalogue_embed_page',
          path: '/catalogueEmbedPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CatalogueEmbedPageWidget(
              docUrl: params.getParam('docUrl', ParamType.String),
              catalogueName: params.getParam('catalogueName', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'chat_page',
          path: '/chatPage',
          builder: (context, params) => ChatPageWidget(),
        ),
        FFRoute(
          name: 'community_page',
          path: '/communityPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CommunityPageWidget(),
          ),
        ),
        FFRoute(
          name: 'catalogues_page',
          path: '/cataloguesPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CataloguesPageWidget(
              username: params.getParam('username', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'onboarding_meeting_page',
          path: '/onboardingMeetingPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: OnboardingMeetingPageWidget(),
          ),
        ),
        FFRoute(
          name: 'recruit_attendance',
          path: '/recruitAttendance',
          builder: (context, params) => RecruitAttendanceWidget(
            attendeeid: params.getParam('attendeeid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'attendance_vetting_page_1',
          path: '/attendanceVettingPage1',
          builder: (context, params) => AttendanceVettingPage1Widget(
            creditscore: params.getParam('creditscore', ParamType.String),
            isRecruitConfirmed:
                params.getParam('isRecruitConfirmed', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'otp_page',
          path: '/otpPage',
          builder: (context, params) => OtpPageWidget(
            mobile: params.getParam('mobile', ParamType.String),
            username: params.getParam('username', ParamType.String),
            role: params.getParam('role', ParamType.String),
            userid: params.getParam('userid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'welcom_homepage',
          path: '/welcomHomepage',
          builder: (context, params) => WelcomHomepageWidget(
            mobile: params.getParam('mobile', ParamType.String),
            username: params.getParam('username', ParamType.String),
            role: params.getParam('role', ParamType.String),
            userid: params.getParam('userid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'signup_otp_page',
          path: '/signupOtpPage',
          builder: (context, params) => SignupOtpPageWidget(
            mobile: params.getParam('mobile', ParamType.String),
            username: params.getParam('username', ParamType.String),
            role: params.getParam('role', ParamType.String),
            userid: params.getParam('userid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'attendance_vetting_page_2',
          path: '/attendanceVettingPage2',
          builder: (context, params) => AttendanceVettingPage2Widget(
            mobile: params.getParam('mobile', ParamType.String),
            recruitername: params.getParam('recruitername', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'attendance_vetting_page_3',
          path: '/attendanceVettingPage3',
          builder: (context, params) => AttendanceVettingPage3Widget(
            mobile: params.getParam('mobile', ParamType.String),
            idpassporttype: params.getParam('idpassporttype', ParamType.String),
            idpassportfield:
                params.getParam('idpassportfield', ParamType.String),
            id: params.getParam('id', ParamType.int),
            recruitername: params.getParam('recruitername', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'attendance_vetting_page_4',
          path: '/attendanceVettingPage4',
          builder: (context, params) => AttendanceVettingPage4Widget(
            mobile: params.getParam('mobile', ParamType.String),
            firstname: params.getParam('firstname', ParamType.String),
            lastname: params.getParam('lastname', ParamType.String),
            street: params.getParam('street', ParamType.String),
            suburb: params.getParam('suburb', ParamType.String),
            state: params.getParam('state', ParamType.String),
            country: params.getParam('country', ParamType.String),
            city: params.getParam('city', ParamType.String),
            zip: params.getParam('zip', ParamType.String),
            creditscorecolor:
                params.getParam('creditscorecolor', ParamType.String),
            creditscoretext:
                params.getParam('creditscoretext', ParamType.String),
            id: params.getParam('id', ParamType.int),
            idpassportfield:
                params.getParam('idpassportfield', ParamType.String),
            recruitername: params.getParam('recruitername', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'edit_profile_page',
          path: '/editProfilePage',
          builder: (context, params) => EditProfilePageWidget(),
        ),
        FFRoute(
          name: 'interview_page_1',
          path: '/interviewPage1',
          builder: (context, params) => InterviewPage1Widget(),
        ),
        FFRoute(
          name: 'interview_page_2',
          path: '/interviewPage2',
          builder: (context, params) => InterviewPage2Widget(
            mobile: params.getParam('mobile', ParamType.String),
            firstname: params.getParam('firstname', ParamType.String),
            lastname: params.getParam('lastname', ParamType.String),
            street: params.getParam('street', ParamType.String),
            suburb: params.getParam('suburb', ParamType.String),
            state: params.getParam('state', ParamType.String),
            country: params.getParam('country', ParamType.String),
            city: params.getParam('city', ParamType.String),
            zip: params.getParam('zip', ParamType.String),
            creditscorecolor:
                params.getParam('creditscorecolor', ParamType.String),
            creditscoretext:
                params.getParam('creditscoretext', ParamType.String),
            odooid: params.getParam('odooid', ParamType.int),
            idpassportfield:
                params.getParam('idpassportfield', ParamType.String),
            id: params.getParam('id', ParamType.int),
            recruitername: params.getParam('recruitername', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'recruit_attendanceBackup',
          path: '/recruitAttendanceBackup',
          builder: (context, params) => RecruitAttendanceBackupWidget(
            attendeeid: params.getParam('attendeeid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'recruiting_pageBackup',
          path: '/recruitingPageBackup',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: RecruitingPageBackupWidget(),
          ),
        ),
        FFRoute(
          name: 'onboardin_page_1Backup',
          path: '/onboardinPage1Backup',
          builder: (context, params) => OnboardinPage1BackupWidget(
            creditscore: params.getParam('creditscore', ParamType.String),
            isRecruitConfirmed:
                params.getParam('isRecruitConfirmed', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'onboarded_page',
          path: '/onboardedPage',
          builder: (context, params) => OnboardedPageWidget(),
        ),
        FFRoute(
          name: 'logged_in_page',
          path: '/loggedInPage',
          builder: (context, params) => LoggedInPageWidget(),
        ),
        FFRoute(
          name: 'pamphlets_page',
          path: '/pamphletsPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PamphletsPageWidget(
              username: params.getParam('username', ParamType.String),
              country: params.getParam('country', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'pamphlet_embed_page',
          path: '/pamphletEmbedPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PamphletEmbedPageWidget(
              docUrl: params.getParam('docUrl', ParamType.String),
              catalogueName: params.getParam('catalogueName', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'mobile_recruiting_page1',
          path: '/mobileRecruitingPage1',
          builder: (context, params) => MobileRecruitingPage1Widget(
            whatsappMsg: params.getParam('whatsappMsg', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'decline_reasons_info_page',
          path: '/declineReasonsInfoPage',
          builder: (context, params) => DeclineReasonsInfoPageWidget(
            mobile: params.getParam('mobile', ParamType.String),
            firstname: params.getParam('firstname', ParamType.String),
            lastname: params.getParam('lastname', ParamType.String),
            street: params.getParam('street', ParamType.String),
            suburb: params.getParam('suburb', ParamType.String),
            state: params.getParam('state', ParamType.String),
            country: params.getParam('country', ParamType.String),
            city: params.getParam('city', ParamType.String),
            zip: params.getParam('zip', ParamType.String),
            creditscorecolor:
                params.getParam('creditscorecolor', ParamType.String),
            creditscoretext:
                params.getParam('creditscoretext', ParamType.String),
            odooid: params.getParam('odooid', ParamType.int),
            idpassportfield:
                params.getParam('idpassportfield', ParamType.String),
            id: params.getParam('id', ParamType.int),
            recruitername: params.getParam('recruitername', ParamType.String),
            declineReasons: params.getParam<String>(
                'declineReasons', ParamType.String, true),
          ),
        ),
        FFRoute(
          name: 'bbb_contact_us_page',
          path: '/bbbContactUsPage',
          builder: (context, params) => BbbContactUsPageWidget(),
        ),
        FFRoute(
          name: 'terms_of_service_page',
          path: '/termsOfServicePage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TermsOfServicePageWidget(
              docUrl: params.getParam('docUrl', ParamType.String),
              catalogueName: params.getParam('catalogueName', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'pamphlets_countries_page',
          path: '/pamphletsCountriesPage',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PamphletsCountriesPageWidget(
              username: params.getParam('username', ParamType.String),
            ),
          ),
        ),
        FFRoute(
          name: 'bbb_register_page',
          path: '/bbbRegisterPage',
          builder: (context, params) => BbbRegisterPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
