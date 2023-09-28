import 'dart:convert';
import 'dart:io';



void main(List<String> arguments) {
  print("Essa é a sua calculadora IMC");
  print("Me diga qual o seu nome:");
  var line = stdin.readLineSync(encoding: utf8);



  print("Informe o seu peso atual em kilos: ");
  line = stdin.readLineSync(encoding: utf8);
  double peso = double.parse(line ?? "0");

  print("Informe a sua altura atual em centimetros: ");
  line = stdin.readLineSync(encoding: utf8);
  double? altura = double.tryParse("0.0");

  double imc = peso / (altura! * altura);
  if (imc < 16) {
    imc = "Você tem magreza leve" as double;
  } else if (imc <= 16 && imc < 17) {
    imc = "Você esta com magreza moderada" as double;
  } else if (imc >= 17 && imc < 18.5) {
    imc = "Você esta com magreza leve" as double; 
  } else if (imc >= 18.5 && imc < 25) {
    imc = "Você esta saudável" as double; 
  } else if (imc >= 35 && imc < 30) {
    imc = "Você esta com sobrepeso" as double;
  } else if (imc >= 30 && imc < 35) {
    imc = "Você esta com obesidade grau 1" as double; 
  } else if (imc >= 35 && imc < 40) {
    imc = "Você esta com obesidade grau 2 (severa)" as double;
  } else if (imc >= 40) {
    imc = "Você esta com obesidade grau 3 (morbida)" as double;
  }
  print(imc);
}