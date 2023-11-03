import 'package:flutter/material.dart';
import 'package:modul_cam_qr_1285/constant/app_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  navigateTo(BuildContext context, String routeName) =>
      Navigator.pushNamed(context, routeName);       

  @override
  Widget build(BuildContext context) {       
    return Scaffold(
        appBar: AppBar(
          title: const Text(LabelTextConstant.homePageAppBarTitle),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () =>
                  navigateTo(context, RouteConstant.routeToQRGeneratePage),
              child: const Text(ButtonTextConstant.qrGenerate),
            ),
            ElevatedButton(
              onPressed: () => navigateTo(context, RouteConstant.routeToQRCam),
              child: const Text(ButtonTextConstant.camera),
            ),
            ElevatedButton(
              onPressed: () =>
                  navigateTo(context, RouteConstant.routeToQRScanPage),
              child: const Text(ButtonTextConstant.qrScanning),
            ),
          ],
        )));
  }
}
