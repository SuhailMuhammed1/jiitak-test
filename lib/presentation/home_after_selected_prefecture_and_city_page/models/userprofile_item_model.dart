import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.jobTitle,
    this.salary,
    this.workingHours,
    this.address,
    this.transportationExpenses,
    this.careProviderName,
    this.widget,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.img20220608);
    jobTitle = jobTitle ?? Rx("介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）");
    salary = salary ?? Rx("¥ 6,000");
    workingHours = workingHours ?? Rx("5月 31日（水）08 : 00 ~ 17 : 00");
    address = address ?? Rx("北海道札幌市東雲町3丁目916番地17号");
    transportationExpenses = transportationExpenses ?? Rx("交通費 300円");
    careProviderName = careProviderName ?? Rx("住宅型有料老人ホームひまわり倶楽部");
    widget = widget ?? Rx("本日まで");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? jobTitle;

  Rx<String>? salary;

  Rx<String>? workingHours;

  Rx<String>? address;

  Rx<String>? transportationExpenses;

  Rx<String>? careProviderName;

  Rx<String>? widget;

  Rx<String>? id;
}
