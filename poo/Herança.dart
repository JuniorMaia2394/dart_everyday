import 'ModelandoObjeto.dart';

main() {
  final medico = Medico(crm: 123456, name: 'José', altura: 1.88, peso: 77);
  print(medico.imc());
}

class Medico extends Pessoa {
  final int crm;

  Medico(
      {required this.crm,
      required String name,
      required double altura,
      required double peso})
      //o super é em relação ao contrutor da classe que Medico esta herdando
      : super(nome: name, altura: altura, peso: peso);
}
