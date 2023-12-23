import '../controller/stamp_details_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: sliderItemModelObj.image!.value,
          height: 100.v,
          width: 375.h,
          margin: EdgeInsets.only(
            top: 54.v,
            bottom: 69.v,
          ),
        ),
      ),
    );
  }
}
