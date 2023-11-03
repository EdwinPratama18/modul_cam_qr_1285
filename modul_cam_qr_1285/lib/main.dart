import 'package:flutter/material.dart';
import 'package:modul_cam_qr_1285/views/camera/camera.dart';
import 'package:modul_cam_qr_1285/constant/app_constant.dart';
import 'package:modul_cam_qr_1285/views/generate_qr/generate_qr_page.dart';
import 'package:modul_cam_qr_1285/views/home_page.dart';
import 'package:modul_cam_qr_1285/views/qr_scan/scan_qr_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteConstant.routeToHome,
      routes: {
        RouteConstant.routeToHome: (context) => const HomePage(),
        RouteConstant.routeToQRGeneratePage: (context) =>
            const GenerateQRPage(),
        RouteConstant.routeToQRScanPage: (context) =>
            const BarcodeScannerPageView(),
        RouteConstant.routeToQRCam: (context) => const CameraView(),
      },
    );
  }
}
