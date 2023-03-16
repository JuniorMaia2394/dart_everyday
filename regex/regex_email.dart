import 'dart:io';

main() {
  print('Digite algo:');
  final text = stdin.readLineSync() ?? '';
  // final email = 'testetestando.com.br';

  // final regex = RegExp(r'[a-z0-9.-_]+@[a-z0-9.-_]');

  // final isEmail = regex.hasMatch(email);
  // print(isEmail);
  checkText(text.toString());
}

void checkText(String text) {
  if (RegExp(r'[a-z0-9.-_]+@[a-z0-9.-_]').hasMatch(text)) {
    print('é um email');
  } else if (RegExp(r'\d{2}/\d{2}/\d{2}/').hasMatch(text)) {
    print('é um horario');
  } else if (RegExp(r'\d?\d[-/]\d?\d[-/]d?\d?\d\d').hasMatch(text)) {
    print('é uma data');
  } else if (RegExp(r'\d{3}\.\d{3}\.\d{3}-\d{2}').hasMatch(text)) {
    print('é um cpf');
  } else if (RegExp(r'\d{2}\.\d{3}\.\d{3}\/0001-\d{2}').hasMatch(text)) {
    print('é um cnpj');
  }
}
