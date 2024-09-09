import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';

class NotificationCard extends StatelessWidget {
  String? title;
  String? subTitle;
  String? time;
  String? imagePath;

  NotificationCard(
      {super.key, this.imagePath, this.subTitle, this.time, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColorsConst.cWhite,
      // elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side - Icon/Logo
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath ?? appImagesConst.airtelLogo),
                    fit: BoxFit.fill),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? 'Campaign has been put on hold',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                      height: 4), // Small space between title and subtitle
                  Text(
                    subTitle ?? '100 Connection Activation',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              time ?? '1 min ago',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
