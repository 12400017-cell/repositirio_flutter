import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/filme_viewmodel.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _adicionar() async {
    final titulo = _controller.text.trim();
    if (titulo.isEmpty) return; // não cadastra filme sem nome

    await context.read<FilmeViewModel>().adicionarFilme(titulo);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<FilmeViewModel>();
    final filmes = vm.filmes;

    return Scaffold(
      appBar: AppBar(title: const Text('Minha Lista de Filmes')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Digite o nome do filme',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => _adicionar(),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _adicionar,
              child: const Text('Adicionar'),
            ),
            const Divider(height: 32),
            Expanded(
              child: filmes.isEmpty
                  ? const Center(child: Text('Nenhum filme cadastrado'))
                  : ListView.builder(
                      itemCount: filmes.length,
                      itemBuilder: (context, i) {
                        final filme = filmes[i];
                        return ListTile(
                          leading: Text('${i + 1}'),
                          title: Text(
                            filme.titulo,
                            style: TextStyle(
                              decoration: filme.assistindo
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                          trailing: Checkbox(
                            value: filme.assistindo,
                            onChanged: (_) => vm.alterarStatus(filme),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}