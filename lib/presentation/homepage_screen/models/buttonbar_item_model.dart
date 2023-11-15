import '../../../core/app_export.dart';

/// This class is used in the [buttonbar_item_widget] screen.
class ButtonbarItemModel {
  ButtonbarItemModel({
    this.breath,
    this.breath1,
    this.id,
  }) {
    breath = breath ?? Rx(ImageConstant.imgPainting);
    breath1 = breath1 ?? Rx("Breath");
    id = id ?? Rx("");
  }

  Rx<String>? breath;

  Rx<String>? breath1;

  Rx<String>? id;
}
