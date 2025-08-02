import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'uploadyour_chat_widget.dart' show UploadyourChatWidget;
import 'package:flutter/material.dart';

class UploadyourChatModel extends FlutterFlowModel<UploadyourChatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
