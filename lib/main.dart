import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_app/product/init/app_environment.dart';
import 'package:weather_app/product/navigation/app_router.dart';

void main() async {
  AppEnvironment.general();
  WidgetsFlutterBinding.ensureInitialized();
  await requestLocationPermission();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(MyApp());
}

Future<void> requestLocationPermission() async {
  try {
    final status = await Permission.location.status;
    if (status.isDenied) {
      final newStatus = await Permission.location.request();
      if (newStatus.isPermanentlyDenied) {
        openAppSettings();
      }
    }
  } catch (e) {
    debugPrint('Permission check failed: $e');
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
