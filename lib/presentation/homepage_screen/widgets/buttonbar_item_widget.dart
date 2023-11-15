import '../controller/homepage_controller.dart';
import '../models/buttonbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class ButtonbarItemWidget extends StatelessWidget {
  ButtonbarItemWidget(
    this.buttonbarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonbarItemModel buttonbarItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 371.v,
      width: 255.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: buttonbarItemModelObj.breath!.value,
              height: 371.v,
              width: 255.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 146.v),
              child: Obx(
                () => Text(
                  buttonbarItemModelObj.breath1!.value,
                  style: theme.textTheme.displayMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
