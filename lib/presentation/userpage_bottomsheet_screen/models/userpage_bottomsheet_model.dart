import '../../../core/app_export.dart';
import 'buttonbar1_item_model.dart';

/// This class defines the variables used in the [userpage_bottomsheet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserpageBottomsheetModel {
  Rx<List<Buttonbar1ItemModel>> buttonbar1ItemList = Rx([
    Buttonbar1ItemModel(
        myCamp: ImageConstant.imgPainting.obs, myCamp1: "My \nCamp".obs),
    Buttonbar1ItemModel(
        myCamp: ImageConstant.imgPainting218x150.obs,
        myCamp1: "My \nCourse".obs),
    Buttonbar1ItemModel(
        myCamp: ImageConstant.imgPainting1.obs, myCamp1: "My \nSchool".obs)
  ]);
}
