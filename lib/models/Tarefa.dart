import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

class Tarefa {
  int id = 0;
  String nome = '';
  String descricao = '';
  DateTime data = DateTime.now();

  Tarefa();

  Map<String, dynamic> toJson() =>
      {'nome': nome, 'descricao': descricao, 'data': data};

  Tarefa.fromSnapshot(DocumentSnapshot snapshot)
      : id = snapshot['id'],
        nome = snapshot['nome'],
        descricao = snapshot['descricao'],
        data = snapshot['data'];
}
