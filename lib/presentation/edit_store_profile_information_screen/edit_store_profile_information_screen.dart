import '../edit_store_profile_information_screen/widgets/foodphotoadlist_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/frame1_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/frame_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/input_item_widget.dart';
import 'controller/edit_store_profile_information_controller.dart';
import 'dart:async';
import 'models/foodphotoadlist_item_model.dart';
import 'models/frame1_item_model.dart';
import 'models/frame_item_model.dart';
import 'models/input_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:jiitak/widgets/app_bar/appbar_title.dart';
import 'package:jiitak/widgets/app_bar/custom_app_bar.dart';
import 'package:jiitak/widgets/custom_checkbox_button.dart';
import 'package:jiitak/widgets/custom_drop_down.dart';
import 'package:jiitak/widgets/custom_elevated_button.dart';
import 'package:jiitak/widgets/custom_outlined_button.dart';
import 'package:jiitak/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditStoreProfileInformationScreen
    extends GetWidget<EditStoreProfileInformationController> {
  EditStoreProfileInformationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 19.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildStoreNameColumn(),
                        SizedBox(height: 15.v),
                        _buildRepresentativeNameColumn(),
                        SizedBox(height: 15.v),
                        _buildStorePhoneNumberColumn(),
                        SizedBox(height: 15.v),
                        _buildStoreAddressColumn(),
                        SizedBox(height: 16.v),
                        _buildSnazzyImageOne(),
                        SizedBox(height: 15.v),
                        _buildStoreExterioColumn(),
                        SizedBox(height: 14.v),
                        _buildStoreInterioColumn(),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl28".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                TextSpan(
                                  text: "lbl17".tr,
                                  style: CustomTextStyles.titleSmallOrange900_1,
                                ),
                                TextSpan(
                                  text: "msg_1_32".tr,
                                  style:
                                      CustomTextStyles.bodyMediumErrorContainer,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildFoodPhotoAdList(),
                        SizedBox(height: 15.v),
                        _buildMenuPhotoAdColumn(),
                        SizedBox(height: 15.v),
                        _buildBusinessHourColumn(),
                        SizedBox(height: 15.v),
                        _buildLunchHourColumn(),
                        SizedBox(height: 23.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 86.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl36".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                            TextSpan(
                                              text: "lbl17".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOrange900_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                      width: 109.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 39.h,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgThumbsUp,
                                                  height: 20.v,
                                                  width: 17.h,
                                                  margin: EdgeInsets.only(
                                                    top: 1.v,
                                                    bottom: 2.v,
                                                  ),
                                                ),
                                                Text(
                                                  "lbl37".tr,
                                                  style:
                                                      theme.textTheme.bodyLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                          _buildRegularClosingDayRow(
                                            rfriText: "lbl38".tr,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                      width: 110.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          _buildRegularClosingDayRow(
                                            rfriText: "lbl39".tr,
                                          ),
                                          _buildHolidayRow(
                                            holidayText: "lbl40".tr,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 25.h,
                                    top: 27.v,
                                  ),
                                  child: Column(
                                    children: [
                                      _buildRegularClosingDayRow(
                                        rfriText: "lbl41".tr,
                                      ),
                                      SizedBox(height: 7.v),
                                      SizedBox(
                                        width: 40.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseDeepOrange400,
                                              height: 19.v,
                                              width: 18.h,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 2.v),
                                            ),
                                            Text(
                                              "lbl42".tr,
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 26.h,
                                    top: 27.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 3.h),
                                        child: _buildRegularClosingDayRow(
                                          rfriText: "lbl43".tr,
                                        ),
                                      ),
                                      SizedBox(height: 7.v),
                                      _buildHolidayRow(
                                        holidayText: "lbl44".tr,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildCuisineCategoryColumn(),
                        SizedBox(height: 15.v),
                        _buildBudgetColumn(),
                        SizedBox(height: 15.v),
                        _buildCatchCopyColumn(),
                        SizedBox(height: 15.v),
                        _buildNumberOfSeatsColumn(),
                        SizedBox(height: 23.v),
                        _buildSmokingSeatColumn(),
                        SizedBox(height: 14.v),
                        _buildParkingColumn(),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl61".tr,
                                  style: CustomTextStyles.bodyMediumGray800,
                                ),
                                TextSpan(
                                  text: "lbl17".tr,
                                  style: CustomTextStyles.bodyMediumOrange900,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              _buildVisitPresentCheckBox(),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: _buildRegularClosingDayRow(
                                  rfriText: "lbl57".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 43.h),
                            child: Row(
                              children: [
                                _buildFifteen(
                                  image: ImageConstant.img20211107,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: _buildFifteen(
                                    image: ImageConstant.img2021110791x91,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: _buildFifteen(
                                    image: ImageConstant.img202111071,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildEditStoreProfileColumn(),
                        SizedBox(height: 40.v),
                        _buildSaveButton(),
                      ],
                    ),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftGray600,
        onTap: (){
          Get.back();
          },
        margin: EdgeInsets.only(
          left: 19.h,
          top: 13.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl14".tr,
      ),
      actions: [
        Container(
          height: 28.v,
          width: 31.440002.h,
          margin: EdgeInsets.fromLTRB(21.h, 15.v, 21.h, 10.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationsNone,
                height: 28.adaptSize,
                width: 28.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(right: 3.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    bottom: 12.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Text(
                    "lbl_99".tr,
                    style: CustomTextStyles.notoSansJPOnPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildStoreNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl16".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController,
          hintText: "lbl_mer".tr,
          hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRepresentativeNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl19".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController1,
          hintText: "lbl20".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStorePhoneNumberColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl22".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController2,
          hintText: "lbl_123_4567_8910".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoreAddressColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl24".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController3,
          hintText: "msg_791_13".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSnazzyImageOne() {
    return SizedBox(
      height: 219.v,
      width: 335.h,
      child: Image.asset(
        'assets/images/img_snazzy_image_1.png',
        height: 100.v, // Set the height of the image
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreExterioColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl25".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
              TextSpan(
                text: "lbl_33".tr,
                style: CustomTextStyles.bodyMediumErrorContainer,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        SizedBox(
          height: 91.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(right: 46.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 8.h,
                );
              },
              itemCount: controller.editStoreProfileInformationModelObj.value
                  .inputItemList.value.length,
              itemBuilder: (context, index) {
                InputItemModel model = controller
                    .editStoreProfileInformationModelObj
                    .value
                    .inputItemList
                    .value[index];
                return InputItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoreInterioColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl27".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
              TextSpan(
                text: "msg_1_32".tr,
                style: CustomTextStyles.bodyMediumErrorContainer,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        SizedBox(
          height: 91.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(right: 46.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 8.h,
                );
              },
              itemCount: controller.editStoreProfileInformationModelObj.value
                  .frameItemList.value.length,
              itemBuilder: (context, index) {
                FrameItemModel model = controller
                    .editStoreProfileInformationModelObj
                    .value
                    .frameItemList
                    .value[index];
                return FrameItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFoodPhotoAdList() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 91.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(right: 46.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 7.h,
              );
            },
            itemCount: controller.editStoreProfileInformationModelObj.value
                .foodphotoadlistItemList.value.length,
            itemBuilder: (context, index) {
              FoodphotoadlistItemModel model = controller
                  .editStoreProfileInformationModelObj
                  .value
                  .foodphotoadlistItemList
                  .value[index];
              return FoodphotoadlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuPhotoAdColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl29".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
              TextSpan(
                text: "msg_1_32".tr,
                style: CustomTextStyles.bodyMediumErrorContainer,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        SizedBox(
          height: 96.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(right: 44.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount: controller.editStoreProfileInformationModelObj.value
                  .frame1ItemList.value.length,
              itemBuilder: (context, index) {
                Frame1ItemModel model = controller
                    .editStoreProfileInformationModelObj
                    .value
                    .frame1ItemList
                    .value[index];
                return Frame1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBusinessHourColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl31".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(right: 55.h),
          child: Row(
            children: [
              CustomDropDown(
                width: 124.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray400,
                    height: 26.adaptSize,
                    width: 7.adaptSize,
                  ),
                ),
                hintText: "lbl_10_00".tr,
                items: controller.editStoreProfileInformationModelObj.value
                    .dropdownItemList!.value,
                onChanged: (value) {
                  controller.onSelected(value);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 7.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "lbl32".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Container(
                width: 124.h,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_20_00".tr,
                        style: CustomTextStyles.bodyLargePrimaryContainer,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkGray400,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLunchHourColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl34".tr,
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text: "lbl17".tr,
                  style: CustomTextStyles.titleSmallOrange900_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(right: 55.h),
          child: Row(
            children: [
              CustomDropDown(
                width: 124.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray400,
                    height: 26.adaptSize,
                    width: 7.adaptSize,
                  ),
                ),
                hintText: "lbl_11_00".tr,
                items: controller.editStoreProfileInformationModelObj.value
                    .dropdownItemList1!.value,
                onChanged: (value) {
                  controller.onSelected1(value);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 7.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "lbl32".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              CustomOutlinedButton(
                width: 124.h,
                text: "lbl_15_00".tr,
                margin: EdgeInsets.only(left: 8.h),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray400,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCuisineCategoryColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl46".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        CustomDropDown(
          width: 194.h,
          icon: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 6.v,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkGray400,
              height: 26.adaptSize,
              width: 26.adaptSize,
            ),
          ),
          hintText: "lbl47".tr,
          items: controller.editStoreProfileInformationModelObj.value
              .dropdownItemList2!.value,
          onChanged: (value) {
            controller.onSelected2(value);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBudgetColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl49".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(right: 55.h),
          child: Row(
            children: [
              CustomTextFormField(
                width: 124.h,
                controller: controller.priceController,
                hintText: "lbl_1_0002".tr,
                hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 7.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "lbl32".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  width: 124.h,
                  controller: controller.priceController1,
                  hintText: "lbl_2_0002".tr,
                  hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCatchCopyColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl51".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController4,
          hintText: "msg3".tr,
          hintStyle: CustomTextStyles.bodyMedium15,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNumberOfSeatsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl53".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController5,
          hintText: "lbl_402".tr,
          hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSmokingSeatColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl55".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 6.v),
        Row(
          children: [
            Obx(
              () => CustomCheckboxButton(
                text: "lbl56".tr,
                value: controller.tf.value,
                onChange: (value) {
                  controller.tf.value = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.h),
              child: Obx(
                () => CustomCheckboxButton(
                  text: "lbl57".tr,
                  value: controller.tf1.value,
                  onChange: (value) {
                    controller.tf1.value = value;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildParkingColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl59".tr,
                style: CustomTextStyles.bodyMediumGray800,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.bodyMediumOrange900,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 6.v),
        Row(
          children: [
            Obx(
              () => CustomCheckboxButton(
                text: "lbl56".tr,
                value: controller.tf2.value,
                onChange: (value) {
                  controller.tf2.value = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.h),
              child: Obx(
                () => CustomCheckboxButton(
                  text: "lbl57".tr,
                  value: controller.tf3.value,
                  onChange: (value) {
                    controller.tf3.value = value;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVisitPresentCheckBox() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl62".tr,
        value: controller.visitPresentCheckBox.value,
        onChange: (value) {
          controller.visitPresentCheckBox.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditStoreProfileColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl64".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController6,
          hintText: "msg4".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return Opacity(
      opacity: .50,
      child: CustomElevatedButton(
        height: 46.v,
        text: "lbl65".tr,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 54.v,
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientDeepOrangeToDeepOrangeDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
      ),
    );
  }

  /// Common widget
  Widget _buildRegularClosingDayRow({required String rfriText}) {
    return SizedBox(
      width: 41.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 20.v,
            width: 17.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
          ),
          Text(
            rfriText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHolidayRow({required String holidayText}) {
    return SizedBox(
      width: 42.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseDeepOrange400,
            height: 19.v,
            width: 18.h,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Text(
            holidayText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFifteen({required String image}) {
    return SizedBox(
      height: 91.adaptSize,
      width: 91.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: image,
            height: 91.adaptSize,
            width: 91.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseGray30014x14,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 9.h,
            ),
          ),
        ],
      ),
    );
  }
}
