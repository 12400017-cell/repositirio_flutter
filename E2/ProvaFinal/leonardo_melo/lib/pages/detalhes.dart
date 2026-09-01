import 'package:flutter/material.dart';
import 'package:leonardo_melo/pages/teleInicial.dart';


class TelaDetalhes extends StatefulWidget { // stateless -> não muda. stateful -> muda.
  const TelaDetalhes({super.key});

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
  // criação do estado da tela (que mudará)
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text("Detalhes sobre missão"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Card(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const[
                          DataColumn(label: Text("Nome:")),
                          DataColumn(label: Text("Variavel")),
                        ], 
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(Text("Destino:")),
                              DataCell(Text("Variavel")),
                            ],                    
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text("Dificuldade:")),
                              DataCell(Text("Variavel")),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text("Ojetivo:")),
                              DataCell(Text("Variavel")),
                            ],
                          ),
                        ]
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) {
                              return TelaInicial();
                            },
                        ),
                      );
                    },
                    child: Text("Voltar")
                  )
                ],
              )
            )
          )
      ),
    );
  }
}