import '../controller/edit_store_profile_information_controller.dart';
import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgInput91x91,
        height: 91.adaptSize,
        width: 91.adaptSize,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}
