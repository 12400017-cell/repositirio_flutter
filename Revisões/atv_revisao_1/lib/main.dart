import 'package:atv_revisao_1/pages/tela_login.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import './pages/telaRevisao.dart'; //acessando pagina TelaRevisão

void main() {//Onde o app começa
  runApp(
    DevicePreview(builder:(context) => MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //construtor da classe
  //super.key identifica a criação da classe

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Para marca d'gua sumir
      //---------------------------------------------------------------
      //Construindo tema do aplicativo || Mudando o visual
      //Não faz parte do cabeçario e nem do corpo, é algo a parte
      theme: ThemeData(
        useMaterial3: true,//
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.yellow
        )
      ),
      //---------------------------------------------------------------
      //home 
      home: const TelaLogin(),//chamando a primeira tela
    );
  }
}

