import '../controller/homepage_alt_controller.dart';
import '../models/buttonbar2_item_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttonbar2ItemWidget extends StatelessWidget {
  Buttonbar2ItemWidget(
    this.buttonbar2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Buttonbar2ItemModel buttonbar2ItemModelObj;

  var controller = Get.find<HomepageAltController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 179.v,
      width: 123.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: buttonbar2ItemModelObj.breath!.value,
              height: 179.v,
              width: 123.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 70.v),
              child: Obx(
                () => Text(
                  buttonbar2ItemModelObj.breath1!.value,
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
