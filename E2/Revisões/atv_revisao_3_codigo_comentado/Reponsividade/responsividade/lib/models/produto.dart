import 'package:flutter/material.dart';

//Essa classe representa os dados de um produto
//ela não desenha anda na tela
//apenas "guarda" informações
//Ela esta sendo importada dentro dos arquivos da pasta widgets
class Produto {
  final IconData icone;
  final String nome;
  final String descricao;
  final String preco;

  Produto(
    this.icone,
    this.nome,
    this.descricao,
    this.preco,
  );
}
