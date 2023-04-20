import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class resultPage extends StatelessWidget {
  final double imc;

  resultPage(this.imc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Seu IMC é ${imc.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'De acordo com a tabela de classificação do IMC, você está ${getClassification(imc)}',
              style: TextStyle(fontSize: 18.0), textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  String getClassification(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc < 25.0) {
      return 'Peso normal';
    } else if (imc < 30.0) {
      return 'Sobrepeso';
    } else if (imc < 35.0) {
      return 'Obesidade grau 1';
    } else if (imc < 40.0) {
      return 'Obesidade grau 2';
    } else {
      return 'Obesidade grau 3';
    }
  }
}