void main() {
  final c = Caixa('1579', 'Ana', 'Oliveira', 230.0, 1212.0);
  c.horaExtra();
  c.exibirDados();

  final v = Vendedor('1601', 'João', 'Silva', 230.0, 1212.0);
  v.horaExtra();
  v.exibirDados();

  final g = Gerente('1603', 'Maria', 'Souza', 230.0, 1212.0);
  g.horaExtra();
  g.exibirDados();
}

class Funcionario {
  String matricula;
  String nome;
  String sobrenome;
  double salario;
  double horas;

  //Funcionario ();
  Funcionario(
      this.matricula, this.nome, this.sobrenome, this.horas, this.salario);

  double horaExtra() {
    if (this.horas <= 220) {
      return this.salario;
    } else {
      return this.salario + this.salario * (this.horas - 220) / 100;
    }
  }

  void exibirDados() {
    print('Matrícula: $this.matricula');
    print('Nome: $this.nome $this.sobrenome');
    print('Horas trabalhadas no mês: $this.horas');
    print('Salário: R\$ $horaExtra()');
    print('***');
  }
}

class Caixa extends Funcionario {
  /*String matricula;
  String nome;
  String sobrenome;
  double salario;
  int horas;*/

  Caixa(matricula, nome, sobrenome, horas, salario)
      : super(matricula, nome, sobrenome, horas, salario);

  void exibirDados() {
    print('Matrícula: $this.matricula');
    print('Nome: $this.nome $this.sobrenome');
    print('Horas trabalhadas no mês: $this.horas');
    print('Salário: R\$ $horaExtra()');
    print('***');
  }
}

class Vendedor extends Funcionario {
  Vendedor(matricula, nome, sobrenome, horas, salario)
      : super(matricula, nome, sobrenome, horas, salario);

  double horaExtra() {
    if (this.horas <= 220) {
      return this.salario;
    } else {
      return this.salario + this.salario * 0.2;
    }
  }

  void exibirDados() {
    print('Matrícula: $this.matricula');
    print('Nome: $this.nome $this.sobrenome');
    print('Horas trabalhadas no mês: $this.horas');
    print('Salário: R\$ $horaExtra()');
    print('***');
  }
}

class Gerente extends Funcionario {
  Gerente(matricula, nome, sobrenome, horas, salario)
      : super(matricula, nome, sobrenome, horas, salario);

  double horaExtra() {
    if (this.horas <= 220) {
      return this.salario;
    } else {
      return this.salario + this.salario * 0.35;
    }
  }

  void exibirDados() {
    print('Matrícula: $this.matricula');
    print('Nome: $this.nome $this.sobrenome');
    print('Horas trabalhadas no mês: $this.horas');
    print('Salário: R\$ $horaExtra()');
    print('***');
  }
}
