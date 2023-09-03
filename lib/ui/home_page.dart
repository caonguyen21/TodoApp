import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/services/theme_services.dart';
import 'package:get/get.dart';

import '../services/notification_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotificationService();
    notifyHelper.initNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
          child: ElevatedButton(
        child: const Text('Show notifications'),
        onPressed: () {
          notifyHelper.showNotification(
              title: 'Theme Changed',
              body: Get.isDarkMode
                  ? "You changed your theme back !"
                  : "You change your theme");
        },
      )),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.showNotification(
              title: 'Theme Changed',
              body: Get.isDarkMode
                  ? "You changed your theme back !"
                  : "You change your theme");
        },
        child: Icon(
          Icons.nightlight_round,
          size: 20,
        ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
