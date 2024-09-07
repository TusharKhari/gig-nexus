import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/common/button.dart';
import 'package:gig_nexus/features/notification/notification_page.dart';
import 'package:gig_nexus/utils/colors/app_colors.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';
import 'package:horizontal_list/horizontal_list.dart';
import 'package:parallax_cards/parallax_cards.dart';

import '../../common/campaignCard.dart';
import '../../common/customCard.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                  padding: const EdgeInsets.only(left: 28, right: 28, top: 45),
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
                                  image:
                                      AssetImage(appImagesConst.profileImage),
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
                          InkWell(
                            onTap: () {
                              Get.to(NotificationPage());
                            },
                            child: Container(
                              // margin: EdgeInsets.all(20),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(100),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1, color: appColorsConst.cWhite)),
                              child: Image.asset(
                                appImagesConst.notificationImage,
                                color: appColorsConst.cWhite,
                                scale: 4,
                              ),
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
                          padding: const EdgeInsets.all(15),
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
                                  const SizedBox(
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
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                          text: const TextSpan(children: [
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
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  CustomCard(
                    width: 165,
                    height: 160,
                    imageIcon: appImagesConst.campaignsIconWithoutText,
                    title: "My Campaigns",
                    subtitle: "12",
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CustomCard(
                    width: 165,
                    height: 160,
                    title: "Total Leads",
                    subtitle: "12",
                    imageIcon: appImagesConst.magnetIcon,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    "Top Campaigns For You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: appColorsConst.cBlack),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: appColorsConst.cBlue),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: appColorsConst.cBlue,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // CampaignCard(),
            // CampaignCard(),
            CarouselSlider(
              options: CarouselOptions(
                height: 240,
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return const CampaignCard();
                  },
                );
              }).toList(),
            ),
            // SizedBox(
            //   height: 250,
            //   child: LayoutBuilder(builder: (context, constraints) {
            //     return ListView.builder(
            //         itemCount: 5,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) {
            //           return SizedBox(
            //               width: constraints.maxWidth * 0.8,
            //               child: CampaignCard());
            //         });
            //   }),
            // ),
            // SizedBox(
            //   height: 100,
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    "Ad banners to be added here",
                    style: TextStyle(fontSize: 16, color: appColorsConst.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Quick Actions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            HorizontalListView(
              width: double.infinity, //Width of widget
              height: 140, //Height of widget
              list: [
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(appImagesConst.howItWorks),
                        fit: BoxFit.fill),
                  ),
                  padding: EdgeInsets.all(0),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(appImagesConst.chatWithUs),
                        fit: BoxFit.fill),
                  ),
                  padding: EdgeInsets.all(0),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(appImagesConst.howItWorks),
                        fit: BoxFit.fill),
                  ),
                  padding: EdgeInsets.all(0),
                ),
              ],
              curveAnimation: Curves.bounceIn,
              durationAnimation: Duration(milliseconds: 300),
              enableManualScroll: true,
            ),

            Container(
              margin: EdgeInsets.all(0),
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(appImagesConst.appLogoBlueImagePNG),
                    fit: BoxFit.contain,
                    scale: 2),
              ),
              padding: EdgeInsets.all(0),
            ),

            // HorizontalListView(
            //   width: double.infinity, //Width of widget
            //   height: 100, //Height of widget
            //   list: [
            //     Container(
            //       margin: EdgeInsets.all(0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(appImagesConst.facebookImage),
            //             fit: BoxFit.contain),
            //       ),
            //       padding: EdgeInsets.all(0),
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(appImagesConst.instagramImage),
            //             fit: BoxFit.contain),
            //       ),
            //       padding: EdgeInsets.all(0),
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(appImagesConst.linkedInImage),
            //             fit: BoxFit.contain),
            //       ),
            //       padding: EdgeInsets.all(0),
            //     ),
            //     Container(
            //       margin: EdgeInsets.all(0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(appImagesConst.twitterImage),
            //             fit: BoxFit.contain),
            //       ),
            //       padding: EdgeInsets.all(0),
            //     ),
            //   ],
            //   curveAnimation: Curves.bounceIn,
            //   durationAnimation: Duration(milliseconds: 300),
            //   enableManualScroll: true,
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 102,
                    width: 102,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appImagesConst.facebookImage),
                          fit: BoxFit.contain),
                    ),
                    padding: EdgeInsets.all(0),
                  ),
                  Container(
                    height: 102,
                    width: 102,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appImagesConst.instagramImage),
                          fit: BoxFit.contain),
                    ),
                    padding: EdgeInsets.all(0),
                  ),
                  Container(
                    height: 102,
                    width: 102,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appImagesConst.linkedInImage),
                          fit: BoxFit.contain),
                    ),
                    padding: EdgeInsets.all(0),
                  ),
                  Container(
                    height: 102,
                    width: 102,
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appImagesConst.twitterImage),
                          fit: BoxFit.contain),
                    ),
                    padding: EdgeInsets.all(0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
