import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:qp/services/local_store_config.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => GetMaterialApp(
        textDirection: TextDirection.ltr,
        theme: ThemeData(
          primaryColor: Colors.green, // Set your desired primary color
          primarySwatch: Colors.green,
        ),
        title: "ChatApp",
        debugShowCheckedModeBanner: false,
        initialRoute:  AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
      designSize: const Size(360, 800),
    );
  }
}

Future<void> setupApp() async {
  await HiveService.initHive();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

