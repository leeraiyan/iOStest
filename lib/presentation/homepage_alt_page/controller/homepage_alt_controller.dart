import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/homepage_alt_page/models/homepage_alt_model.dart';

/// A controller class for the HomepageAltPage.
///
/// This class manages the state of the HomepageAltPage, including the
/// current homepageAltModelObj
class HomepageAltController extends GetxController {
  HomepageAltController(this.homepageAltModelObj);

  Rx<HomepageAltModel> homepageAltModelObj;
}
