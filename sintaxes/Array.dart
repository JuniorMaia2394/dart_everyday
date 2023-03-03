import 'dart:io';

main() {
  // var nome = [];

  // var condicao = true;
  // while (condicao) {
  //   print("DIGITE UM NOME: ");
  //   var inputText = stdin.readLineSync();
  //   if (inputText == "sair") {
  //     condicao = false;
  //     print("PROGRAMA FINALIZADO");
  //   } else {
  //     nome.add(inputText);
  //   }
  //   print(nome);
  //   print("\n");
  // }

  List<String> nome = [
    "Teste 1",
    "Teste 2",
    "Teste 3",
  ];
  nome.add("Teste 4");

  for (var i = 0; i < nome.length; i++) {
    print(nome[i]);
  }
}
