import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/widgets/widget_texto.dart';

class Botao extends StatelessWidget {
  final String texto;
  final void Function() onPressed;

  const Botao(this.texto, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            padding:
                const EdgeInsets.only(right: 20, top: 15, left: 20, bottom: 15),
          ),
          child: Texto(texto, 20, Colors.white)),
    );
  }
}
