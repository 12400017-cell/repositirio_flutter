import 'package:atv_revisao_pi/pages/homePage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const AppRevisao(),
    ),
  );
}

class AppRevisao extends StatelessWidget {
  const AppRevisao({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo pag 1",
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme:ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const HomePage(),
    );
  }
}