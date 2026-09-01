import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //para sumir marca d'agua
      debugShowCheckedModeBanner: false,
      title: 'Game Explorer',

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //O tema do app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),

      //linkando o inicio do app a esse tala
      home: const TelaInicio(),
    );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    //Apartir daqui começa a telaInicio
    return Scaffold(
      //Barra superior do app
      appBar: AppBar(
        title: const Text('Game Explorer'),
        centerTitle: true,
      ),
      //Aqui deve ficar o menu lateral-------------------------------------------------
      endDrawer: Drawer( //endDrawe é para ele ficar na direita(drawer fica só na esquerda)
        child: ListView(
          children: [
            //Cabeçario barra leteral
            const DrawerHeader(
              child: Text("Cabeçario"),
            ),

            //TILE 1 da barra leteral
            ListTile(
              title: const Text("App Jogos"),
            )
          ],
        ),
      ),

      //Corpo do aplicativo
      body: const SingleChildScrollView(
        child: Padding(
          //Padding nos elementos do body
          padding: EdgeInsets.all(20),
          //Itens alinhados em coluna
          child: Column(
            //Icone do controle
            children: [
              Icon(
                Icons.sports_esports,
                size: 100,
              ),

              SizedBox(height: 16),

              //Texto to controle
              Text(
                'Bem-vindo ao Game Explorer!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              //Texto detalahdo do controle
              Text(
                'Explore jogos, descubra novas aventuras '
                'e organize seus conteúdos favoritos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 30),
              //Widget 1(Explorar)
              CardJogo(
                icone: Icons.explore,
                titulo: 'Explorar',
                descricao:
                    'Descubra novos jogos, mundos e personagens.',
              ),

              SizedBox(height: 12),
              //Widget 2(Favoritos)
              CardJogo(
                icone: Icons.favorite,
                titulo: 'Favoritos',
                descricao:
                    'Organize os jogos que você mais gosta.',
              ),

              SizedBox(height: 12),
              //Widget 3(Conquista)
              CardJogo(
                icone: Icons.emoji_events,
                titulo: 'Conquistas',
                descricao:
                    'Acompanhe seus desafios e recompensas.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardJogo extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;

  const CardJogo({
    super.key,
    required this.icone,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Icon(
              icone,
              size: 50,
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(descricao),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
