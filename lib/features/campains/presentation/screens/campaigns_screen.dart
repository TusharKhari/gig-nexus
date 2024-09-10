import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class CampaignsScreen extends StatefulWidget {
  const CampaignsScreen({super.key});

  @override
  State<CampaignsScreen> createState() => _CampaignsScreenState();
}

class _CampaignsScreenState extends State<CampaignsScreen> {
  List<String> catList = ["All", "Banking & Finance", "Ecommerce"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appColorsConst.cWhite,
      appBar: AppBar(
        backgroundColor: appColorsConst.c233C7E,
        title: Text(
          "Campaigns",
          style: appTextStylesConst.o28700White,
        ),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: appColorsConst.cF6F6F6,
                boxShadow: [
                  BoxShadow(
                    color: appColorsConst.c0000001A.withOpacity(0.1),
                    blurRadius: 18,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: appColorsConst.c233C7E,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: appColorsConst.c0000001A.withOpacity(0.34),
                              blurRadius: 8,
                              // blurStyle: BlurStyle.outer
                            ),
                            BoxShadow(
                              color: appColorsConst.cWhite.withOpacity(0.3),
                              blurRadius: 4,
                              // blurStyle: BlurStyle.outer
                              offset: Offset(0, 4),
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          "Find Campaigns",
                          style: appTextStylesConst.o28500White,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Text(
                          "My Campaigns",
                          style: appTextStylesConst.o28500787E,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //

            SizedBox(
              height: 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? appColorsConst.c134EA1.withOpacity(0.1)
                              : appColorsConst.c787E86.withOpacity(0.1),
                          // color: appColorsConst.c134EA1.withOpacity(0.1),
                          border: Border.all(
                            color: selectedIndex == index
                                ? appColorsConst.c134EA1
                                : appColorsConst.c787E86,
                            // color: appColorsConst.c134EA1,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: Text(
                            "${catList[index]}",
                            style: appTextStylesConst.o16400134E.copyWith(
                                color: selectedIndex == index
                                    ? null
                                    : appColorsConst.c787E86),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            30.h.verticalSpace,
            ListView.builder(
              itemCount: 99,
              physics: NeverScrollableScrollPhysics( ),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: appColorsConst.cWhite,
                    border: Border.all(color: appColorsConst.cF0F0F0), 
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4), 
                        blurRadius: 24, 
                        color: appColorsConst.c0000001A.withOpacity(0.14)
                      )
                    ]
                  ),
                  child: Center(child: Text("100 Connection Activation")),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
