import 'package:atv_revisao_1/pages/telaRevisao.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget{
  const TelaLogin({super.key});
  @override
  State<TelaLogin> createState() => _TelaLogionState();
}

class _TelaLogionState extends State<TelaLogin>{
  final TextEditingController emailControler = TextEditingController(); //controla o campo de email
  final TextEditingController senhaControler = TextEditingController();

  String mensagemErro = ""; //Guardar menssagem de erro que pode aparecer na tela

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Icon(
                Icons.lock,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                "Tela de Loguin",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Digite seu email e senha para acessar o app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),

              TextField(//Campo para o EMAIL
                controller: emailControler,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Digite seu Email", //dica dentro do campo input
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)
                ),
              ),
              const SizedBox(height: 15),
              TextField(//Campo para a senha
                controller: senhaControler,
                obscureText: true, //para senha ficar escondida
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  labelText: "Senha",
                  hintText: "Digite sua senha", //dica dentro do campo input
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock)
                ),
              ),
              const SizedBox(height: 15),
              Text(
                mensagemErro,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center
              ),

              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: (){
                  String email = emailControler.text; //pega o email dgitado
                  String senha = senhaControler.text; //pega a senha dgitada

                  if (!email.contains("@")){//Se não tem @ no email
                    setState(() {
                      mensagemErro = "Digite um email valido";
                    });
                  }
                  else if(senha.isEmpty){//Se senha está vazia
                    setState(() {
                      mensagemErro = "Digite sua senha";
                    });
                  }
                  else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaRevisao()
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.login),
                label: const Text("Entrat")
              )
            ],
          ),
        )
      )
    );
  }
}