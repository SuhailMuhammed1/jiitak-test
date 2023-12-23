import '../controller/stamp_details_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofilelistItemModelObj.dateText!.value,
                  style: CustomTextStyles.bodySmallGray40001,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  userprofilelistItemModelObj.stampText!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.v),
            child: Obx(
              () => Text(
                userprofilelistItemModelObj.countText!.value,
                style: CustomTextStyles.titleSmallPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
