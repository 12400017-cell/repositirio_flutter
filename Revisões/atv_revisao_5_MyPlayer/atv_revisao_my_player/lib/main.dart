import 'package:atv_revisao_my_player/pages/telaHome.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget raiz da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPlayer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 33, 243, 138),
          secondary: const Color.fromARGB(255, 86, 0, 126)
        )
      ),
      home: TelaHome(),
    );
  }
}