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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      // Get.toNamed(appRouteNamesConst.loginScreen);
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  const Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1E1E1E),
                        fontSize: 28),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 15,
            // ),
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
