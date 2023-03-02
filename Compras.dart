import 'dart:io';

List<String> list_compras = []; //variavel global

main() {
  print(' ===========   BEM-VINDO A LOJA DE COMPRAS  ===========');
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
      print('=====================================');
    } else if (input_opcao == '1') {
      adicionarProduto(list_compras);
    } else if (input_opcao == '2') {
      if (list_compras.length == 0) {
        print('LISTA VAZIA!!! \n');
      } else {
        removerProduto(list_compras);
      }
    } else if (input_opcao == '3') {
      print("\x1B[2J\x1B[0;0H");
      if (list_compras.length == 0) {
        print('LISTA VAZIA!!! \n');
        print('=====================================');
      } else {
        print(list_compras.length > 1 ? 'LISTA DE PRODUTOS:' : 'PRODUTO:');
        imprimirProdutos(list_compras);
      }
    } else if (input_opcao == '4') {
      print("\x1B[2J\x1B[0;0H");
      print('FINALIZANDO COMPRAS.... \n');

      list_compras.length == 0
          ? print('LISTA DE COMPRAS VAZIA!!\n')
          : print('LISTA DE COMPRAS:\n');

      imprimirProdutos(list_compras);
      print('QUANTIDADE:  ' + list_compras.length.toString() + '\n');
      print('=====================================');
      condicao = false;
    } else {
      print(' OPÇÃO INVÁLIDA!! \n');
      print('=====================================');
    }
  }
}

imprimirProdutos(list_compras) {
  for (var i = 0; i < list_compras.length; i++) {
    print("\x1B[2J\x1B[0;0H");
    print(list_compras.length > 1
        ? 'PRODUTOS:\n' + list_compras.toString().toUpperCase() + '\n'
        : 'PRODUTO:\n' + list_compras[i].toUpperCase() + '\n');
  }
}

adicionarProduto(list_compras) {
  print("\x1B[2J\x1B[0;0H");
  print('ADICIONE O PRODUTO: ');
  String? input_produto = stdin.readLineSync();
  list_compras.add(input_produto!);
  print('PRODUTO ADICIONADO COM SUCESSO!');
  print('=====================================');
  // print("\x1B[2J\x1B[0:0H");
}

removerProduto(list_compras) {
  print("\x1B[2J\x1B[0;0H");
  print('REMOVA O PRODUTO: ');
  String? input_produto_remove = stdin.readLineSync();
  list_compras.remove(input_produto_remove);
  print('PRODUTO REMOVIDO COM SUCESSO!');
  print('=====================================');
}
