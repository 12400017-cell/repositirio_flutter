import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_perfil.dart';
//2)No arquivo tela_home.dart, 
//crie a tela principal do aplicativo usando Scaffold, AppBar e body.

//Criando idget interativo
class TelaHome extends StatefulWidget{
  const TelaHome({super.key});
  @override
  State<TelaHome> createState() => _TelaHomeState();
}

//Onde o widget é programado
class _TelaHomeState extends State<TelaHome>{
  String mensagem = 'Clique em um botão para ver mensagem';

  void mudarMensagem(String novaMensagem) {setState(() {mensagem = novaMensagem;});}

  //Viasul da tela inicial
  Widget build(BuildContext context){
    return Scaffold(
      //Barra suerior
      appBar: AppBar(title: Text("Meu App Ícones"), centerTitle: true),

      //Corpo do app
      body: Padding(//dentro tera o tamanho do padding e os visuais DENTRO dele
        padding:const EdgeInsets.all(16), //o padding

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,//Para tudo dentro da caluna se sentralizar
          children: [ //aqui é onde o boddy todo é construido
            //TITULOS------------------------------------------------------
            const Text(
              "Bem-vindo ao app Ícones",
              style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 8), //cria ua caixa, nesse contexto, usado para separar 2 elementos

            const Text(
              "Escolha uma das opções a baixo",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 8),
            
            //CONTAINER 1------------------------------------------------------
            Container(
              padding: const EdgeInsets.all(5), //padding em todas as direções || isso define o tamanho da caaixa!?
              margin: const EdgeInsets.only(bottom: 16),//margim apenas na base

              decoration: BoxDecoration( //dando visual ao conteiner criado
                color:const Color.fromARGB(30, 255, 168, 7),//cor do objeto
                borderRadius: BorderRadius.circular(12) //arredondar bordas
              ),

              //>>>>>>>>>TEXTO QUE SERA MODIFICADO AO APERTAR BOTÃO <<<<<<<<<<<<
              child: Text(
                mensagem,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),

            //ICONES-----------------------------------------------------
            //Perfil
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Veja as informações do usuário.',
              textoBotao: 'Ver perfil',
              cor: Colors.blue,
              onPressed: () {mudarMensagem('Você clicou em Perfil');}
            ),
            //Configurações
            CardIcone(
              icone: Icons.settings, 
              titulo: "Configurações", 
              descricao: "Veja as informações do usuário", 
              textoBotao: "Ver Perfil", 
              cor: Colors.blue, 
             onPressed: () {mudarMensagem('Você clicou em configurações');}),
            //Favoritos
            CardIcone(
              icone: Icons.favorite, 
              titulo: "Favoritos", 
              descricao: "Veja seus itens favoritos", 
              textoBotao: "Abrir", 
              cor: Colors.red, 
             onPressed: () {mudarMensagem('Você clicou em favoritos');}),
            //Perfil 2
            CardIcone(
              icone: Icons.fit_screen, 
              titulo: "Perfil 2", 
              descricao: "Veja as informações do usuário", 
              textoBotao: "Ver Perfil", 
              cor: Colors.blue, 
             onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => TelaPerfil()));}
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          mudarMensagem('Você clicou no botão flutuante');
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}