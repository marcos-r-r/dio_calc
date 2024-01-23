import 'dart:convert';
import 'dart:io';

import 'package:dio_calc/exception/nome_invalido_exception.dart';
import 'package:dio_calc/models/console_utils.dart';
import 'exception/peso_invalido_exception.dart';
import 'exception/altura_invalida_exception.dart';
import 'models/pessoa.dart';

void execute() {
  print("Bem vindo a calculadora de IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome da Pessoa:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double peso = ConsoleUtils.lerDoubleComTexto("Digite o peso da Pessoa:");
  try {
    if (peso <= 0) {
      throw PesoInvalidoException();
    }
  } catch (PesoInvalidoException) {
    peso = 1;
    print(PesoInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double altura = ConsoleUtils.lerDoubleComTexto("Digite a altura da Pessoa:");
  try {
    if (altura <= 0) {
      throw AlturaInvalidaException();
    }
  } catch (AlturaInvalidaException) {
    altura = 1;
    print(AlturaInvalidaException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var pessoa = Pessoa(nome, peso, altura);
  print(pessoa);
  print("IMC: ${pessoa.retornaImc()}");
  print("Resultado: ${pessoa.retornaResultado()}");
}
