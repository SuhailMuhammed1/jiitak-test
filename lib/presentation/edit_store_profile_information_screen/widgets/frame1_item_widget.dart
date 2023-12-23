import '../controller/edit_store_profile_information_controller.dart';
import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.v,
      width: 91.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: frame1ItemModelObj.image!.value,
              height: 96.v,
              width: 91.h,
              radius: BorderRadius.circular(
                6.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: frame1ItemModelObj.close!.value,
              height: 15.v,
              width: 14.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 8.v,
                right: 9.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
