import 'package:flutter/material.dart';
import 'package:gig_nexus/utils/constants/app_constants.dart';

class CampaignPage extends StatefulWidget {
  const CampaignPage({super.key});

  @override
  State<CampaignPage> createState() => _CampaignPageState();
}

class _CampaignPageState extends State<CampaignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorsConst.cWhite,
      body: Center(
        child: Text("Campaigns"),
      ),
    );
  }
}
