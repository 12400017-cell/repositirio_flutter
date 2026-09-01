import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" Lanchonete Express"), centerTitle: true,),
      body: Center(//para centralizar os textos dentro do body coloque o center()
        child: Column(
          children: [
            Text("Bem vindo a  Lanchonete Express", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );

  }
}