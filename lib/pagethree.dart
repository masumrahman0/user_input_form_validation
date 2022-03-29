import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Localization With Getx",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          children: [
            Text(
              'app_name'.tr,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'app_title'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(
                  Locale('en', 'US'),
                );
              },
              child: Text("English"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(
                  Locale('bn', 'BD'),
                );
              },
              child: Text("Bangla"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pagefour");
              },
              child: Text("Next Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pagetwo");
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
