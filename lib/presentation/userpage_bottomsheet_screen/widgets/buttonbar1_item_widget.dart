import '../controller/userpage_bottomsheet_controller.dart';
import '../models/buttonbar1_item_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttonbar1ItemWidget extends StatelessWidget {
  Buttonbar1ItemWidget(
    this.buttonbar1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Buttonbar1ItemModel buttonbar1ItemModelObj;

  var controller = Get.find<UserpageBottomsheetController>();

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
              imagePath: buttonbar1ItemModelObj.myCamp!.value,
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
              width: 55.h,
              margin: EdgeInsets.only(
                left: 41.h,
                top: 67.v,
              ),
              child: Obx(
                () => Text(
                  buttonbar1ItemModelObj.myCamp1!.value,
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
