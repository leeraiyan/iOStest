import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/homepage_alt_container_screen/models/homepage_alt_container_model.dart';

/// A controller class for the HomepageAltContainerScreen.
///
/// This class manages the state of the HomepageAltContainerScreen, including the
/// current homepageAltContainerModelObj
class HomepageAltContainerController extends GetxController {
  Rx<HomepageAltContainerModel> homepageAltContainerModelObj =
      HomepageAltContainerModel().obs;
}
