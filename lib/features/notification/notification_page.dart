import 'package:flutter/material.dart';

import '../../common/notificationCard.dart';
import '../../utils/constants/app_constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      appBar: AppBar(
        backgroundColor: appColorsConst.cWhite,
        leading: InkWell(
          onTap: () {
            // Get.toNamed(appRouteNamesConst.loginScreen);
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 32,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff1E1E1E),
              fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            NotificationCard(
              imagePath: appImagesConst.jobImage,
            ),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(
              imagePath: appImagesConst.jobImage,
            ),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(
              imagePath: appImagesConst.jobImage,
            ),
            NotificationCard(),
          ],
        ),
      ),
    );
  }
}
