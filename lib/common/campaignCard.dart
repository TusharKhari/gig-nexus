import 'package:flutter/material.dart';

import '../utils/constants/app_constants.dart';
import 'button.dart';

class CampaignCard extends StatelessWidget {
  const CampaignCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColorsConst.cWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 30,
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
                        image: AssetImage(appImagesConst.airtelLogo),
                        fit: BoxFit.fill),
                    // color: Colors.white,
                    // shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "100 Connection Activation",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Airtel",
                      style: TextStyle(
                        fontSize: 14,
                        color:  appColorsConst.cB4BAC2,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1d ago",
                      style: TextStyle(
                        fontSize: 12,
                        color:  appColorsConst.cB4BAC2,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. Proin arcu porttitor dui pellentesque volutpat sem...",
              style: TextStyle(
                fontSize: 12,
                color: appColorsConst.c787E86,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(appImagesConst.bankLogo),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Bank",
                      style: TextStyle(
                          color: appColorsConst.c787E86,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color:  appColorsConst.c233C7E),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color:  appColorsConst.c233C7E,
                    )
                  ],
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              // color: appColorsConst.c787E86,
              color: Color(0xffE4E4E4),
            ),
          ),
          // const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              children: [
                Text(
                  "₹ 5000",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34A852),
                  ),
                ),
                Spacer(),
                Button(
                  borderRadius: 8,
                  title: "Apply Now",
                  height: 40,
                  fontSize: 14,
                  width: 120,
                  padding: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
