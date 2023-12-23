import '../stamp_details_screen/widgets/slider_item_widget.dart';
import '../stamp_details_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/stamp_details_controller.dart';
import 'models/slider_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:jiitak/widgets/app_bar/appbar_subtitle.dart';
import 'package:jiitak/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:jiitak/widgets/app_bar/custom_app_bar.dart';

class StampDetailsScreen extends GetWidget<StampDetailsController> {
  const StampDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final StampDetailsController controller = Get.put(StampDetailsController());
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Column(children: [
                      _buildNinetyRow(),
                      SizedBox(height: 24.v),
                      SizedBox(
                          height: 691.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 652.v,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(22.h)),
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 264.v),
                                    child: Text("lbl12".tr,
                                        style: CustomTextStyles
                                            .titleSmallPrimaryContainer))),
                            _buildSlider(),
                            _buildUserProfileList()
                          ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 80.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl9".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgMinusCircle,
              margin: EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildNinetyRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
                  child: Text("lbl_mer".tr,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 13.v, bottom: 5.v),
                  child: Text("lbl10".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer)),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child:
                      Text("lbl_30".tr, style: theme.textTheme.headlineMedium)),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, top: 11.v, bottom: 5.v),
                  child: Text("lbl11".tr,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer))
            ]));
  }

  /// Section Widget
  Widget _buildSlider() {
    return Padding(
        padding: EdgeInsets.only(top: 33.v),
        child: Obx(() => CarouselSlider.builder(
            options: CarouselOptions(
                height: 223.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  controller.sliderIndex.value = index;
                }),
            itemCount: controller
                .stampDetailsModelObj.value.sliderItemList.value.length,
            itemBuilder: (context, index, realIndex) {
              SliderItemModel model = controller
                  .stampDetailsModelObj.value.sliderItemList.value[index];
              return SliderItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, top: 302.v, right: 16.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0.v),
                      child: SizedBox(
                          width: 343.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.gray300)));
                },
                itemCount: controller.stampDetailsModelObj.value
                    .userprofilelistItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofilelistItemModel model = controller
                      .stampDetailsModelObj
                      .value
                      .userprofilelistItemList
                      .value[index];
                  return UserprofilelistItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
