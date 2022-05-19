import 'package:flutter/material.dart';

import '../widgets/widget_botao.dart';
import '../widgets/widget_input_text.dart';
import '../widgets/widget_texto.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  final _texto1 = TextEditingController();
  final _texto2 = TextEditingController();
  var variavel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercício 2"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: const EdgeInsets.only(left: 50, top: 30, right: 50, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputText("Meu input", _texto1),
          InputText("Meu input", _texto2),
          Botao("Meu Botao", _onClick),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Texto(variavel, 22, Colors.black),
          )
        ],
      ),
    );
  }

  _onClick() {
    setState(() {});
  }
}
