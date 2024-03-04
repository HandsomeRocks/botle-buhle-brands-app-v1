// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

class CountryListView extends StatefulWidget {
  const CountryListView({
    Key? key,
    this.width,
    this.height,
    required this.callBackAction,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() callBackAction;

  @override
  _CountryListViewState createState() => _CountryListViewState();
}

class _CountryListViewState extends State<CountryListView> {
  final Map<String, Map<String, String>> countryInfoJson = {
    "Algeria": {"dial_code": "+213", "code": "DZ"},
    "Angola": {"dial_code": "+244", "code": "AO"},
    "Benin": {"dial_code": "+229", "code": "BJ"},
    "Botswana": {"dial_code": "+267", "code": "BW"},
    "Burkina Faso": {"dial_code": "+226", "code": "BF"},
    "Burundi": {"dial_code": "+257", "code": "BI"},
    "Cabo Verde": {"dial_code": "+238", "code": "CV"},
    "Cameroon": {"dial_code": "+237", "code": "CM"},
    "Central African Republic": {"dial_code": "+236", "code": "CF"},
    "Chad": {"dial_code": "+235", "code": "TD"},
    "Comoros": {"dial_code": "+269", "code": "KM"},
    "Congo": {"dial_code": "+242", "code": "CG"},
    "Djibouti": {"dial_code": "+253", "code": "DJ"},
    "Egypt": {"dial_code": "+20", "code": "EG"},
    "Equatorial Guinea": {"dial_code": "+240", "code": "GQ"},
    "Eritrea": {"dial_code": "+291", "code": "ER"},
    "Eswatini": {"dial_code": "+268", "code": "SZ"},
    "Ethiopia": {"dial_code": "+251", "code": "ET"},
    "Gabon": {"dial_code": "+241", "code": "GA"},
    "Gambia": {"dial_code": "+220", "code": "GM"},
    "Ghana": {"dial_code": "+233", "code": "GH"},
    "Guinea": {"dial_code": "+224", "code": "GN"},
    "Guinea-Bissau": {"dial_code": "+245", "code": "GW"},
    "Ivory Coast": {"dial_code": "+225", "code": "CI"},
    "Kenya": {"dial_code": "+254", "code": "KE"},
    "Lesotho": {"dial_code": "+266", "code": "LS"},
    "Liberia": {"dial_code": "+231", "code": "LR"},
    "Libya": {"dial_code": "+218", "code": "LY"},
    "Madagascar": {"dial_code": "+261", "code": "MG"},
    "Malawi": {"dial_code": "+265", "code": "MW"},
    "Mali": {"dial_code": "+223", "code": "ML"},
    "Mauritania": {"dial_code": "+222", "code": "MR"},
    "Mauritius": {"dial_code": "+230", "code": "MU"},
    "Morocco": {"dial_code": "+212", "code": "MA"},
    "Mozambique": {"dial_code": "+258", "code": "MZ"},
    "Namibia": {"dial_code": "+264", "code": "NA"},
    "Niger": {"dial_code": "+227", "code": "NE"},
    "Nigeria": {"dial_code": "+234", "code": "NG"},
    "Rwanda": {"dial_code": "+250", "code": "RW"},
    "Sao Tome and Principe": {"dial_code": "+239", "code": "ST"},
    "Senegal": {"dial_code": "+221", "code": "SN"},
    "Seychelles": {"dial_code": "+248", "code": "SC"},
    "Sierra Leone": {"dial_code": "+232", "code": "SL"},
    "Somalia": {"dial_code": "+252", "code": "SO"},
    "South Africa": {"dial_code": "+27", "code": "ZA"},
    "South Sudan": {"dial_code": "+211", "code": "SS"},
    "Sudan": {"dial_code": "+249", "code": "SD"},
    "Tanzania": {"dial_code": "+255", "code": "TZ"},
    "Togo": {"dial_code": "+228", "code": "TG"},
    "Tunisia": {"dial_code": "+216", "code": "TN"},
    "Uganda": {"dial_code": "+256", "code": "UG"},
    "Zambia": {"dial_code": "+260", "code": "ZM"},
    "Zimbabwe": {"dial_code": "+263", "code": "ZW"}
  };

  late List<MapEntry<String, Map<String, String>>> filteredCountries;

  @override
  void initState() {
    super.initState();
    filteredCountries = countryInfoJson.entries.toList();
  }

  void filterCountries(String query) {
    setState(() {
      filteredCountries = countryInfoJson.entries
          .where((entry) =>
              entry.key.toLowerCase().contains(query.toLowerCase()) ||
              entry.value['dial_code']!.contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: filterCountries,
          decoration: InputDecoration(
            labelText: 'Search by Country or Dial Code',
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Roboto',
                  color: Color(0xFF57636C),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelMediumFamily),
                ),
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Roboto',
                  color: Color(0xFF57636C),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelMediumFamily),
                ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xB57D283B),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Color(0xB57D283B),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredCountries.length,
            itemBuilder: (context, index) {
              final country = filteredCountries[index];
              final countryName = country.key;
              final dialCode = country.value['dial_code'];
              final countryCode = country.value["code"];
              final flagUrl = countryFlagByDialCode(countryCode);

              return ListTile(
                leading: flagUrl != null
                    ? Image.network(flagUrl, width: 30, height: 30)
                    : Container(), // Replace with a default flag or error handling
                title: Text(
                  countryName,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 16,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Roboto'),
                      ),
                ),
                subtitle: Text(
                  dialCode ?? '',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Roboto'),
                      ),
                ),
                onTap: () {
                  // Handle item tap
                  // Get the selected country

                  final selectedItem = countryInfoJson[countryName];
                  final selectedDialCode = selectedItem?['dial_code'];
                  //widget.callBackAction.call();
                  FFAppState().countryDialCode = selectedDialCode!;
                  //print('Tapped on $countryName');
                  // Close the component
                  Navigator.of(context).pop();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

String? countryFlagByDialCode(String? countryCode) {
  if (countryCode == null) {
    return null;
  }

  final countryCodeInLowerCase = countryCode.replaceAll('+', '').toLowerCase();
  return 'https://flagcdn.com/h80/$countryCodeInLowerCase.png';
}
