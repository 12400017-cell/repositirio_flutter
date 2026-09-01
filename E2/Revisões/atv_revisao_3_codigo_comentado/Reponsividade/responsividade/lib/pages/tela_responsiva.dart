import 'package:flutter/material.dart';

import '../models/produto.dart';
import '../widgets/area_produtos.dart';
import '../widgets/resumo_pedido.dart';

class TelaResponsiva extends StatelessWidget {
  const TelaResponsiva({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery - pegar infos da tela inteira
    //infos = tamanho da tela(largura x altura)
    final larguraTela = MediaQuery.of(context).size.width;
    //Produto = lista que esta usando da classe Produto(icon,nome,descrição,valor)
    final produtos = [
      Produto(Icons.laptop_mac, 'Notebook Pro',
          'Ideal para estudos e trabalho.', 'R\$ 3.499'),
      Produto(
          Icons.mouse, 'Mouse Gamer', 'Alta precisão para jogos.', 'R\$ 129'),
      Produto(Icons.keyboard, 'Teclado Mecânico', 'Conforto para digitação.',
          'R\$ 249'),
      Produto(Icons.desktop_windows, 'Monitor 24"', 'Boa imagem para aulas.',
          'R\$ 899'),
      Produto(
          Icons.headphones, 'Headset', 'Áudio limpo para chamadas.', 'R\$ 199'),
      Produto(Icons.chair, 'Cadeira Office', 'Mais conforto para estudar.',
          'R\$ 699'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula de Responsividade'),
        centerTitle: true,
      ),
      //LayoutBuilder permite descobrir o espaço disponivel pera o body
      //com isso conseguimos mudar o lyout dependendo da largura
      body: LayoutBuilder(
        builder: (context, constraints) {
          final largura = constraints.maxWidth;
          //largura disponivel para conteudo

          final celular = largura < 600;
          final tablet = largura >= 600 && largura < 900;
          final desktop = largura >= 900;

          final colunas = celular ? 1 : tablet ? 2 : 3;

          //Define quantas colunas o grid tera
          final alturaCard = celular ? 230.0 : tablet ? 220.0 : 210.0;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  celular
                      ? 'Modo celular'
                      : tablet
                          ? 'Modo tablet'
                          : 'Modo desktop',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Largura atual: ${larguraTela.toStringAsFixed(0)} px'),
                const SizedBox(height: 20),
                //Mantem na proporção do banner
                //isso evita que o banner fique deformado
                AspectRatio(
                  aspectRatio: celular ? 16 / 9 : 16 / 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: FittedBox(
                        child: Text(
                          'Tech Store Responsiva',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Categorias',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Wrap(
                  //Funcoina como uma row, mas quando os itens não cabem na linha
                  //Ele quebra para a proxima linha
                  spacing: 10,//Espaço horizontal entre Chips
                  runSpacing: 10,
                  children: [
                    Chip(label: Text('Notebook')),
                    Chip(label: Text('Mouse')),
                    Chip(label: Text('Teclado')),
                    Chip(label: Text('Monitor')),
                    Chip(label: Text('Headset')),
                    Chip(label: Text('Promoções')),
                  ],
                ),
                const SizedBox(height: 25),
                //Se for desktop usamos row
                if (desktop)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: AreaProdutos(//componente criado
                          produtos: produtos,
                          colunas: colunas,
                          alturaCard: alturaCard,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Expanded(
                        flex: 1,
                        child: ResumoPedido(),//coponente criado
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      AreaProdutos(
                        produtos: produtos,
                        colunas: colunas,
                        alturaCard: alturaCard,
                      ),
                      const SizedBox(height: 20),
                      const ResumoPedido(),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
