import 'dart:io';

main() {
  // for (var i = 0; i < 10; i++) {
  //   print('Olá $i');
  // }

  // bool condicao = true;
  // int i = 0;

  // while (condicao) {
  //   print('Olá $i');
  //   if (i > 9) {
  //     condicao = false;
  //   }
  //   i++;
  // }

  bool condicao = true;

  while (condicao) {
    print(
        "=============================== Escreva um Texto ===============================");
    String? inputText = stdin.readLineSync();
    if (inputText == "sair") {
      condicao = false;
      print(
          "=============================== Programa Finalizado ===============================");
    } else {
      print("Você digitou: $inputText");
    }
  }
}
