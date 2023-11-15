import '../controller/homepage_drawer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageDrawerScreen.
///
/// This class ensures that the HomepageDrawerController is created when the
/// HomepageDrawerScreen is first loaded.
class HomepageDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageDrawerController());
  }
}
