import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/userpage_bottomsheet_screen/models/userpage_bottomsheet_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UserpageBottomsheetScreen.
///
/// This class manages the state of the UserpageBottomsheetScreen, including the
/// current userpageBottomsheetModelObj
class UserpageBottomsheetController extends GetxController {
  TextEditingController frameFiveController = TextEditingController();

  Rx<UserpageBottomsheetModel> userpageBottomsheetModelObj =
      UserpageBottomsheetModel().obs;

  @override
  void onClose() {
    super.onClose();
    frameFiveController.dispose();
  }
}
