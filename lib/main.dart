import 'package:facitend/core/routes.dart';
import 'package:facitend/themes/app_theme.dart';
import 'package:facitend/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set Orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // Init dotenv file
  await dotenv.load(fileName: '.env');
  // Init Get Storage
  await GetStorage.init();
  Get.put(ThemeController(), permanent: true);

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: dotenv.get('APP_NAME'),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeMode,
        getPages: AppRouter.routes,
        initialRoute: AppRouter.initialRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
