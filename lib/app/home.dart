import 'package:callapi/data/api.dart';
import 'package:flutter/material.dart';
import '../models/model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Api api = Api();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chamada GET'),
      ),
      body: FutureBuilder<Model>(
        future: api.fetchModel(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final model = snapshot.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nome: ${model.nome}'),
                Text('Estilo: ${model.estilo}'),
                Text('Cor: ${model.cor}'),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('Erro: ${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}