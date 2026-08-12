import 'package:flutter/material.dart';

//tudo em animação é statfull
class TelaAnimatedContainer extends StatefulWidget {
  const TelaAnimatedContainer({super.key});

  @override
  State<TelaAnimatedContainer> createState() {
    return _TelaAnimatedContainerState();
  }
}

class _TelaAnimatedContainerState extends State<TelaAnimatedContainer> {
  bool expandido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'AnimatedContainer',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 10),

                const Text(
                  'Clique no card para animar tamanho, cor e raio da borda',
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                Container( // Adicionei esse Container para que o texto em cima do AnimatedContainer não fique mexendo também
                  height: 300,
                  width: 300,
                  alignment: Alignment.center,

                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        expandido = !expandido; // Que inteligente (false vira true e vice-versa)
                      });
                    },
                    child: AnimatedContainer( // Container que se altera automaticamente quando uma propriedade muda
                      duration: const Duration(milliseconds: 500),
                      width: expandido ? 300 : 130,
                      /*
                      Operador Ternário:

                      É uma abreviação de uma condição if/else.
                      Se escrito com if/else, o width ficaria assim:

                      if (expandido) {
                        width: 300
                      } else {
                        width: 130
                      }

                      (lembrando que 'expandido' é uma variável booleana que foi declarada no início de _TelaAnimatedContainerState!)
                      */
                      height: expandido ? 300 : 130,
                      decoration: BoxDecoration(
                        color: expandido ? Colors.blue : Colors.orange,
                        borderRadius: BorderRadius.circular(
                          expandido ? 50 : 5,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              expandido ? Icons.check_circle : Icons.touch_app,
                              color: Colors.white,
                              size: 40,
                            ),
                            
                            const SizedBox(height: 10),
                            
                            const Text(
                              'Clique!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}