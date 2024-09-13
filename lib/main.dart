import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String display = ''; // Para exibir o que o usuário digita
  double numero1 = 0;
  double numero2 = 0;
  String operacao = '';

  // Função para quando um botão for apertado
  void buttonPressed(String valor) {
    setState(() {
      if (valor == 'C') {
        // Limpa a tela e reseta tudo
        display = '';
        numero1 = 0;
        numero2 = 0;
        operacao = '';
      } else if (valor == '+' || valor == '-' || valor == 'X' || valor == '/') {

        numero1 = double.parse(display);
        operacao = valor;
        display = '';
      } else if (valor == '=') {

        numero2 = double.parse(display);
        if (operacao == '+') {
          display = (numero1 + numero2).toString();
        } else if (operacao == '-') {
          display = (numero1 - numero2).toString();
        } else if (operacao == 'X') {
          display = (numero1 * numero2).toString();
        } else if (operacao == '/') {
          display = (numero1 / numero2).toString();
        }
      } else {

        display += valor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,  // Coloca os botões embaixo
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                display,  // Mostra o que o usuário digita ou o resultado
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _criarBotao('7'),
                    _criarBotao('8'),
                    _criarBotao('9'),
                    _criarBotao('/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _criarBotao('4'),
                    _criarBotao('5'),
                    _criarBotao('6'),
                    _criarBotao('X'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _criarBotao('1'),
                    _criarBotao('2'),
                    _criarBotao('3'),
                    _criarBotao('-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _criarBotao('C'),
                    _criarBotao('0'),
                    _criarBotao('='),
                    _criarBotao('+'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Função para criar os botões
  Widget _criarBotao(String texto) {
    return ElevatedButton(
      onPressed: () => buttonPressed(texto), // Chama a função quando clicado
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),  // Tamanho do botão
        backgroundColor: Colors.blueGrey[700], // Cor do botão
      ),
      child: Text(
        texto,
        style: TextStyle(fontSize: 24, color: Colors.white), // Tamanho e cor do texto do botão
      ),
    );
  }
}
