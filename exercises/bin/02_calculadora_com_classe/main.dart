void main() {
  final c1 = Calculadora(6, 4, 'adição');
  c1.selecionar();

  final c2 = Calculadora(16, 2, 'subtração');
  c2.selecionar();

  final c3 = Calculadora(302, 10, 'multiplicação');
  c3.selecionar();

  final c4 = Calculadora(2000, 20, 'divisão');
  c4.selecionar();
}

class Calculadora {
  double _n1;
  double _n2;
  String op;

  Calculadora(this._n1, this._n2, this.op);

  final t = Tela();

  void selecionar() {
    switch (op) {
      case 'adição':
        final r = adicao();
        t.resultado(this._n1, this._n2, '+', r);
        break;

      case 'subtração':
        final r = subtracao();
        t.resultado(this._n1, this._n2, '-', r);
        break;

      case 'multiplicação':
        final r = mult();
        //final t = Tela();
        t.resultado(this._n1, this._n2, '*', r);
        break;

      case 'divisão':
        final r = div();
        // final t = Tela();
        t.resultado(this._n1, this._n2, '/', r);
        break;
    }
  }

  double adicao() {
    return this._n1 + this._n2;
  }

  double subtracao() {
    return this._n1 - this._n2;
  }

  double mult() {
    return this._n1 * this._n2;
  }

  double div() {
    return this._n1 / this._n2;
  }
}

class Tela {
  void resultado(double n1, double n2, String op, double r) {
    print('Resultado de $n1 $op $n2 = $r');
  }
}
