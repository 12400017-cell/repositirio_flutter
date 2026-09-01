import 'package:flutter/material.dart';

class TelaMissoes extends StatefulWidget{
  const TelaMissoes({super.key});
  @override 
  State<TelaMissoes> createState() => _TelaMissoesState();
}

class _TelaMissoesState() extends State<TelaMissoesState>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      //body: ,
    );
  }
}