import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pages/tela_responsiva.dart';
//App sobre RESPONSIVIDADE
//A pasta PAGES--------------------
//  Serve para armazenar as telas
//A pasta WIDGETS------------------
//  Serve para a criação de elementos especificos para o APP(usado mais de uma vez)  
//A pasta models-------------------
//  Serve para
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const AppResponsivo(),
    ),
  );
}

class AppResponsivo extends StatelessWidget {
  const AppResponsivo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsividade',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData( //tema do app
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const TelaResponsiva(),//iniciando tela
    );
  }
}
