import 'package:atv_06_mood_app/pages/telaInicial.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import './pages/telaRevisao.dart'; //acessando pagina TelaRevisão

void main() {//Onde o app começa
  runApp(
    DevicePreview(builder:(context) => MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remover marca d'agua
      //Home
      home: const TelaInicial(),//Chamando a tela inicial
    );
  }
}
