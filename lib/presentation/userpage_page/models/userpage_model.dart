import '../../../core/app_export.dart';
import 'buttonbar_item_model.dart';

/// This class defines the variables used in the [userpage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UserpageModel {
  Rx<List<ButtonbarItemModel>> buttonbarItemList = Rx([
    ButtonbarItemModel(
        myCamp: ImageConstant.imgPainting.obs, myCamp1: "My \nCamp".obs),
    ButtonbarItemModel(
        myCamp: ImageConstant.imgPainting218x150.obs,
        myCamp1: "My \nCourse".obs),
    ButtonbarItemModel(
        myCamp: ImageConstant.imgPainting1.obs, myCamp1: "My \nSchool".obs)
  ]);
}
