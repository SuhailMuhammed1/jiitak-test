import '../controller/home_after_selected_prefecture_and_city_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/widgets/custom_elevated_button.dart';
import 'package:jiitak/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeAfterSelectedPrefectureAndCityController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 388.v,
      width: 330.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 5.h),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Obx(
                      () => CustomImageView(
                        imagePath: userprofileItemModelObj.userImage!.value,
                        height: 181.v,
                        width: 325.h,
                        radius: BorderRadius.vertical(
                          top: Radius.circular(15.h),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 19.h,
                    ),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.jobTitle!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 14.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          height: 25.v,
                          width: 130.h,
                          text: "lbl2".tr,
                          margin: EdgeInsets.only(top: 1.v),
                          buttonTextStyle: theme.textTheme.labelMedium!,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Obx(
                            () => Text(
                              userprofileItemModelObj.salary!.value,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Obx(
                        () => Text(
                          userprofileItemModelObj.workingHours!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Column(
                              children: [
                                Obx(
                                  () => Text(
                                    userprofileItemModelObj.address!.value,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Obx(
                                    () => Text(
                                      userprofileItemModelObj
                                          .transportationExpenses!.value,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Obx(
                                  () => Text(
                                    userprofileItemModelObj
                                        .careProviderName!.value,
                                    style:
                                        CustomTextStyles.bodySmallBluegray900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 49.h,
                            top: 27.v,
                          ),
                          child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgShapesHeart,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 80.h,
              margin: EdgeInsets.only(top: 155.v),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Obx(
                () => Text(
                  userprofileItemModelObj.widget!.value,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
