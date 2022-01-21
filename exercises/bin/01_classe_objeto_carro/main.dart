void main() {
  // 1. Declaração de variáveis
  final carro1 = Carro('Fiat', 'Uno', 'Branco', 1.9, 'flex');
  final carro2 = Carro('Chevrolet', 'Celta', 'Cinza', 1.2, 'gasolina');
  final carro3 = Carro('Ford', 'Ford K', 'Preto', 1.7, 'gasolina');

  // 2. Atribuição de valores (ENTRADA)

  // 3. Validações e Cálculos (PROCESSAMENTO)

  // 4. Mostra o resultado (SAÍDA)
  carro1.imprimir();
  carro2.imprimir();
  carro3.imprimir();
}

class Carro {
  String? _montadora;

  String? _cor;

  String? _modelo;

  String? _combustivel;

  double? _motor;

  Carro(
      this._montadora, this._modelo, this._cor, this._motor, this._combustivel);

  /*

  String get montar(){

    return this._montadora;

  }

  */

  void imprimir() {
    print('Montadora: $_montadora');

    print('Modelo: $_modelo');

    print('Cor: $_cor');

    print('Motor: $_motor');

    print('Combustível: $_combustivel');
  }
}
