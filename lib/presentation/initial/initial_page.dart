import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/presentation/edit_store_profile_information_screen/edit_store_profile_information_screen.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_container_screen/home_after_selected_prefecture_and_city_container_screen.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 500.0, // Set a fixed width for the leading widget
        leading: Center(
          child: Image.asset(
            'assets/images/jiitak_logo.jpeg',
            height: 100.v, // Set the height of the image
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white, // Set the background color to white
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(AppRoutes.homeAfterSelectedPrefectureAndCityContainerScreen);
              },
              icon: Icon(Icons.home),
              label: Text(
                'Home',
                style: TextStyle(fontSize: 18.0), // Set the text size
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Set the button color to yellow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Set the border radius
                ),
                minimumSize: Size(300.0, 80.0), // Set the minimum size
              ),
            ),
            SizedBox(height: 20.v),
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(AppRoutes.stampDetailsScreen);
              },
              icon: Icon(Icons.edit_note),
              label: Text(
                'Stamp Details',
                style: TextStyle(fontSize: 18.0), // Set the text size
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Set the button color to yellow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Set the border radius
                ),
                minimumSize: Size(300.0, 80.0), // Set the minimum size
              ),
            ),
            SizedBox(height: 20.v),
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed(AppRoutes.editStoreProfileInformationScreen);
              },
              icon: Icon(Icons.store),
              label: Text(
                'Edit Store',
                style: TextStyle(fontSize: 18.0), // Set the text size
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow, // Set the button color to yellow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0), // Set the border radius
                ),
                minimumSize: Size(300.0, 80.0), // Set the minimum size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
