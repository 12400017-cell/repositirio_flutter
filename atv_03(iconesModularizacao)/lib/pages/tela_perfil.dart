import 'package:flutter/material.dart';

//Classe da TelaPerfil
class TelaPerfil extends StatelessWidget{
  //Inicializando/COntructo
  const TelaPerfil({super.key});

  //Criando o widget principal
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            //------------------------------------------------------------
            const Text(
              "Leonardo Silva",
              style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 30),
            //CARD EMAIL-------------------------------------------------
            Card(
              child: ListTile(//cria uma lista
                leading: const Icon(Icons.email), //Icone(imagem a ESQUERDA)
                title: const Text("Email"),
                subtitle: const Text("leonardo@gmail.com")
              ),
            ),
            //CARD TELEFONE----------------------------------------------
            Card(
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Telefone"),
                subtitle: const Text("(13) 11111-1111")
              ),
            ),
            //Card Cidade----------------------------------------------
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text("Cidade"),
                subtitle: const Text("Belo Horizonte - MG")
              ),
            ),
            const SizedBox(height: 30),
            //---------------------------------------------------------
            //Botão editar perfil
            ElevatedButton.icon(
              onPressed: () {print("Editar perfil");},
              icon: const Icon(Icons.edit),
              label: const Text('Editar Perfil')
            ),
          ],
        ),
      ),
    );
  }
}