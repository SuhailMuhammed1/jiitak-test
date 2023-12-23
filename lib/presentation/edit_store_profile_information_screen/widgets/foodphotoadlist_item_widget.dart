import '../controller/edit_store_profile_information_controller.dart';
import '../models/foodphotoadlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class FoodphotoadlistItemWidget extends StatelessWidget {
  FoodphotoadlistItemWidget(
    this.foodphotoadlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodphotoadlistItemModel foodphotoadlistItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Obx(
          () => CustomImageView(
            imagePath: foodphotoadlistItemModelObj.input!.value,
            height: 91.adaptSize,
            width: 91.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
      ),
    );
  }
}
