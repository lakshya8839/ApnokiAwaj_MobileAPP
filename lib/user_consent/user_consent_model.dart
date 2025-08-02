import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_consent_widget.dart' show UserConsentWidget;
import 'package:flutter/material.dart';

class UserConsentModel extends FlutterFlowModel<UserConsentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
  }
}
