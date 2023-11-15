import '../../../core/app_export.dart';
import 'buttonbar_item_model.dart';

/// This class defines the variables used in the [homepage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {
  Rx<List<ButtonbarItemModel>> buttonbarItemList = Rx([
    ButtonbarItemModel(
        breath: ImageConstant.imgPainting.obs, breath1: "Breath".obs),
    ButtonbarItemModel(
        breath: ImageConstant.imgPainting371x255.obs, breath1: "Exercise".obs),
    ButtonbarItemModel(
        breath: ImageConstant.imgPainting372x255.obs, breath1: "Live".obs)
  ]);
}
