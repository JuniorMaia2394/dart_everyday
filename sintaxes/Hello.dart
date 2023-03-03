import 'dart:io';

void main() {
  calculoImc();
}

calculoImc() {
  print("================ CALCULADORA IMC ================");

  print("DIGITE SEU PESO:");
  String? input_peso = stdin.readLineSync();
  int peso = int.parse(input_peso!);

  print("DIGITE SUA ALTURA");
  String? input_altura = stdin.readLineSync();
  double altura = double.parse(input_altura!);

  double imc = calcimc(peso, altura);

  imprimirResultado(imc);
}

double calcimc(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double imc) {
  var imc_formated = imc.toStringAsFixed(1);

  if (imc < 18.5) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: MAGREZA");
    print("CONSEQUÊNCIAS PARA A SAÚDE: FADIGA, STRESS, ANSIEDADE ");
  } else if (imc > 18.5 && imc < 24.9) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: PESO NORMAL");
    print(
        "CONSEQUÊNCIAS PARA A SAÚDE: MENOR RISCO DE DOENÇAS CARDÍACAS E VASCULARES ");
  } else if (imc > 25 && imc < 29.9) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: SOBREPESO");
    print("CONSEQUÊNCIAS PARA A SAÚDE: FADIGA, MÁ CIRCULAÇÃO, VARIZES ");
  } else if (imc > 30 && imc < 34.9) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: OBESIDADE GRAU I");
    print(
        "CONSEQUÊNCIAS PARA A SAÚDE: DIABETES, ANGINA, INFARTO, ATEROSCLEROSE ");
  } else if (imc > 35 && imc < 40) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: OBESIDADE GRAU II");
    print("CONSEQUÊNCIAS PARA A SAÚDE: APNEIA DO SONO, FALTA DE AR ");
  } else if (imc > 40) {
    print("SEU IMC É: " + imc_formated);
    print("CLASSIFICAÇÃO: OBESIDADE GRAU III ");
    print(
        "CONSEQUÊNCIAS PARA A SAÚDE: REFLUXO, DIFICULDADE PARA SE MOVER, ESCARAS, DIABETES, INFARTO, AVC ");
  }
}
