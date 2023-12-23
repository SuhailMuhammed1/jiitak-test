import '../controller/edit_store_profile_information_controller.dart';
import '../models/input_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class InputItemWidget extends StatelessWidget {
  InputItemWidget(
    this.inputItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InputItemModel inputItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91.adaptSize,
      width: 91.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: inputItemModelObj.photo!.value,
              height: 91.adaptSize,
              width: 91.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: inputItemModelObj.closeIcon!.value,
              height: 14.adaptSize,
              width: 14.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 7.v,
                right: 8.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
