import 'package:flutter/foundation.dart';
import '../models/filme.dart';
import '../services/filme_services.dart';

class FilmeViewModel extends ChangeNotifier {
  final FilmeService _service = FilmeService.instance;

  // Lista só para a interface. Quem guarda os dados de verdade é o SQLite.
  List<Filme> _filmes = [];

  // Getter para a tela ler a lista sem poder alterá-la diretamente
  List<Filme> get filmes => List.unmodifiable(_filmes);

  // SELECT: carregar os filmes salvos
  Future<void> carregarFilmes() async {
    _filmes = await _service.listar();
    notifyListeners();
  }

  // INSERT: adicionar um novo filme
  Future<void> adicionarFilme(String titulo) async {
    final filme = Filme(titulo: titulo, assistindo: false);
    await _service.inserir(filme);
    await carregarFilmes(); // recarrega do banco e já chama notifyListeners()
  }

  // UPDATE: alterar o status de assistido
  Future<void> alterarStatus(Filme filme) async {
    await _service.atualizarStatus(filme.id!, !filme.assistindo);
    await carregarFilmes();
  }
}