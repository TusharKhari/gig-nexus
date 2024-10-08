import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gig_nexus/features/auth/presentation/screens/login_screen.dart';

import 'utils/routes/app_route_pages.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routePages,
      debugShowCheckedModeBanner: false,
      title: 'Gig Nexus',
      home: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return StartNavigationScreen();
        },
        child: const StartNavigationScreen(),
      ),
    );
  }
}

class StartNavigationScreen extends StatefulWidget {
  const StartNavigationScreen({super.key});

  @override
  State<StartNavigationScreen> createState() => _StartNavigationScreenState();
}

class _StartNavigationScreenState extends State<StartNavigationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    // FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
