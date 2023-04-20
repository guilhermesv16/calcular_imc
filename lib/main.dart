import 'package:calcular_imc/resultPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura (cm)',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                double altura = double.tryParse(alturaController.text) ?? 0.0;
                double peso = double.tryParse(pesoController.text) ?? 0.0;
                double imc = peso / ((altura / 100) * (altura / 100));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => resultPage(imc)),
                );
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}

