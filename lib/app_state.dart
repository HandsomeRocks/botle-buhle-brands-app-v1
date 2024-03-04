import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _inviteLocation1 =
          prefs.getString('ff_inviteLocation1') ?? _inviteLocation1;
    });
    _safeInit(() {
      _username = prefs.getString('ff_username') ?? _username;
    });
    _safeInit(() {
      _userid = prefs.getInt('ff_userid') ?? _userid;
    });
    _safeInit(() {
      _FirstName = prefs.getString('ff_FirstName') ?? _FirstName;
    });
    _safeInit(() {
      _LastName = prefs.getString('ff_LastName') ?? _LastName;
    });
    _safeInit(() {
      _Title = prefs.getString('ff_Title') ?? _Title;
    });
    _safeInit(() {
      _OdooID = prefs.getInt('ff_OdooID') ?? _OdooID;
    });
    _safeInit(() {
      _viewresid = prefs.getInt('ff_viewresid') ?? _viewresid;
    });
    _safeInit(() {
      _viewmodel = prefs.getString('ff_viewmodel') ?? _viewmodel;
    });
    _safeInit(() {
      _salesforcecode = prefs.getString('ff_salesforcecode') ?? _salesforcecode;
    });
    _safeInit(() {
      _mobile = prefs.getString('ff_mobile') ?? _mobile;
    });
    _safeInit(() {
      _odoorsaid = prefs.getString('ff_odoorsaid') ?? _odoorsaid;
    });
    _safeInit(() {
      _odoopassport = prefs.getString('ff_odoopassport') ?? _odoopassport;
    });
    _safeInit(() {
      _homeaddresscountry =
          prefs.getString('ff_homeaddresscountry') ?? _homeaddresscountry;
    });
    _safeInit(() {
      _homeaddresscity =
          prefs.getString('ff_homeaddresscity') ?? _homeaddresscity;
    });
    _safeInit(() {
      _homeaddressprovince =
          prefs.getString('ff_homeaddressprovince') ?? _homeaddressprovince;
    });
    _safeInit(() {
      _homeaddresszip = prefs.getString('ff_homeaddresszip') ?? _homeaddresszip;
    });
    _safeInit(() {
      _homeaddresssuburb =
          prefs.getString('ff_homeaddresssuburb') ?? _homeaddresssuburb;
    });
    _safeInit(() {
      _odoorecruitersource =
          prefs.getString('ff_odoorecruitersource') ?? _odoorecruitersource;
    });
    _safeInit(() {
      _odoorecruiterid = prefs.getInt('ff_odoorecruiterid') ?? _odoorecruiterid;
    });
    _safeInit(() {
      _odoomanagerid = prefs.getInt('ff_odoomanagerid') ?? _odoomanagerid;
    });
    _safeInit(() {
      _odoodistributorid =
          prefs.getInt('ff_odoodistributorid') ?? _odoodistributorid;
    });
    _safeInit(() {
      _isUserLoggedIn = prefs.getBool('ff_isUserLoggedIn') ?? _isUserLoggedIn;
    });
    _safeInit(() {
      _workaddresscountry =
          prefs.getString('ff_workaddresscountry') ?? _workaddresscountry;
    });
    _safeInit(() {
      _workaddresscity =
          prefs.getString('ff_workaddresscity') ?? _workaddresscity;
    });
    _safeInit(() {
      _workaddressprovince =
          prefs.getString('ff_workaddressprovince') ?? _workaddressprovince;
    });
    _safeInit(() {
      _workaddresszip = prefs.getString('ff_workaddresszip') ?? _workaddresszip;
    });
    _safeInit(() {
      _workaddresssuburb =
          prefs.getString('ff_workaddresssuburb') ?? _workaddresssuburb;
    });
    _safeInit(() {
      _workaddressstreet =
          prefs.getString('ff_workaddressstreet') ?? _workaddressstreet;
    });
    _safeInit(() {
      _workaddressknownas =
          prefs.getString('ff_workaddressknownas') ?? _workaddressknownas;
    });
    _safeInit(() {
      _HomeWorkAddresSame =
          prefs.getBool('ff_HomeWorkAddresSame') ?? _HomeWorkAddresSame;
    });
    _safeInit(() {
      _inviteLocation = prefs.getString('ff_inviteLocation') ?? _inviteLocation;
    });
    _safeInit(() {
      _userrole = prefs.getString('ff_userrole') ?? _userrole;
    });
    _safeInit(() {
      _homeaddressstreet =
          prefs.getString('ff_homeaddressstreet') ?? _homeaddressstreet;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _inviteLocation1 = '';
  String get inviteLocation1 => _inviteLocation1;
  set inviteLocation1(String _value) {
    _inviteLocation1 = _value;
    prefs.setString('ff_inviteLocation1', _value);
  }

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    prefs.setString('ff_username', _value);
  }

  int _userid = 0;
  int get userid => _userid;
  set userid(int _value) {
    _userid = _value;
    prefs.setInt('ff_userid', _value);
  }

  String _FirstName = '';
  String get FirstName => _FirstName;
  set FirstName(String _value) {
    _FirstName = _value;
    prefs.setString('ff_FirstName', _value);
  }

  String _LastName = '';
  String get LastName => _LastName;
  set LastName(String _value) {
    _LastName = _value;
    prefs.setString('ff_LastName', _value);
  }

  String _Title = '';
  String get Title => _Title;
  set Title(String _value) {
    _Title = _value;
    prefs.setString('ff_Title', _value);
  }

  int _OdooID = 0;
  int get OdooID => _OdooID;
  set OdooID(int _value) {
    _OdooID = _value;
    prefs.setInt('ff_OdooID', _value);
  }

  int _viewresid = 0;
  int get viewresid => _viewresid;
  set viewresid(int _value) {
    _viewresid = _value;
    prefs.setInt('ff_viewresid', _value);
  }

  String _viewmodel = '';
  String get viewmodel => _viewmodel;
  set viewmodel(String _value) {
    _viewmodel = _value;
    prefs.setString('ff_viewmodel', _value);
  }

  String _salesforcecode = '';
  String get salesforcecode => _salesforcecode;
  set salesforcecode(String _value) {
    _salesforcecode = _value;
    prefs.setString('ff_salesforcecode', _value);
  }

  String _mobile = '';
  String get mobile => _mobile;
  set mobile(String _value) {
    _mobile = _value;
    prefs.setString('ff_mobile', _value);
  }

  String _odoorsaid = '';
  String get odoorsaid => _odoorsaid;
  set odoorsaid(String _value) {
    _odoorsaid = _value;
    prefs.setString('ff_odoorsaid', _value);
  }

  String _odoopassport = '';
  String get odoopassport => _odoopassport;
  set odoopassport(String _value) {
    _odoopassport = _value;
    prefs.setString('ff_odoopassport', _value);
  }

  String _homeaddresscountry = '';
  String get homeaddresscountry => _homeaddresscountry;
  set homeaddresscountry(String _value) {
    _homeaddresscountry = _value;
    prefs.setString('ff_homeaddresscountry', _value);
  }

  String _homeaddresscity = '';
  String get homeaddresscity => _homeaddresscity;
  set homeaddresscity(String _value) {
    _homeaddresscity = _value;
    prefs.setString('ff_homeaddresscity', _value);
  }

  String _homeaddressprovince = '';
  String get homeaddressprovince => _homeaddressprovince;
  set homeaddressprovince(String _value) {
    _homeaddressprovince = _value;
    prefs.setString('ff_homeaddressprovince', _value);
  }

  String _homeaddresszip = '';
  String get homeaddresszip => _homeaddresszip;
  set homeaddresszip(String _value) {
    _homeaddresszip = _value;
    prefs.setString('ff_homeaddresszip', _value);
  }

  String _homeaddresssuburb = '';
  String get homeaddresssuburb => _homeaddresssuburb;
  set homeaddresssuburb(String _value) {
    _homeaddresssuburb = _value;
    prefs.setString('ff_homeaddresssuburb', _value);
  }

  String _odoorecruitersource = '';
  String get odoorecruitersource => _odoorecruitersource;
  set odoorecruitersource(String _value) {
    _odoorecruitersource = _value;
    prefs.setString('ff_odoorecruitersource', _value);
  }

  int _odoorecruiterid = 0;
  int get odoorecruiterid => _odoorecruiterid;
  set odoorecruiterid(int _value) {
    _odoorecruiterid = _value;
    prefs.setInt('ff_odoorecruiterid', _value);
  }

  int _odoomanagerid = 0;
  int get odoomanagerid => _odoomanagerid;
  set odoomanagerid(int _value) {
    _odoomanagerid = _value;
    prefs.setInt('ff_odoomanagerid', _value);
  }

  int _odoodistributorid = 0;
  int get odoodistributorid => _odoodistributorid;
  set odoodistributorid(int _value) {
    _odoodistributorid = _value;
    prefs.setInt('ff_odoodistributorid', _value);
  }

  bool _showOnboardbtn = false;
  bool get showOnboardbtn => _showOnboardbtn;
  set showOnboardbtn(bool _value) {
    _showOnboardbtn = _value;
  }

  String _profileimg = '';
  String get profileimg => _profileimg;
  set profileimg(String _value) {
    _profileimg = _value;
  }

  String _said = '';
  String get said => _said;
  set said(String _value) {
    _said = _value;
  }

  bool _isUserLoggedIn = false;
  bool get isUserLoggedIn => _isUserLoggedIn;
  set isUserLoggedIn(bool _value) {
    _isUserLoggedIn = _value;
    prefs.setBool('ff_isUserLoggedIn', _value);
  }

  String _workaddresscountry = '';
  String get workaddresscountry => _workaddresscountry;
  set workaddresscountry(String _value) {
    _workaddresscountry = _value;
    prefs.setString('ff_workaddresscountry', _value);
  }

  String _workaddresscity = '';
  String get workaddresscity => _workaddresscity;
  set workaddresscity(String _value) {
    _workaddresscity = _value;
    prefs.setString('ff_workaddresscity', _value);
  }

  String _workaddressprovince = '';
  String get workaddressprovince => _workaddressprovince;
  set workaddressprovince(String _value) {
    _workaddressprovince = _value;
    prefs.setString('ff_workaddressprovince', _value);
  }

  String _workaddresszip = '';
  String get workaddresszip => _workaddresszip;
  set workaddresszip(String _value) {
    _workaddresszip = _value;
    prefs.setString('ff_workaddresszip', _value);
  }

  String _workaddresssuburb = '';
  String get workaddresssuburb => _workaddresssuburb;
  set workaddresssuburb(String _value) {
    _workaddresssuburb = _value;
    prefs.setString('ff_workaddresssuburb', _value);
  }

  String _workaddressstreet = '';
  String get workaddressstreet => _workaddressstreet;
  set workaddressstreet(String _value) {
    _workaddressstreet = _value;
    prefs.setString('ff_workaddressstreet', _value);
  }

  String _workaddressknownas = '';
  String get workaddressknownas => _workaddressknownas;
  set workaddressknownas(String _value) {
    _workaddressknownas = _value;
    prefs.setString('ff_workaddressknownas', _value);
  }

  bool _HomeWorkAddresSame = false;
  bool get HomeWorkAddresSame => _HomeWorkAddresSame;
  set HomeWorkAddresSame(bool _value) {
    _HomeWorkAddresSame = _value;
    prefs.setBool('ff_HomeWorkAddresSame', _value);
  }

  String _inviteLocation = '';
  String get inviteLocation => _inviteLocation;
  set inviteLocation(String _value) {
    _inviteLocation = _value;
    prefs.setString('ff_inviteLocation', _value);
  }

  String _userrole = '';
  String get userrole => _userrole;
  set userrole(String _value) {
    _userrole = _value;
    prefs.setString('ff_userrole', _value);
  }

  String _countryDialCode = '+27';
  String get countryDialCode => _countryDialCode;
  set countryDialCode(String _value) {
    _countryDialCode = _value;
  }

  String _location = '';
  String get location => _location;
  set location(String _value) {
    _location = _value;
  }

  String _homeaddressstreet = '';
  String get homeaddressstreet => _homeaddressstreet;
  set homeaddressstreet(String _value) {
    _homeaddressstreet = _value;
    prefs.setString('ff_homeaddressstreet', _value);
  }

  bool _isFirstTime = false;
  bool get isFirstTime => _isFirstTime;
  set isFirstTime(bool _value) {
    _isFirstTime = _value;
  }

  bool _isSignUpView = false;
  bool get isSignUpView => _isSignUpView;
  set isSignUpView(bool _value) {
    _isSignUpView = _value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
