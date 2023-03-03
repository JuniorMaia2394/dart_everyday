import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;

  while (condicao) {
    print('======== DIGITE ALGUM COMANDO ========');
    String? comando = stdin.readLineSync();
    if (comando == "sair") {
      print('======== PROGRAMA FINALIZADO ========');
      condicao = false;
    } else if (comando == "cadastro") {
      cadastrar();
      print('======== CADASTRO REALIZADO COM SUCESSO!! ========');
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print('======== COMANDO INVÁLIDO!!! ========');
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print('======== DIGITE SEU NOME ========');
  cadastro["nome"] = stdin.readLineSync();

  print('======== DIGITE SUA IDADE ========');
  cadastro["idade"] = stdin.readLineSync();

  print('======== DIGITE NOME DA SUA CIDADE ========');
  cadastro["cidade"] = stdin.readLineSync();

  print('======== DIGITE NOME DO SEU ESTADO ========');
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);
}
