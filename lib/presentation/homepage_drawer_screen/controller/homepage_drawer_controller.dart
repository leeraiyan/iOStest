import 'package:lee_raiyan_bin_zulkifli_s_application7/core/app_export.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_drawer_screen/models/homepage_drawer_model.dart';

/// A controller class for the HomepageDrawerScreen.
///
/// This class manages the state of the HomepageDrawerScreen, including the
/// current homepageDrawerModelObj
class HomepageDrawerController extends GetxController {
  Rx<HomepageDrawerModel> homepageDrawerModelObj = HomepageDrawerModel().obs;
}
