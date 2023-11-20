import '../../../core/app_export.dart';
import 'buttonbar2_item_model.dart';

/// This class defines the variables used in the [homepage_alt_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageAltModel {
  Rx<List<Buttonbar2ItemModel>> buttonbar2ItemList = Rx([
    Buttonbar2ItemModel(
        breath: ImageConstant.imgPainting179x123.obs, breath1: "Breath".obs),
    Buttonbar2ItemModel(
        breath: ImageConstant.imgPainting2.obs, breath1: "Exercise".obs),
    Buttonbar2ItemModel(
        breath: ImageConstant.imgPainting3.obs, breath1: "Live".obs)
  ]);
}
