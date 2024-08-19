import 'package:flutter/material.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // var mqW = MediaQuery.of(context).size.width;
    // var mqH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                appImagesConst.appThemeImagePNG,
                // width: mqW,
                // height: 200,
                height: 250,
                width: double.infinity,
                fit: BoxFit.none,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 45),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(appImagesConst.profileImage),
                                fit: BoxFit.fill),
                            // color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rajat Sharma",
                              style: TextStyle(
                                  color: appColorsConst.cWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "View Profile >",
                              style: TextStyle(
                                  color: appColorsConst.cWhite,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Container(
                          // margin: EdgeInsets.all(20),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 1, color: appColorsConst.cWhite)),
                          child: Image.asset(
                            appImagesConst.notificationImage,
                            color: appColorsConst.cWhite,
                            scale: 4,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff59D679), Color(0xff1BA13E)],
                          ),
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    appImagesConst.walletIcon,
                                    fit: BoxFit.none,
                                    scale: 4,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "My Earnings",
                                  style: TextStyle(
                                      color: appColorsConst.cWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "₹45,0000",
                                  style: TextStyle(
                                      color: appColorsConst.cWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "View ",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                    ])),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: appColorsConst.cWhite,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
