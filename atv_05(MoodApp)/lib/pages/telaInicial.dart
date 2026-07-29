import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget{
  const TelaInicial({super.key});
  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial>{
  //Variavel que  devine o tamanho do quadrado
  double tamanhoQuadrado = 100;
  void alterarTamanho(){
    setState((){
      //o argumento comessa depois do primeiro =
      //se 120 for igual a 120
      //depois do ponto de iterrogação tera o que a contece se condição for realizada
      //tamanhoQuadrado = 260
      //caso a condição não(se não ":") for alcançada o tamanho é 120
      tamanhoQuadrado = tamanhoQuadrado == 120 ? 260 :120;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //--------------------------------------------------
      //Cabeçario com o TITULO do APP---------------------
      appBar: AppBar(title: const Text("MoodApp"),centerTitle: true),
      //--------------------------------------------------
      //Corpo do app--------------------------------------
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "Clique em um dos 3 botões para ver o humor da tela mudar!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              //BOTÃO DE HUMOR 1------------------------
              //----------------------------------------
              ElevatedButton(
                //Ao clicar 
                onPressed: alterarTamanho,
                child: const Text("Botão FELIZ!"),
              ),
              const SizedBox(height: 10),
              //---------------------------------------
              //Quadrado Amarelo------------------------
              AnimatedContainer( //animatedContainer = container que tem animação de transição
                duration: const Duration(seconds: 1),
                width: 120,
                height: 120,
                color: const Color.fromARGB(255, 255, 210, 29)
              ),
              const SizedBox(height: 10),
            ],
          ),
        )
      ),
    );
  }
}