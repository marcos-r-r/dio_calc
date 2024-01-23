import 'package:dio_calc/dio_calc.dart';
import 'package:test/test.dart';
import 'package:dio_calc/models/pessoa.dart';

void main() {
  group('Testes de unidade', () {
    test('Teste de cálculo de IMC', () {
      var pessoa = Pessoa("João", 72, 1.70);
      expect(pessoa.retornaImc(), 24.913494809688583);
    });

    test('Teste de resultado de IMC', () {
      var pessoa = Pessoa("Maria", 50, 1.90);
      expect(pessoa.retornaResultado(), "Abaixo do peso");
    });

    test('Teste de toString', () {
      var pessoa = Pessoa("Jose", 80, 1.90);
      expect(pessoa.toString(), "Nome: Jose, Peso: 80.0, Altura: 1.9");
    });
  });
}
