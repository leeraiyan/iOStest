import '../userpage_page/widgets/buttonbar_item_widget.dart';
import 'controller/userpage_controller.dart';
import 'models/buttonbar_item_model.dart';
import 'models/userpage_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/widgets/app_bar/appbar_leading_image.dart';
import 'package:across_europe/widgets/app_bar/appbar_title_image.dart';
import 'package:across_europe/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:across_europe/widgets/custom_bottom_bar.dart';

class UserpagePage extends StatelessWidget {
  UserpagePage({Key? key})
      : super(
          key: key,
        );

  UserpageController controller =
      Get.put(UserpageController(UserpageModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        // appBar: _buildAppBar(),
        appBar: AppBar(
              backgroundColor: Color(0xFFE4DEEC),
              title: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search', // Placeholder text
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgMail,
                    ),
                ],
              ),
              elevation: 0.0,
              automaticallyImplyLeading: false,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
            ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Devices and Accessories'),
                      onTap: () {
                        // Handle Devices and Accessories tap
                      },
                    ),
                    ListTile(
                      title: Text('Physical Fitness Assessment'),
                      onTap: () {
                        // Handle Physical Fitness Assessment tap
                      },
                    ),
                    ListTile(
                      title: Text('Language Proficiency Test'),
                      onTap: () {
                        // Handle Language Proficiency Test tap
                      },
                    ),
                    ListTile(
                      title: Text('Travel Abroad Advice'),
                      onTap: () {
                        // Handle Travel Abroad Advice tap
                      },
                    ),
                    ListTile(
                      title: Text('HANOU ID'),
                      onTap: () {
                        // Handle HANOU ID tap
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0), // Adjust the height as needed
              ListTile(
                title: Text('Help             Settings'),
                onTap: () {
                  // Handle Help and Settings tap
                },
              ),
            ],
          ),
        ),

      body: Stack(
          children: [
            SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildFrameTwo(),
              SizedBox(
                height: 600.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 40.v,
                        ),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL47,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 32.v),
                            _buildThirtyEight(),
                            Spacer(),
                            _buildButtonNavigateTo(context),
                          ],
                        ),
                      ),
                    ),
                    _buildFrameOne(),
                  ],
                ),
              ),
            ],
          ),
        ),
        )]),
      //   bottomNavigationBar: Padding(
      //     padding: EdgeInsets.only(left: 0.h),
      //     child: _buildBottomBar(),
      // ),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCiHamburgerMd,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgImage2,
            ),
            Container(
              height: 16.v,
              width: 130.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 7.v,
                bottom: 7.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgMail,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 16.v,
          width: 130.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 7.v,
            bottom: 7.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray300,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTwo() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 161.v,
        width: 383.h,
        margin: EdgeInsets.only(right: 9.h),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 156.v,
                width: 244.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGirlwave1,
                      height: 170.adaptSize,
                      width: 170.adaptSize,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBoyfootball1,
                      height: 170.adaptSize,
                      width: 170.adaptSize,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 139.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_football".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "lbl_summer_camps".tr,
                        style: CustomTextStyles.titleLargeBlack900_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyEight() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "lbl_hi_alice".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 3.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 75.adaptSize,
            width: 75.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 27.v,
            ),
            decoration: AppDecoration.fillGray40001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder37,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFootballwhite1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonNavigateTo(BuildContext context) {
  return GestureDetector(
    onTap: () {
      _showBottomSheet(context);
    },
    child: Container(
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_my_account".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 53.v),
          Container(
            margin: EdgeInsets.only(right: 282.h),
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder13,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_login_to_view".tr,
                  style: CustomTextStyles.labelLargeWhiteA700,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    ),
  );
}

  /// Section Widget
  Widget _buildFrameOne() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.fillWhiteA,
        child: SizedBox(
          height: 218.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 18.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 10.h,
                );
              },
              itemCount: controller
                  .userpageModelObj.value.buttonbarItemList.value.length,
              itemBuilder: (context, index) {
                ButtonbarItemModel model = controller
                    .userpageModelObj.value.buttonbarItemList.value[index];
                return ButtonbarItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}


void _showBottomSheet(BuildContext context) {
  showModalBottomSheet<dynamic>(
    context: context,
    isScrollControlled: true, // Set to true to enable scrolling
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent, // Set to transparent
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: 
            
            
            [
            Align(
              alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Close the bottom drawer
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTriangleempty,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),

              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        radius: BorderRadius.circular(37.h),
                        margin: EdgeInsets.only(
                          top: 12.v,
                          bottom: 6.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CustomImageView(
                            //   imagePath:
                            //       ImageConstant.imgTriangleempty,
                            //   height: 24.adaptSize,
                            //   width: 24.adaptSize,
                            //   alignment: Alignment.centerRight,
                            // ),
                            SizedBox(height: 18.v),
                            SizedBox(
                              width: 96.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_alice".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack900,
                                    ),
                                    TextSpan(
                                      text:
                                          "lbl_china_female".tr,
                                      style: CustomTextStyles
                                          .bodySmallBlack900,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildTwentySix(),
              SizedBox(height: 32.v),
              _buildBarSocial1(),
              SizedBox(height: 49.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 12.h,
                ),
                child: _buildFrameFive(),
              ),
            ],
          ),
        ),
      );
    },
  );
}





/// Section Widget
  Widget _buildTwentySix() {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 1.v,
            ),
            child: Text(
              "msg_individual_resume".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 194.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 21.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_0".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Spacer(
                      flex: 47,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Spacer(
                      flex: 52,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 229.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_posts".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_followers".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Text(
                      "lbl_following".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBarSocial1() {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildUserSocialButtons(
            userImage: ImageConstant.imgCamera1,
            userStatus: "lbl_post".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildUserSocialButtons(
              userImage: ImageConstant.imgCamera124x24,
              userStatus: "lbl_live".tr,
            ),
          ),
        ],
      ),
    );
  }


  /// Common widget
  Widget _buildUserSocialButtons({
    required String userImage,
    required String userStatus,
  }) {
    return Container(
      width: 185.h,
      padding: EdgeInsets.symmetric(
        horizontal: 66.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              userStatus,
              style: CustomTextStyles.titleSmallBluegray40002.copyWith(
                color: appTheme.blueGray40002,
              ),
            ),
          ),
        ],
      ),
    );
  }


/// Section Widget
/// Section Widget
Widget _buildFrameFive() {
  return Container(
    margin: EdgeInsets.only(
      left: 5.h,
      right: 5.h,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 33.h,
      vertical: 162.v,
    ),
    decoration: BoxDecoration(
      color: Color(0xC7C7C7), // Set the fill color to #C7C7C7
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Color(0xFF9787A7), // Set the stroke color to #9787A7
      ),
    ),
    child: Text(
      "msg_photos_and_videos".tr,
      style: theme.textTheme.headlineMedium,
    ),
  );
}


/// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageAltPage;
      case BottomBarEnum.Camps:
        return "/";
      case BottomBarEnum.Community:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.userpagePage;
      default:
        return "/";
    }
  }
