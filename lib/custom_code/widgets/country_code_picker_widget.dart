// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:country_code_picker/country_code_picker.dart';

class CountryCodePickerWidget extends StatefulWidget {
  const CountryCodePickerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CountryCodePickerWidgetState createState() =>
      _CountryCodePickerWidgetState();
}

class _CountryCodePickerWidgetState extends State<CountryCodePickerWidget> {
  String selectedCountryCode = 'ZA';

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  String _getFlagImageUrl(String countryCode) {
    // Construct the image URL based on the selected country code
    if (countryCode != null) {
      final countryCodeInLowerCase = countryCode.toLowerCase();
      return 'https://flagcdn.com/h80/$countryCodeInLowerCase.png';
    }
    return ''; // Return a default image or an empty string if countryCode is null
  }
}
