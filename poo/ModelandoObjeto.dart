main() {
  final p1 = Pessoa(nome: 'João', altura: 1.68, peso: 90);
  final p2 = Pessoa(nome: 'Maria', altura: 1.77, peso: 68);

  print(p1.imc());
  print(p2.imc());
}

class Pessoa {
  late final String nome;
  late final double altura;
  late final double peso;

  Pessoa({required this.nome, required this.altura, required this.peso});

  String imc() {
    return (peso / (altura * altura)).toStringAsFixed(2);
  }
}
