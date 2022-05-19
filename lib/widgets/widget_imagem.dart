import 'package:flutter/material.dart';

class Imagem extends StatefulWidget {
  final String caminhoArquivo;

  const Imagem({Key? key, required this.caminhoArquivo}) : super(key: key);

  @override
  State<Imagem> createState() => _ImagemState();
}

class _ImagemState extends State<Imagem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.caminhoArquivo,
      filterQuality: FilterQuality.high,
      fit: BoxFit.cover,
      scale: 50,
      colorBlendMode: BlendMode.darken,
    );
  }
}
