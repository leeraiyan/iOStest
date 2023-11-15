import '../homepage_screen/widgets/buttonbar_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/buttonbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/core/app_export.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends GetWidget<HomepageController> {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 800.h,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHomepageSearchBar(),
                      _buildHomePageBanner(),
                      Container(
                        width: 800.h,
                        padding: EdgeInsets.symmetric(vertical: 18.v),
                        decoration: AppDecoration.gradientGrayToGray,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildButtonBar(),
                            SizedBox(height: 33.v),
                            Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "lbl_add_friends_now".tr,
                                style:
                                    CustomTextStyles.displayMediumInterBlack900,
                              ),
                            ),
                            SizedBox(height: 45.v),
                            Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text(
                                "msg_be_our_campus_ambassador".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 61.v),
                            _buildFive(),
                            SizedBox(height: 19.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomepageSearchBar() {
    return Container(
      width: 800.h,
      padding: EdgeInsets.symmetric(
        horizontal: 45.h,
        vertical: 32.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgHomepagesearchbar,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomSearchView(
        width: 449.h,
        controller: controller.searchController,
        hintText: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildHomePageBanner() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        children: [
          Container(
            height: 273.v,
            width: 345.h,
            margin: EdgeInsets.only(top: 8.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGirlarmsup1,
                  height: 262.v,
                  width: 299.h,
                  alignment: Alignment.centerRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "lbl_daily_quote".tr,
                    style: CustomTextStyles.displaySmall_1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 397.h,
            margin: EdgeInsets.only(
              top: 89.v,
              bottom: 63.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_per_aspera_ad_astra".tr,
                    style: CustomTextStyles.displaySmallRegular,
                  ),
                  TextSpan(
                    text: "msg_through_adversity".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonBar() {
    return SizedBox(
      height: 372.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 10.h,
            );
          },
          itemCount:
              controller.homepageModelObj.value.buttonbarItemList.value.length,
          itemBuilder: (context, index) {
            ButtonbarItemModel model = controller
                .homepageModelObj.value.buttonbarItemList.value[index];
            return ButtonbarItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFive() {
    return SizedBox(
      height: 213.v,
      width: 800.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 44.h,
                right: 11.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.gradientWhiteAToDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_my_calendar".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 30.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAirplane,
                    height: 44.v,
                    width: 56.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 13.v),
                  Container(
                    width: 237.h,
                    margin: EdgeInsets.only(right: 468.h),
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Container(
                      width: 162.h,
                      margin: EdgeInsets.only(right: 27.h),
                      child: Text(
                        "lbl_none_scheduled".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 62.v,
                bottom: 87.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 167.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.fillGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMingcuteTriangleFill,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 18.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_home".tr,
                      style: CustomTextStyles.bodySmallBlack900_1,
                    ),
                  ),
                  Spacer(
                    flex: 32,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMingcuteTriangleFillGray500,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_camps".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(
                    flex: 29,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMingcuteTriangleFillGray500,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_community".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(
                    flex: 38,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMingcuteTriangleFillGray500,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_user".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
