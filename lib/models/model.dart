class Model {
  final String nome;
  final String estilo;
  final String cor;

  Model({required this.nome, required this.estilo, required this.cor});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      nome: json['nome'],
      estilo: json['estilo'],
      cor: json['cor'],
    );
  }
}