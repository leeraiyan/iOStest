import '../controller/userpage_bottomsheet_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UserpageBottomsheetScreen.
///
/// This class ensures that the UserpageBottomsheetController is created when the
/// UserpageBottomsheetScreen is first loaded.
class UserpageBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserpageBottomsheetController());
  }
}
