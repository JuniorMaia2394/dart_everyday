import 'dart:io';

main() {
  print(' ===========   BEM-VINDO A LOJA DE COMPRAS  ===========');

  List<String> list_compras = [];
  bool condicao = true;

  while (condicao) {
    print('SELECIONE UMA OPÇÃO: ');
    print('[ 0 ] MENU');
    print('[ 1 ] ADICIONAR PRODUTO');
    print('[ 2 ] REMOVER PRODUTO');
    print('[ 3 ] VER PRODUTOS');
    print('[ 4 ] FINALIZAR COMPRAS');

    String? input_opcao = stdin.readLineSync();
    if (input_opcao == '0') {
      list_compras.length == 0 ? print(' NÃO TEM PRODUTOS!\n') : '';
      print(' ===========  ATÉ BREVE!!!  =========== ');
      condicao = false;
    } else if (input_opcao == '1') {
      print('ADICONE O  PRODUTO: ');
      String? input_produto = stdin.readLineSync();
      list_compras.add(input_produto!);
    } else if (input_opcao == '2') {
      if (list_compras.length == 0) {
        print('LISTA VAZIA!!! \n');
      } else {
        print('REMOVA O PRODUTO: ');
        String? input_produto_remove = stdin.readLineSync();
        list_compras.remove(input_produto_remove);
      }
    } else if (input_opcao == '3') {
      if (list_compras.length == 0) {
        print('LISTA VAZIA!!! \n');
      } else {
        print('LISTA DE PRODUTO(s): ');
        for (var i = 0; i < list_compras.length; i++) {
          print(list_compras[i].toUpperCase() + '\n');
        }
      }
    } else if (input_opcao == '4') {
      print('FINALIZANDO COMPRAS.... \n');

      list_compras.length == 0
          ? print('LISTA DE COMPRAS VAZIA!!\n')
          : print('LISTA DE COMPRAS:\n');

      for (var i = 0; i < list_compras.length; i++) {
        print(list_compras[i].toUpperCase());
      }
      print('QUANTIDADE:  ' + list_compras.length.toString() + '\n');
      condicao = false;
    } else {
      print(' OPÇÃO INVÁLIDA!! \n');
    }
  }
}
