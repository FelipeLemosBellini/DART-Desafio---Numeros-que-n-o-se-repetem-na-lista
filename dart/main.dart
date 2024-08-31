void main() {
  List<int> numbers = [2, 7, 7, 2, 3, 2, 7];

  List<CadastroNumero> cadastroNumero = [];

  for (int number in numbers) {
    bool novoNumero = true;
    for (CadastroNumero cadastro in cadastroNumero) {
      if (number == cadastro.number) {
        cadastro.increment();
        novoNumero = false;
      }
    }

    if (novoNumero) {
      cadastroNumero.add(CadastroNumero(counter: 1, number: number));
    }
  }

  for (CadastroNumero cadastro in cadastroNumero) {
    print("Número: " + cadastro.number.toString() + " repetição -> " + cadastro.counter.toString());
  }

  print("\nNumeros que aparecem somente uma única vez\n");
  for (CadastroNumero cadastro in cadastroNumero) {
    if (cadastro.counter == 1) {
      print("Número: " + cadastro.number.toString() + " repetição -> " + cadastro.counter.toString());
    }
  }
}

class CadastroNumero {
  int counter = 1;
  int number;

  CadastroNumero({
    required this.counter,
    required this.number,
  });

  void increment() {
    counter = counter + 1;
  }
}
