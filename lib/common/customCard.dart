import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';

class CustomCard extends StatelessWidget {
  String? imageIcon;
  double? width;
  double? height;
  String? title;
  String? subtitle;
  CustomCard(
      {super.key,
      this.imageIcon,
      this.width,
      this.height,
      this.title,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      height: height ?? 180,
      child: Card(
        color: appColorsConst.cWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Icon(Icons.campaign, color: Colors.blue, size: 28),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageIcon ??
                              appImagesConst.campaignsIconWithoutText),
                          fit: BoxFit.fill),
                      // color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                title ?? "",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              // color: appColorsConst.c787E86,
              color: Color(0xffE4E4E4),
            ),
            // const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    subtitle ?? "",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color:  appColorsConst.c233C7E,
                    ),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Icon(Icons.circle, color: Colors.green, size: 10),
                      SizedBox(width: 4),
                      Text(
                        '4 Active',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
