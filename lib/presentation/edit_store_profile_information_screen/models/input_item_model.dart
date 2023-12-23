import '../../../core/app_export.dart';

/// This class is used in the [input_item_widget] screen.
class InputItemModel {
  InputItemModel({
    this.photo,
    this.closeIcon,
    this.id,
  }) {
    photo = photo ?? Rx(ImageConstant.img20211122);
    closeIcon = closeIcon ?? Rx(ImageConstant.imgClose);
    id = id ?? Rx("");
  }

  Rx<String>? photo;

  Rx<String>? closeIcon;

  Rx<String>? id;
}
