import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;
  final double tamanho;
  final Color cor;

  const Texto(this.texto, this.tamanho, this.cor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: tamanho, color: cor),
    );
  }
}
