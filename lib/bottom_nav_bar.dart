import 'package:flutter/material.dart';
import 'package:gig_nexus/features/home/home.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List items = [
    Home(),
    Center(
      child: Text("Compains"),
    ),
    Center(
      child: Text("Jobs"),
    ),
    Center(
      child: Text("Leads"),
    ),
    Center(
      child: Text("Wallet"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      bottomNavigationBar: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  icon: Image.asset(
                    appImagesConst.homeIcon,
                    scale: 4,
                    fit: BoxFit.none,
                    color: selectedIndex == 0
                        ? appColorsConst.cBlue
                        : appColorsConst.grey,
                  )),

              //   Icon(
              //     Icons.abc,
              //     color: selectedIndex == 0 ? Colors.green : null,
              //   ),
              // )

              IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  icon: Image.asset(
                    appImagesConst.campaignsIcon,
                    scale: 4,
                    fit: BoxFit.none,
                    color: selectedIndex == 1 ? appColorsConst.cBlue : null,
                  )

                  // Icon(Icons.do_disturb),
                  ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                icon: Icon(Icons.u_turn_left),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                icon: Icon(Icons.tab),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 4;
                  });
                },
                icon: Icon(Icons.offline_bolt),
              ),
            ],
          )),
      body: items[selectedIndex],
    );
  }
}
