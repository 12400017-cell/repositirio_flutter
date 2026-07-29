import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

//Tema: Jogo(silksong)
//Classe onde o app vai rodar
//StatlessWidget é uma area onde o usuario pode ver, mas não interagir
class MyApp extends StatelessWidget{
  void printar1(){
    print("Instalando");
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Scaffold cria a tela em branco do app/site
      home: Scaffold(
        //Appbar cria a barra superior
        appBar: AppBar(
          title: Text("Hollow Knight: SilkSong", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
          backgroundColor: const Color.fromARGB(255, 255, 59, 59),
          centerTitle: true,
        ),
        
        //Cria o resto do corpo onde o app/site roda
        body: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: double.infinity, //largura infinita, por tanto, intocado pelo text
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 8,
            //Colocando coisas dentro do container
            children: [
              Container(
                color: const Color.fromARGB(255, 185, 0, 0),
                margin: EdgeInsets.only(top:20),
                child: Image.network(
                'https://static.wikia.nocookie.net/hollowknight/images/1/13/Silksong_cover.jpg/revision/latest/scale-to-width-down/1200?cb=20220614030154&path-prefix=pt',
                width: 300,
                ),
              ),
                Text(
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  "SilkSong",
                ),
                  Text(
                    "A história acompanha Hornet , antiga protetora da princesa de Hallownest , após sua captura e transporte para a desconhecida terra de Pharloom.",
                    textAlign:TextAlign.center
                ),
                ElevatedButton(onPressed: printar1, child: Text("Instalar"))
            ]
          ),
        ),

      )
    );
  }
}
