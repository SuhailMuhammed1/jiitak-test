import '../../../core/app_export.dart';

/// This class is used in the [frame1_item_widget] screen.
class Frame1ItemModel {
  Frame1ItemModel({
    this.image,
    this.close,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.img2021112196x91);
    close = close ?? Rx(ImageConstant.imgCloseGray300);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? close;

  Rx<String>? id;
}
