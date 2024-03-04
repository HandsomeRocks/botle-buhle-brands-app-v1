import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'sign_up_bottom_sheet_embed_widget.dart'
    show SignUpBottomSheetEmbedWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpBottomSheetEmbedModel
    extends FlutterFlowModel<SignUpBottomSheetEmbedWidget> {
  ///  Local state fields for this component.

  List<String> listOfAccount = [];
  void addToListOfAccount(String item) => listOfAccount.add(item);
  void removeFromListOfAccount(String item) => listOfAccount.remove(item);
  void removeAtIndexFromListOfAccount(int index) =>
      listOfAccount.removeAt(index);
  void insertAtIndexInListOfAccount(int index, String item) =>
      listOfAccount.insert(index, item);
  void updateListOfAccountAtIndex(int index, Function(String) updateFn) =>
      listOfAccount[index] = updateFn(listOfAccount[index]);

  List<String> listOfCountries = [];
  void addToListOfCountries(String item) => listOfCountries.add(item);
  void removeFromListOfCountries(String item) => listOfCountries.remove(item);
  void removeAtIndexFromListOfCountries(int index) =>
      listOfCountries.removeAt(index);
  void insertAtIndexInListOfCountries(int index, String item) =>
      listOfCountries.insert(index, item);
  void updateListOfCountriesAtIndex(int index, Function(String) updateFn) =>
      listOfCountries[index] = updateFn(listOfCountries[index]);

  int? stepWidth;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
