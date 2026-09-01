import 'package:atv_00_central_missoes_espaciais/pages/tela_missao.dart';
import 'package:device_preview/device_preview.dart'; //instale o device_preview
import 'package:flutter/material.dart';


void main() {//Onde o app começa
  runApp(
    DevicePreview(builder:(context) => MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Central de Missões Espaciais',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //conectando com página 1
      home: const TelaMissoes(),
    );
  }
}

