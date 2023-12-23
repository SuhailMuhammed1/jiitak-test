import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNav,
        activeIcon: ImageConstant.imgNav,
        title: "lbl4".tr,
        type: BottomBarEnum.tf,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray900,
      activeIcon: ImageConstant.imgNavBlueGray900,
      title: "lbl5".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray90024x24,
      activeIcon: ImageConstant.imgNavBlueGray90024x24,
      title: "lbl7".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav24x24,
      activeIcon: ImageConstant.imgNav24x24,
      title: "lbl8".tr,
      type: BottomBarEnum.tf,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: theme.colorScheme.onPrimaryContainer,
        child: SizedBox(
          height: 60.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
                  (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ?  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          color: appTheme.yellow80001,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            bottomMenuList[index].title ?? "",
                            style: CustomTextStyles.labelSmallYellow80001
                                .copyWith(
                              color: appTheme.yellow80001,
                            ),
                          ),
                        ),
                      ],
                  )
                      : Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          color: appTheme.blueGray900,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            bottomMenuList[index].title ?? "",
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: appTheme.blueGray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}


enum BottomBarEnum {
  tf,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
