import 'package:flutter/material.dart';

class Validadores {
  static String? textoObrigatorio(String? valor) {
    // (FEITO)TODO 1: rejeite null, texto vazio e texto formado apenas por espaços.
    // Retorne uma mensagem de erro ou null quando o valor for válido.
    if(valor == null || valor.trim().isEmpty) return "Erro: Valor vazio ou só com espaços";
    return null;
  }

  static String? quantidade(String? valor) {
    // (FEITO)TODO 2: aceite somente inteiros maiores ou iguais a zero.
    // Não converta uma quantidade inválida para zero.

    //Se valor for nulo ou vazio
    //O parse não funciona se o valor pode ser nulo, por tanto
    //devo criar uma exigencia de valor presente para o user colocar um valor apropriado
    if(valor == null || valor == valor.isEmpty )return "Digite Um valor valido";
    
    //Fazendo parse
    int? valorInt = int.tryParse(valor);
    //Se valor não for inteiro
    if(valorInt is !int) return "Digite um valor Inteiro";
    //Se o valor é intero e menor que 0
    if(valorInt < 0) return "Digite um valor maior que 0";
    

    return null;
  }
}
