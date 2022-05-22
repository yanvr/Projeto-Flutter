import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/models/Tarefa.dart';
import 'package:gerenciador_tarefas/repositories/impl/tarefa_repository_impl.dart';
import 'package:gerenciador_tarefas/repositories/itarefa_repository.dart';

import '../widgets/widget_botao.dart';
import '../widgets/widget_input_text.dart';

class AdicionarTarefa extends StatefulWidget {
  AdicionarTarefa({Key? key}) : super(key: key);

  @override
  State<AdicionarTarefa> createState() => _AdicionarTarefaState();
}

class _AdicionarTarefaState extends State<AdicionarTarefa> {
  final _nome = TextEditingController();
  final _descricao = TextEditingController();
  final _data = TextEditingController();
  final ITarefaRepository _repository = TarefaRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar tarefa"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InputText("Nome", _nome),
          InputText("Descrição", _descricao),
          InputText("Data", _data),
          Botao("Salvar", () => _onClick()),
        ],
      ),
    );
  }

  Future _onClick() async {
    Tarefa tarefa = Tarefa();
    tarefa.nome = _nome.text;
    tarefa.descricao = _descricao.text;
    _repository.salvar(tarefa);
  }
}
