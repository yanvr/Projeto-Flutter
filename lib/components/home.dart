import 'package:flutter/material.dart';

import 'adicionar_tarefa.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: <Widget>[
          IconButton(
              onPressed: () => _abreOutraTela(context, const AdicionarTarefa()),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
    );
  }

  _abreOutraTela(context, route) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => route));
  }
}
