main() {
  final corsa = Carro(qtdPortas: 4, marca: 'GM', nome: 'Corsa');
  final gol = Carro(qtdPortas: 4, marca: 'Volkswagen', nome: 'Gol');

  print(corsa.nomeCompleto());
  print(gol.nomeCompleto());
}

class Carro {
  late int qtdPortas;
  late String nome;
  late String marca;

  Carro({required int qtdPortas, required String nome, required String marca}) {
    //variavel global(this.qtdPortas) = variavel local(qtdPortas);
    this.qtdPortas = qtdPortas;
    this.nome = nome;
    this.marca = marca;
  }

  String nomeCompleto() {
    return '$marca $nome';
  }
}
