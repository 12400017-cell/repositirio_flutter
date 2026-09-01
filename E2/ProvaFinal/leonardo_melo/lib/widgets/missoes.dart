import 'package:flutter/material.dart';
import 'package:leonardo_melo/pages/detalhes.dart';

class CartaoMissoes extends StatelessWidget{
  final String nome;
  final String destino;
  final IconData icone;
  final String nivelDificuldade;

  const CartaoMissoes({
    super.key,
    required this.nome,
    required this.destino,
    required this.icone,
    required this.nivelDificuldade,
  });

  @override
  Widget build(BuildContext context){
  return Card(
    child: Row(
      children: [
        Icon(icone, size:50),
        const SizedBox(width: 20),
        Column(
          children: [
            Text(nome, style: const TextStyle(fontSize: 18)),
            Text(destino, style: const TextStyle(color:Color.fromARGB(255, 168, 168, 168)),)
          ]
        ),
        //Botão para ver detalhes
        const SizedBox(width: 80),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return TelaDetalhes();
                  },
              ),
            );
          },
          child: Text("Detahes")
        )
      ],
    ),
  );
  }
  


}
