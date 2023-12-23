import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.dateText,
    this.stampText,
    this.countText,
    this.id,
  }) {
    dateText = dateText ?? Rx("2021 / 11 / 18");
    stampText = stampText ?? Rx("スタンプを獲得しました。");
    countText = countText ?? Rx("1 個");
    id = id ?? Rx("");
  }

  Rx<String>? dateText;

  Rx<String>? stampText;

  Rx<String>? countText;

  Rx<String>? id;
}
