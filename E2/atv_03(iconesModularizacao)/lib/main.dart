import 'package:device_preview/device_preview.dart'; //device preview
import 'package:flutter/material.dart'; //Já ve instalado
import 'pages/tela_home.dart'; //linkandi i main com o tela_home.dart

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructo

  // Esse widget é a raiz da aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//Aqui é onde o app todo vai rodar
    
      title: "meu app incones", //muda o titulo do app na barra superior do site
      
      //1)No MaterialApp configure um tema usando ThemeData(define o tema da aplicação)
      theme: ThemeData(
        useMaterial3: true, //obrigatorio
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: const Color.fromARGB(255, 255, 201, 22)
        )
      ),
      home: const TelaHome(), //classe do tela_home.dart --> lá será criado os visuais

    );
  }
}
