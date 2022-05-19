import 'package:flutter/material.dart';

import '../widgets/widget_botao.dart';
import '../widgets/widget_input_text.dart';
import '../widgets/widget_texto.dart';

class AdicionarTarefa extends StatefulWidget {
  const AdicionarTarefa({Key? key}) : super(key: key);

  @override
  State<AdicionarTarefa> createState() => _AdicionarTarefaState();
}

class _AdicionarTarefaState extends State<AdicionarTarefa> {
  final _texto1 = TextEditingController();
  final _texto2 = TextEditingController();
  var variavel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercício 1"),
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
          Texto(variavel, 22, Colors.black)
        ],
      ),
    );
  }

  _onClick() {
    setState(() {
    });
  }
}
