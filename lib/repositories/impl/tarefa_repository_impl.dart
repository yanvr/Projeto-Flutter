import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gerenciador_tarefas/models/Tarefa.dart';
import 'package:gerenciador_tarefas/repositories/itarefa_repository.dart';

class TarefaRepositoryImpl implements ITarefaRepository {
  static const nomeColecao = 'tarefas';

  Future<void> salvar(Tarefa tarefa) async {
    return await FirebaseFirestore.instance
        .collection(nomeColecao)
        .doc(tarefa.data.toString().trim())
        .set(tarefa.toJson())
        .then((value) => print("Tarefa adicionada"))
        .catchError((onError) => print("Erro ao gravar no banco $onError"));
  }

  Future<List<Map<String, dynamic>>> buscarTodas() async {
    var resultado = await FirebaseFirestore.instance
        .collection(nomeColecao)
        .get()
        .catchError((onError) => print("Erro ao buscar no banco $onError"));

    return resultado.docs.map((e) => e.data()).toList();
  }

  Future<Map<String, dynamic>> buscarPorId(int id) async {
    var resultado = await FirebaseFirestore.instance
        .collection(nomeColecao)
        .where('id', isEqualTo: id)
        .get()
        .catchError((onError) => print("Erro ao buscar no banco $onError"));

    return resultado.docs.first.data();
  }

  Future<void> editar(int id) async {
    var tarefa = await buscarPorId(id);

    if (tarefa.isEmpty) {
      print("Nenhuma tarefa encontrada");
    }
    FirebaseFirestore.instance.doc(nomeColecao).update(tarefa);
  }

  Future<void> excluir(int id) async {
    var tarefa = await buscarPorId(id);

    if (tarefa.isEmpty) {
      print("Nenhuma tarefa encontrada");
    }
    FirebaseFirestore.instance
        .doc(nomeColecao)
        .delete()
        .then((value) => print("Tarefa excluída com sucesso"))
        .catchError((onError) => print("Erro ao editar a tarefa $onError"));
  }
}
