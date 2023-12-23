import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_after_selected_prefecture_and_city_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeAfterSelectedPrefectureAndCityModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.img20220608.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        salary: "¥ 6,000".obs,
        workingHours: "5月 31日（水）08 : 00 ~ 17 : 00".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs,
        widget: "本日まで".obs),
    UserprofileItemModel(
        userImage: ImageConstant.img20220608186x325.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        workingHours: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs),
    UserprofileItemModel(
        userImage: ImageConstant.img202206081.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        workingHours: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs),
    UserprofileItemModel(
        userImage: ImageConstant.img202206082.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        workingHours: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs),
    UserprofileItemModel(
        userImage: ImageConstant.img202206083.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        workingHours: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs),
    UserprofileItemModel(
        userImage: ImageConstant.img202206084.obs,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）".obs,
        workingHours: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）".obs,
        address: "北海道札幌市東雲町3丁目916番地17号".obs,
        transportationExpenses: "交通費 300円".obs,
        careProviderName: "住宅型有料老人ホームひまわり倶楽部".obs)
  ]);
}
