import '../../../core/app_export.dart';

/// This class is used in the [buttonbar2_item_widget] screen.
class Buttonbar2ItemModel {
  Buttonbar2ItemModel({
    this.breath,
    this.breath1,
    this.id,
  }) {
    breath = breath ?? Rx(ImageConstant.imgPainting179x123);
    breath1 = breath1 ?? Rx("Breath");
    id = id ?? Rx("");
  }

  Rx<String>? breath;

  Rx<String>? breath1;

  Rx<String>? id;
}
