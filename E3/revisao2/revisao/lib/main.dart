import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Acessando paginas especificas para usar suas funções
import 'pages/impressao_page.dart'; //
import 'providers/impressao_provider.dart'; //
import 'repositories/impressao_repository.dart'; //
import 'services/database_service.dart'; //

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //serve para evitar erros de inicialização(prblemas com a interação do flutter com a maquina + sua "engine")
  
  //Iniciando app
  runApp(ChangeNotifierProvider(
    // Monta as dependências e inicia a consulta antes de apresentar os dados.
    create: (_) => ImpressaoProvider(
      ImpressaoRepository(DatabaseService()))..iniciar(),
    child: const ImpressaoApp(),
    )
  );
}


//Aqui esta a inicialização da página
class ImpressaoApp extends StatelessWidget {
  const ImpressaoApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Fila de impressão',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    //Abrindo pagina inicial(pages/impressao_page.dart)
    home: const ImpressaoPage(),
  );
}
