import 'package:gerenciador_tarefas/models/Tarefa.dart';

abstract class ITarefaRepository {

  Future<void> salvar(Tarefa tarefa);
  Future<List<Map<String, dynamic>>> buscarTodas();
  Future<Map<String, dynamic>> buscarPorId(int id);
  Future<void> editar(int id);
  Future<void> excluir(int id);
}