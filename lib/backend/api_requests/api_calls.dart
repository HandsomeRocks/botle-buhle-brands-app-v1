import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? mobile = '27634693179',
    bool? active = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/user',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
        'active': active,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? mobileErrorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].username''',
      ));
  static String? userrole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].role''',
      ));
  static bool? bbbmobileappaccess(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.data[:].bbb_mobile_app_access''',
      ));
}

class GetAppUserProfileCall {
  static Future<ApiCallResponse> call({
    String? mobile = '27634693179',
    bool? active = true,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get App User Profile',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/consultant',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
        'active': active,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? userprofile(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetCataloguesCall {
  static Future<ApiCallResponse> call({
    String? countries = 'mz',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Catalogues',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/catalogues',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'countries': countries,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? mobileErrorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.data.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? labels(dynamic response) => (getJsonField(
        response,
        r'''$.data.label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? banner(dynamic response) => (getJsonField(
        response,
        r'''$.data.banner''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetOTPPinCall {
  static Future<ApiCallResponse> call({
    String? mobile = '27732952132',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "${mobile}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get OTP Pin',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/auth_otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? otpid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ConfirmOTPPinCall {
  static Future<ApiCallResponse> call({
    String? mobile = '',
    int? pin,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm OTP Pin',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/auth_otp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
        'pin': pin,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic otpstatus(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateLastLoginDateCall {
  static Future<ApiCallResponse> call({
    int? user = 16,
    String? lastLoginDate = '2023-12-05 22:59:06',
  }) async {
    final ffApiRequestBody = '''
{
  "last_login_date": "${lastLoginDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Last Login Date',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/user/${user}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class DeactivateUserCall {
  static Future<ApiCallResponse> call({
    int? user = 16,
    bool? active,
  }) async {
    final ffApiRequestBody = '''
{
  "active": ${active}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Deactivate User',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/user/${user}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class GetOdooIDCall {
  static Future<ApiCallResponse> call({
    int? userId = 185,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Odoo ID',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/consultant',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].first_name''',
      ));
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].genealogy''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].last_name''',
      ));
  static int? odooID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].odoo_id''',
      ));
  static int? recruiterID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].recruiter_id''',
      ));
  static String? mobile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].mobile''',
      ));
  static String? recruitersource(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].recruiter_source''',
      ));
  static String? salesforcecode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].sales_force_code''',
      ));
  static dynamic resaddressstreet(dynamic response) => getJsonField(
        response,
        r'''$.data[:].res_address_street''',
      );
  static dynamic resaddresssuburb(dynamic response) => getJsonField(
        response,
        r'''$.data[:].res_address_suburb''',
      );
  static dynamic resaddresscity(dynamic response) => getJsonField(
        response,
        r'''$.data[:].res_address_city''',
      );
  static dynamic resaddresszip(dynamic response) => getJsonField(
        response,
        r'''$.data[:].res_address_zip''',
      );
  static dynamic rsaidnumber(dynamic response) => getJsonField(
        response,
        r'''$.data[:].rsa_id_number''',
      );
  static dynamic managerid(dynamic response) => getJsonField(
        response,
        r'''$.data[:].manager_id''',
      );
}

class GetProspectiveOdooIDCall {
  static Future<ApiCallResponse> call({
    int? id = 9,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Prospective Odoo ID ',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static int? prospectiveodooid(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.odoo_id''',
      ));
}

class UpdateProspectiveIDNumberCall {
  static Future<ApiCallResponse> call({
    int? odooId = 225102,
    String? idNumber = '9610135928080',
  }) async {
    final ffApiRequestBody = '''
{
  "sa_id": "${idNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective ID Number',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/prospective/${odooId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static dynamic prospectiveodooid(dynamic response) => getJsonField(
        response,
        r'''$.data.odoo_id''',
      );
}

class UpdateProspectivePassportCall {
  static Future<ApiCallResponse> call({
    int? odooId,
    String? passportNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "passport": "${passportNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective Passport',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/prospective/${odooId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static dynamic prospectiveodooid(dynamic response) => getJsonField(
        response,
        r'''$.data.odoo_id''',
      );
}

class GetAttendanceListCall {
  static Future<ApiCallResponse> call({
    bool? inductionMeetingAttended,
    bool? isInterested,
    int? managerId = 20239,
    bool? mobileConfirmed,
    bool? inductionMeetingInvited,
    String? sortbyCreateDate = 'desc',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Attendance List',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'manager_id': managerId,
        'induction_meeting_attended': inductionMeetingAttended,
        'is_interested': isInterested,
        'mobile_confirmed': mobileConfirmed,
        'induction_meeting_invited': inductionMeetingInvited,
        'sortby_create_date': sortbyCreateDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? attendeeid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? attendeedmobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? allattendees(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? creditscore(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onobardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? documentsSubmitted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].documents_submitted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? documentsSubmittedDate(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].documents_submitted_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ccpermissiongranted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_permission_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? ccpermissiongranteddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_permission_granted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? ccgranted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_generated''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? ccgranteddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].credit_check_generated_date''',
        true,
      ) as List?;
  static List<String>? inductionmeetingattended(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attendance_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? inductionmeetingattendeddate(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attended''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? cvaddressconfirmed(dynamic response) => getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirm_date''',
        true,
      ) as List?;
  static List<bool>? cvaddressconfirmeddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? recruitername(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].recruiter_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAllConfirmedRecruitsListCall {
  static Future<ApiCallResponse> call({
    String? sortbyInductionMeetingInviteDate = 'desc',
    String? sortbyCreateDate = 'desc',
    int? mangerId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Confirmed Recruits List',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective?active=true&is_interested=true&mobile_confirmed=true&induction_meeting_invited=true',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'manager_id': mangerId,
        'sortby_induction_meeting_invite_date':
            sortbyInductionMeetingInviteDate,
        'sortby_create_date': sortbyCreateDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? attendeeid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? attendeedmobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? allconfirmedrecruits(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? creditscore(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onobardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? documentsSubmitted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].documents_submitted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? documentsSubmittedDate(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].documents_submitted_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ccpermissiongranted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_permission_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? ccpermissiongranteddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_permission_granted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? ccgranted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_generated''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? ccgranteddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].credit_check_generated_date''',
        true,
      ) as List?;
  static List<String>? inductionmeetingattended(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attendance_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? inductionmeetingattendeddate(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attended''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? cvaddressconfirmed(dynamic response) => getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirm_date''',
        true,
      ) as List?;
  static List<bool>? cvaddressconfirmeddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? isinvited(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].induction_meeting_invited''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<String>? recruitername(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].recruiter_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAllRecruitsListCall {
  static Future<ApiCallResponse> call({
    int? managerId = 21680,
    bool? active = true,
    String? sortbyCreateDate = 'desc',
    String? recruiterId = '21680',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Recruits List ',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'recruiter_id': recruiterId,
        'active': active,
        'sortby_create_date': sortbyCreateDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? attendeeid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? attendeedmobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? allrecruits(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? creditscore(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onobardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? documentsSubmitted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].documents_submitted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? documentsSubmittedDate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].documents_submitted_date''',
        true,
      ) as List?;
  static List? ccpermissiongranted(dynamic response) => getJsonField(
        response,
        r'''$.data[:].credit_check_permission_date''',
        true,
      ) as List?;
  static List<bool>? ccpermissiongranteddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_permission_granted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? ccgranted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_check_generated''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? ccgranteddate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].credit_check_generated_date''',
        true,
      ) as List?;
  static List<String>? inductionmeetingattended(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attendance_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? inductionmeetingattendeddate(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attended''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? cvaddressconfirmed(dynamic response) => getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirm_date''',
        true,
      ) as List?;
  static List<bool>? cvaddressconfirmeddate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].consumerview_address_confirmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? recruitmentmedium(dynamic response) => getJsonField(
        response,
        r'''$.data[:].recruitment_medium''',
        true,
      ) as List?;
}

class GetOnboardedListAcceptedCall {
  static Future<ApiCallResponse> call({
    int? managerId = 21618,
    bool? inductionMeetingAttended,
    bool? onboardingStarted,
    bool? onboardingCompleted,
    bool? interviewStarted,
    bool? isInterested,
    bool? mobileConfirmed,
    bool? inductionMeetingInvited,
    bool? documentsSubmitted,
    bool? creditCheckPermissionGranted,
    bool? creditCheckGenerated,
    bool? consumerviewAddressConfirmed,
    String? sortbyCreateDate = 'desc',
    String? interviewStatus = 'ACCEPTED',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Onboarded List  Accepted',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'manager_id': managerId,
        'induction_meeting_attended': inductionMeetingAttended,
        'onboarding_started': onboardingStarted,
        'onboarding_completed': onboardingCompleted,
        'interview_started': interviewStarted,
        'is_interested': isInterested,
        'mobile_confirmed': mobileConfirmed,
        'induction_meeting_invited': inductionMeetingInvited,
        'documents_submitted': documentsSubmitted,
        'credit_check_permission_granted': creditCheckPermissionGranted,
        'credit_check_generated': creditCheckGenerated,
        'consumerview_address_confirmed': consumerviewAddressConfirmed,
        'sortby_create_date': sortbyCreateDate,
        'interview_status': interviewStatus,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static List? allOnboardees(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? mobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? stage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].stage''',
        true,
      ) as List?;
  static List<String>? creditscore(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onboardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? recruitersource(dynamic response) => getJsonField(
        response,
        r'''$.data[:].recruiter_source''',
        true,
      ) as List?;
  static List? interviewstatus(dynamic response) => getJsonField(
        response,
        r'''$.data[:].interview_status''',
        true,
      ) as List?;
  static List? onboardingcompletedate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].onboarding_complete_date''',
        true,
      ) as List?;
  static List<String>? recruitername(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].recruiter_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetOnboardedListDeclinedCall {
  static Future<ApiCallResponse> call({
    int? managerId = 21618,
    bool? inductionMeetingAttended,
    bool? onboardingStarted,
    bool? onboardingCompleted,
    bool? interviewStarted,
    bool? isInterested,
    bool? mobileConfirmed,
    bool? inductionMeetingInvited,
    bool? documentsSubmitted,
    bool? creditCheckPermissionGranted,
    bool? creditCheckGenerated,
    bool? consumerviewAddressConfirmed,
    String? sortbyCreateDate = 'desc',
    String? interviewStatus = 'DECLINED',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Onboarded List  Declined',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'manager_id': managerId,
        'induction_meeting_attended': inductionMeetingAttended,
        'onboarding_started': onboardingStarted,
        'onboarding_completed': onboardingCompleted,
        'interview_started': interviewStarted,
        'is_interested': isInterested,
        'mobile_confirmed': mobileConfirmed,
        'induction_meeting_invited': inductionMeetingInvited,
        'documents_submitted': documentsSubmitted,
        'credit_check_permission_granted': creditCheckPermissionGranted,
        'credit_check_generated': creditCheckGenerated,
        'consumerview_address_confirmed': consumerviewAddressConfirmed,
        'sortby_create_date': sortbyCreateDate,
        'interview_status': interviewStatus,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static List? allOnboardees(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? mobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? stage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].stage''',
        true,
      ) as List?;
  static List<String>? creditscore(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? onboardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? recruitersource(dynamic response) => getJsonField(
        response,
        r'''$.data[:].recruiter_source''',
        true,
      ) as List?;
  static List? interviewstatus(dynamic response) => getJsonField(
        response,
        r'''$.data[:].interview_status''',
        true,
      ) as List?;
  static List? onboardingcompletedate(dynamic response) => getJsonField(
        response,
        r'''$.data[:].onboarding_complete_date''',
        true,
      ) as List?;
  static List<String>? recruitername(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].recruiter_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetInterviewListCall {
  static Future<ApiCallResponse> call({
    int? managerId = 21618,
    bool? inductionMeetingAttended = true,
    bool? onboardingStarted = true,
    bool? onboardingCompleted = false,
    bool? interviewStarted,
    bool? isInterested,
    bool? mobileConfirmed,
    bool? inductionMeetingInvited,
    bool? documentsSubmitted,
    bool? creditCheckPermissionGranted,
    bool? creditCheckGenerated,
    bool? consumerviewAddressConfirmed,
    String? sortbyCreateDate = 'desc',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Interview List',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'manager_id': managerId,
        'induction_meeting_attended': inductionMeetingAttended,
        'onboarding_started': onboardingStarted,
        'onboarding_completed': onboardingCompleted,
        'is_interested': isInterested,
        'mobile_confirmed': mobileConfirmed,
        'induction_meeting_invited': inductionMeetingInvited,
        'documents_submitted': documentsSubmitted,
        'credit_check_permission_granted': creditCheckPermissionGranted,
        'credit_check_generated': creditCheckGenerated,
        'consumerview_address_confirmed': consumerviewAddressConfirmed,
        'interview_started': interviewStarted,
        'sortby_create_date': sortbyCreateDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static List? allInterviewees(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? mobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? stage(dynamic response) => getJsonField(
        response,
        r'''$.data[:].stage''',
        true,
      ) as List?;
  static List<String>? firstname(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].first_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lastname(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].last_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addresscity(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addresscountry(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addressprovince(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_province''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addressstreet(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_street''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addresssuburb(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_suburb''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? addresszip(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].res_address_zip''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? idnumber(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].rsa_id_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? creditscorecolor(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].credit_vetting_score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? odooid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].odoo_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<bool>? inductionmeetingattended(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].induction_meeting_attended''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? interviewstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].interview_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? onboardingstarted(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].onboarding_started''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static String? recruitername(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].recruiter_name''',
      ));
}

class UpdateRecruitsAttendanceCall {
  static Future<ApiCallResponse> call({
    List<int>? idsList,
    bool? inductionMeetingAttended = true,
    String? inductionMeetingAttendanceDate = '2023-11-21 22:59:06',
  }) async {
    final ids = _serializeList(idsList);

    final ffApiRequestBody = '''
{
  "ids": ${ids},
  "data": {
    "induction_meeting_attended": ${inductionMeetingAttended},
    "induction_meeting_attendance_date": "${inductionMeetingAttendanceDate}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Recruits Attendance',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/multi',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateProspectiveConsumerviewDetailsCall {
  static Future<ApiCallResponse> call({
    int? id = 5,
    String? firstName = '',
    String? lastName = '',
    String? rsaIdNumber = '',
    String? resAddressStreet = '',
    String? resAddressSuburb = '',
    String? resAddressCity = '',
    String? resAddressZip = '',
    String? resAddressProvince = '',
    String? resAddressCountry = '',
    String? creditVettingScore = '',
    bool? onboardingStarted = true,
    String? onboardingStartDate = '',
    bool? creditCheckGenerated = false,
    String? creditCheckGeneratedDate = '',
    bool? consumerviewAddressConfirmed = false,
    String? consumerviewAddressConfirmedDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "rsa_id_number": "${rsaIdNumber}",
  "res_address_street": "${resAddressStreet}",
  "res_address_suburb": "${resAddressSuburb}",
  "res_address_city": "${resAddressCity}",
  "res_address_zip": "${resAddressZip}",
  "res_address_province": "${resAddressProvince}",
  "res_address_country": "${resAddressCountry}",
  "credit_vetting_score": "${creditVettingScore}",
  "onboarding_started": ${onboardingStarted},
  "onboarding_start_date": "${onboardingStartDate}",
  "credit_check_generated": ${creditCheckGenerated},
  "consumerview_address_confirmed": ${consumerviewAddressConfirmed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective  ConsumerviewDetails',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateProspectiveInterviewStatusCall {
  static Future<ApiCallResponse> call({
    int? id = 54,
    bool? interviewStarted = true,
    String? interviewStatus = '',
    bool? onboardingCompleted = true,
    String? onboardingCompleteDate = '',
    List<String>? interviewDeclineReasonsList,
  }) async {
    final interviewDeclineReasons = _serializeList(interviewDeclineReasonsList);

    final ffApiRequestBody = '''
{
  "interview_started": ${interviewStarted},
  "interview_status": "${interviewStatus}",
  "onboarding_completed": ${onboardingCompleted},
  "interview_decline_reasons": ${interviewDeclineReasons}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective  Interview Status',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class UpdateOdooProspectiveConsumerviewDetailsCall {
  static Future<ApiCallResponse> call({
    int? id = 225102,
    String? firstName = 'Mzwakhe',
    String? lastName = 'Besho',
    String? rsaIdNumber = '9610135928080',
    String? resAddressStreet = 'Tbc',
    String? resAddressSuburb = 'Centruion',
    String? resAddressCity = 'Centurion',
    String? resAddressZip = '0067',
    String? resAddressProvince = 'Gauteng(ZA)',
    String? resAddressCountry = 'South Africa',
    String? creditVettingScore = 'Green',
    bool? onboardingStarted = true,
    String? onboardingStartDate = '',
    bool? isCreditCheck = true,
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "street": "${resAddressStreet}",
  "suburb": "${resAddressSuburb}",
  "city": "${resAddressCity}",
  "zip": "${resAddressZip}",
  "province": "${resAddressProvince}",
  "country": "${resAddressCountry}",
  "credit_score": "${creditVettingScore}",
  "is_credit_check": ${isCreditCheck}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Odoo Prospective  ConsumerviewDetails',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateProspectiveInviteCall {
  static Future<ApiCallResponse> call({
    int? id = 225102,
    bool? inductionMeetingInvited = true,
    String? inductionMeetingInviteDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "induction_meeting_invited": ${inductionMeetingInvited},
  "induction_meeting_invite_date": "${inductionMeetingInviteDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective  Invite',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateCreditCheckProspectiveSelectedCall {
  static Future<ApiCallResponse> call({
    int? id = 5,
    bool? creditCheckPermissionGranted = true,
    String? creditCheckPermissionDate = '2023-11-21 22:59:06',
  }) async {
    final ffApiRequestBody = '''
{
  "credit_check_permission_granted": ${creditCheckPermissionGranted},
  "credit_check_permission_date": "${creditCheckPermissionDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Credit Check  Prospective Selected',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class UpdateOnboardingProspectiveSelectedCall {
  static Future<ApiCallResponse> call({
    int? id = 5,
    bool? documentsSubmitted = true,
    String? documentsSubmittedDate = '2023-11-21 22:59:06',
  }) async {
    final ffApiRequestBody = '''
{
  "documents_submitted": ${documentsSubmitted},
  "documents_submitted_date": "${documentsSubmittedDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Onboarding  Prospective Selected',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class CheckUserInOdooCall {
  static Future<ApiCallResponse> call({
    String? mobile = '27732952132',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Check User in Odoo',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/contact',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile': mobile,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? viewmodel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.view_model''',
      ));
  static int? viewresid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.view_res_id''',
      ));
  static dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.data.city''',
      );
  static List? country(dynamic response) => getJsonField(
        response,
        r'''$.data.country_id''',
        true,
      ) as List?;
  static dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.data.first_name''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.data.last_name''',
      );
  static dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.data.mobile''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  static dynamic passport(dynamic response) => getJsonField(
        response,
        r'''$.data.passport''',
      );
  static dynamic said(dynamic response) => getJsonField(
        response,
        r'''$.data.sa_id''',
      );
  static dynamic salesforcecode(dynamic response) => getJsonField(
        response,
        r'''$.data.sales_force_code''',
      );
  static List? state(dynamic response) => getJsonField(
        response,
        r'''$.data.state_id''',
        true,
      ) as List?;
  static dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.data.street''',
      );
  static dynamic suburb(dynamic response) => getJsonField(
        response,
        r'''$.data.suburb''',
      );
  static dynamic zip(dynamic response) => getJsonField(
        response,
        r'''$.data.zip''',
      );
}

class CheckUserInOdooCopyCall {
  static Future<ApiCallResponse> call({
    String? saId = '9610135928080',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Check User in Odoo Copy',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/consultant',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'sa_id': saId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? viewmodel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.view_model''',
      ));
  static int? viewresid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.view_res_id''',
      ));
  static dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.data.city''',
      );
  static List? country(dynamic response) => getJsonField(
        response,
        r'''$.data.country_id''',
        true,
      ) as List?;
  static dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.data.first_name''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.data.last_name''',
      );
  static dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.data.mobile''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  static dynamic passport(dynamic response) => getJsonField(
        response,
        r'''$.data.passport''',
      );
  static dynamic said(dynamic response) => getJsonField(
        response,
        r'''$.data.sa_id''',
      );
  static dynamic salesforcecode(dynamic response) => getJsonField(
        response,
        r'''$.data.sales_force_code''',
      );
  static List? state(dynamic response) => getJsonField(
        response,
        r'''$.data.state_id''',
        true,
      ) as List?;
  static dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.data.street''',
      );
  static dynamic suburb(dynamic response) => getJsonField(
        response,
        r'''$.data.suburb''',
      );
  static dynamic zip(dynamic response) => getJsonField(
        response,
        r'''$.data.zip''',
      );
}

class GetConsultantInfoInOdooCall {
  static Future<ApiCallResponse> call({
    int? viewResId = 698418,
    String? source = 'flutter',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Consultant Info in Odoo',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/consultant/${viewResId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'source': source,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.city''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.country_id[1]''',
      ));
  static int? distributorid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.distributor_id[0]''',
      ));
  static String? firstname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.first_name''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static String? lastname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.last_name''',
      ));
  static int? managerid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.manager_id[0]''',
      ));
  static String? mobile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.mobile''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static String? passport(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.passport''',
      ));
  static int? recruiterid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.recruiter_id[0]''',
      ));
  static String? recruitersource(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.recruiter_source''',
      ));
  static String? said(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.sa_id''',
      ));
  static String? salesforcecode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.sales_force_code''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.state_id[1]''',
      ));
  static String? street(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.street''',
      ));
  static String? suburb(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.suburb''',
      ));
  static dynamic zip(dynamic response) => getJsonField(
        response,
        r'''$.data.zip''',
      );
  static String? genealogy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.job_id[1]''',
      ));
}

class GetProspectiveInfoInOdooCopyCall {
  static Future<ApiCallResponse> call({
    int? viewResId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Prospective Info in Odoo Copy',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/prospective/${viewResId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'view_res_id': viewResId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOnboardeeProspectiveIDNumberCall {
  static Future<ApiCallResponse> call({
    String? rsaIdNumber = '9610135928080',
    int? id = 9,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Onboardee Prospective ID Number',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'rsa_id_number': rsaIdNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class GetOnboardeeProspectivePassportCall {
  static Future<ApiCallResponse> call({
    String? nonRsaPassportNumber = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Onboardee Prospective Passport',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/prospective/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'non_rsa_passport_number': nonRsaPassportNumber,
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class GetOnboardeeProspectiveCall {
  static Future<ApiCallResponse> call({
    int? id = 9,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Onboardee Prospective',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/prospective/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  static dynamic odooid(dynamic response) => getJsonField(
        response,
        r'''$.data.odoo_id''',
      );
}

class OdooConsumerviewCall {
  static Future<ApiCallResponse> call({
    int? id = 4,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Odoo Consumerview',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force//api/odoo/consumerview',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic errorMsg(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? username = '415791',
    String? mobile = '27634693179',
    String? role = 'Consultant',
    String? salesForceCode = '415791',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "mobile": "${mobile}",
  "role": "${role}",
  "sales_force_code": "${salesForceCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.active''',
      ));
  static String? mobile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.mobile''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static String? saleforcecode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.sales_force_code''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.username''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreateConsultantCall {
  static Future<ApiCallResponse> call({
    int? userId,
    int? odooId,
    String? firstName = '',
    String? lastName = '',
    String? salesForceCode = '',
    String? mobile = '',
    String? rsaIdNumber = '',
    String? nonRsaPassportNumber = '',
    String? nationality = '',
    String? resAddressStreet = '',
    String? resAddressSuburb = '',
    String? resAddressCity = '',
    String? resAddressZip = '',
    String? resAddressProvince = '',
    String? resAddressCountry = '',
    String? genealogy = '',
    String? recruiterSource = '',
    int? recruiterId,
    int? managerId,
    int? distributorId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": ${userId},
  "odoo_id": ${odooId},
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "sales_force_code": "${salesForceCode}",
  "mobile": "${mobile}",
  "rsa_id_number": "${rsaIdNumber}",
  "non_rsa_passport_number": "${nonRsaPassportNumber}",
  "nationality": "${nationality}",
  "res_address_street": "${resAddressStreet}",
  "res_address_suburb": "${resAddressSuburb}",
  "res_address_city": "${resAddressCity}",
  "res_address_zip": "${resAddressZip}",
  "res_address_province": "${resAddressProvince}",
  "res_address_country": "${resAddressCountry}",
  "genealogy": "${genealogy}",
  "recruiter_source": "${recruiterSource}",
  "recruiter_id": ${recruiterId},
  "manager_id": ${managerId},
  "distributor_id": ${distributorId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Consultant',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/app/consultant',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class UpdateProspectiveConsumerviewCall {
  static Future<ApiCallResponse> call({
    int? odooId = 225102,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective Consumerview',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/consumerview/prospective/${odooId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.data.first_name''',
      );
  static dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.data.last_name''',
      );
  static dynamic fullname(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  static dynamic unverifiedcity(dynamic response) => getJsonField(
        response,
        r'''$.data.unverified_city''',
      );
  static String? unverifiedcountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.unverified_country_id[1]''',
      ));
  static String? unverifiedstate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.unverified_state_id[1]''',
      ));
  static dynamic unverifiedstreet(dynamic response) => getJsonField(
        response,
        r'''$.data.unverified_street''',
      );
  static dynamic unverifiedsuburb(dynamic response) => getJsonField(
        response,
        r'''$.data.unverified_suburb''',
      );
  static dynamic unverifiedzip(dynamic response) => getJsonField(
        response,
        r'''$.data.unverified_zip''',
      );
}

class UpdateProspectiveCompuscanCall {
  static Future<ApiCallResponse> call({
    int? odooId = 225102,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Prospective Compuscan',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/odoo/compuscan/prospective/${odooId}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? checkscorecpa(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.compuscan_checkscore_cpa''',
      ));
  static String? checkscoredate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.compuscan_checkscore_date''',
      ));
  static String? checkscorenlr(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.compuscan_checkscore_nlr''',
      ));
  static String? creditscorecolor(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.credit_score''',
      ));
}

class MobileRecruitingCall {
  static Future<ApiCallResponse> call({
    String? from = '27732952132',
    String? prospectiveMobile = '27719307782',
  }) async {
    final ffApiRequestBody = '''
{
  "recruiter_mobile": "${from}",
  "prospective_mobile": "${prospectiveMobile}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mobile Recruiting',
      apiUrl:
          'https://europe-west1-cloud-functions-dev-bbb.cloudfunctions.net/sales_force/api/mobile_app/prospective',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic recruitres(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic jobid(dynamic response) => getJsonField(
        response,
        r'''$.data.job_id''',
      );
  static dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.data.mobile''',
      );
  static dynamic recruiterid(dynamic response) => getJsonField(
        response,
        r'''$.data.recruiter_id''',
      );
  static dynamic salesforce(dynamic response) => getJsonField(
        response,
        r'''$.data.sales_force''',
      );
  static dynamic stageid(dynamic response) => getJsonField(
        response,
        r'''$.data.stage_id''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic model(dynamic response) => getJsonField(
        response,
        r'''$.model''',
      );
  static dynamic errorMsg(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
