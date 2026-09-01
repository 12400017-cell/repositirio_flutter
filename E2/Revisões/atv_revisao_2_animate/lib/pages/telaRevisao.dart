import 'package:atv_animate_revisao_2/pages/telaDetalhes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class TelaRevisao extends StatefulWidget {
  const TelaRevisao({super.key});
  @override
  //Onde ficam os dados que podem mudar, pois está dentor do override
  State<TelaRevisao> createState() => _TelaRevisaoState();
}

class _TelaRevisaoState extends State<TelaRevisao> {
  String menssagem = "Clique em opção";

  @override
  Widget build(BuildContext context) {
    //Corpo da aplicação
    return Scaffold(
        //Barra do APP
        appBar: AppBar(
          title: const Text("Revisão Flutter"),
        ),
        //SafeArea = rotege conteudo de areas
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            //Organiza elementos em uma coluna
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Aceita vearior widgets, mas ele é utilizado em apenas linhas(Column e Rows)
              const Icon(Icons.phone_android, size: 80, color: Colors.blue),
              const SizedBox(height: 100), //Espaço entre componentes
              const Text(
                "Revisão de Flutter",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1 //espaçamento entre letras
                    ),
              ),
              const SizedBox(height: 100), //Espaço entre componentes
              const Text(
                "Vamos revisar widgets, layouts, estilo, botões, estado e navegação",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              //Criando container------------------------------------------------------
              Container(
                //Cria uma "caixa"
                width: 320,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue.shade50, //contraste
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  "O container funciona como uma caixa. Ele pode ter largura, padding, margin",
                  textAlign: TextAlign.center,
                ),
              ),

              Text(
                menssagem,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),

              Row(
                //Organiza os componentes em Linha
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        menssagem = "vc clicou no botão azul";
                      });
                    },
                    child: const Text("Azul"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      elevation: 4
                    ),
                    onPressed: () {
                      setState(() {
                        menssagem = "Você clicou no botão destaque";
                      });
                    }, 
                    child: const Text("Destaque"))
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon
              (
                onPressed: (){
                  Navigator.push(
                    context, //Indica onde estamos no app
                    MaterialPageRoute(
                      builder: (context)=> const TelaDetalhes(), //Leva a tela detalhes ao apertar
                    ),
                  );
                }, 
                icon: const Icon(Icons.arrow_forward), //Icon junto com o botão
                label: const Text("Ir para detalhes")//Texto do botão
              )
            ],
          ),
        )),

        //Criando Botão flutuante
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              menssagem = "Você clicou no botão flutuante";
            });
          },
          //Colocando ICONE no botão
          child: const Icon(Icons.add),
        ));
  }
}
