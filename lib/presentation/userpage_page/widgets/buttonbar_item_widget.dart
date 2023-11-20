import '../controller/userpage_controller.dart';
import '../models/buttonbar_item_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonbarItemWidget extends StatelessWidget {
  ButtonbarItemWidget(
    this.buttonbarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonbarItemModel buttonbarItemModelObj;

  var controller = Get.find<UserpageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 218.v,
      width: 150.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: buttonbarItemModelObj.myCamp!.value,
              height: 218.v,
              width: 150.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100.h,
              margin: EdgeInsets.only(
                left: 41.h,
                top: 67.v,
              ),
              child: Obx(
                () => Text(
                  buttonbarItemModelObj.myCamp1!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
