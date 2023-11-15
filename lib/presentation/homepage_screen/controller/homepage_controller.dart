import 'package:lee_raiyan_bin_zulkifli_s_application7/core/app_export.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_screen/models/homepage_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomepageScreen.
///
/// This class manages the state of the HomepageScreen, including the
/// current homepageModelObj
class HomepageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
