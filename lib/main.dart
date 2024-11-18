import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_app/feature/home/view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await permiss();
  runApp(const MyApp());
}

permiss() async {
  PermissionStatus status = await Permission.location.status;
  if (status.isDenied) {
    PermissionStatus newStatus = await Permission.location.request();
    if (newStatus.isPermanentlyDenied) {
      openAppSettings();
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
