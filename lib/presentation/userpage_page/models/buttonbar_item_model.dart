import '../../../core/app_export.dart';

/// This class is used in the [buttonbar_item_widget] screen.
class ButtonbarItemModel {
  ButtonbarItemModel({
    this.myCamp,
    this.myCamp1,
    this.id,
  }) {
    myCamp = myCamp ?? Rx(ImageConstant.imgPainting);
    myCamp1 = myCamp1 ?? Rx("My \nCamp");
    id = id ?? Rx("");
  }

  Rx<String>? myCamp;

  Rx<String>? myCamp1;

  Rx<String>? id;
}
