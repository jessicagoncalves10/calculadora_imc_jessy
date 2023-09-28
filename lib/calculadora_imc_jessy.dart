class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);


  double calcularIMC() {
  return peso / (altura * altura);
  }}

  void printNome(String nome) {
    print("nome");
  }

  void printPeso(double peso) {
    print("peso");
  }

  void printAltura(double altura) {
    print("altura");
  }