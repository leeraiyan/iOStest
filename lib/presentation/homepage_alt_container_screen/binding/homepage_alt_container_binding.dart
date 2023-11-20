import '../controller/homepage_alt_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageAltContainerScreen.
///
/// This class ensures that the HomepageAltContainerController is created when the
/// HomepageAltContainerScreen is first loaded.
class HomepageAltContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageAltContainerController());
  }
}
