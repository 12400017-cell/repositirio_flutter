import 'package:flutter/material.dart';
//Widget visual de um produto
//ele recebe os dados e mostra na tela

class ProdutoCard extends StatelessWidget {
  final String nome;
  final String descricao;
  final String perco;
  //Variaveis obrigatorias para a contrução do widget
  const ProdutoCard(
    {
      super.key,
      required this.nome,
      required this.descricao,
      required this.perco
    }
  );

  //Contruindo o cart
  @override
  Widget build(BuildContext context) {
    return Card(); 
  }
}