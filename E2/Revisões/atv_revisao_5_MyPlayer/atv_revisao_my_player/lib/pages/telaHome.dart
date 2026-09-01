import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget{
  const TelaHome({super.key});
  @override
  State<TelaHome> createState() => _TelaHomeState();
}


class _TelaHomeState extends State<TelaHome>{
  int posicaoMusica = 0;
  int volume = 5;
  bool estaTocando = false;
  List<Map<String,dynamic>> listaMusicas = [
    {
      "Nome": "The Mind Electric",
      "Autor":"Miracle Musicle"
    },

    {
      "Nome":"Widow",
      "Autor":"Cristopher Larkin"
    },

    {
      "Nome":"Banho de Sangue",
      "Autor":" Alice Schiavoto"
    },
    {
      "Nome":"Self-",
      "Autor":" Will Wood"
    }
  ];
  //Viasul da tela inicial
  Widget build(BuildContext context){
    return Scaffold(
      //Barra superior
      appBar: AppBar(
        title:Text("App My Music Player"),
        centerTitle: true,
      ),
      //Corpo do app
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center( //serve para cetralizar tudo
          child: Column( //deve colocar o child antes do column
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              //aqui é onde o body todo será construido
              //CONTAINER--------------------------------------
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                //Aqui dentro sera colocado a capa do album
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.music_note,
                      color:const Color.fromARGB(255, 243, 243, 243),
                      size: 60,
                      ),
                      Text("Onde deveria estar o album",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color:const Color.fromARGB(255, 245, 245, 245)
                      )
                    )
                  ],
                )
              ),
              const SizedBox(height: 10),
              //Player + Nome da Música + autor--------------------------------------
              Column(// Criado coluna para antes colocar o player
                children: [
                Text(
                  listaMusicas[posicaoMusica]["Nome"],
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  listaMusicas[posicaoMusica]["Autor"]
                )
                ]
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Aumentar volume
                  ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        volume+=1;
                        if(volume > 10){
                          volume =10;
                        }
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text("1"),
                  ),
                  ElevatedButton.icon(
                    onPressed:(){
                      setState(() {  
                        estaTocando = !estaTocando;
                      });
                      
                    },
                    icon: Icon(
                      //condição ? se verdadeiro : se falso
                      estaTocando ? Icons.pause : Icons.play_arrow
                    ),
                    label: Text(
                      estaTocando ? "Tocando" : "Não tocando"
                    )
                  ),
                  //Dminuir volume
                  ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        volume-=1;
                        if(volume <= 0){
                          volume =0;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                    label: Text("1"),
                  )
                ]
              ),
              Text(volume.toString()),
              const SizedBox(height: 30),
              //Boão de proxima múica
              //MECHER AQUI DEPOIS------------------------------------------
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    posicaoMusica+=1;
                  });
                },
                label: Text("Próxima música")
              )
            ],
          ),
        )
      )
    );
  }
}