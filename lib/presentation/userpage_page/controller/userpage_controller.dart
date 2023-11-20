import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/userpage_page/models/userpage_model.dart';

/// A controller class for the UserpagePage.
///
/// This class manages the state of the UserpagePage, including the
/// current userpageModelObj
class UserpageController extends GetxController {
  UserpageController(this.userpageModelObj);

  Rx<UserpageModel> userpageModelObj;
}
