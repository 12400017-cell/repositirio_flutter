import 'package:flutter/material.dart';
import 'package:leonardo_melo/widgets/missoes.dart';


class TelaInicial extends StatefulWidget { // stateless -> não muda. stateful -> muda.
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
  // criação do estado da tela (que mudará)
}

class _TelaInicialState extends State<TelaInicial> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Central de missões espaciais"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CartaoMissoes(
                    nome: "Artemis", 
                    destino: "Lua", 
                    icone: Icons.egg_sharp, 
                    nivelDificuldade: "intermediaria", 
                  ),
                  CartaoMissoes(
                    nome: "Madoca", 
                    destino: "Jupter", 
                    icone: Icons.egg_sharp, 
                    nivelDificuldade: "intermediaria", 
                  ),
                  CartaoMissoes(
                    nome: "Sailor", 
                    destino: "Europa", 
                    icone: Icons.egg_sharp, 
                    nivelDificuldade: "Difícil", 
                  ),
                  //Botão para perfil do usuario
                ],
              )
            ) ,
          ),
        )
      )
    );
  }
}