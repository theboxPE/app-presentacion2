import 'package:flutter/material.dart';

class Analisis_page extends StatefulWidget{
  const Analisis_page({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => Analisis();

}

class Analisis extends State<Analisis_page>{
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  final TextEditingController num3 = TextEditingController();

  double? max;
  double? min;
  double? average;

  void performAnalisis() {
    final numbers = [
      double.tryParse(num1.text) ?? 0, 
      double.tryParse(num2.text) ?? 0, 
      double.tryParse(num3.text) ?? 0, 
    ];

    setState(() {
      max = numbers.reduce((value, element) => value > element ? value: element);
      min = numbers.reduce((value, element) => value < element ? value: element);
      average = numbers.reduce((value, element) => value + element / numbers.length);
    });
  }

 
//Gabriel Perez Regalado(2022-0332)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analisis de numeros'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Numero 1',
              ),
            ),
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Numero 2',
              ),
            ),
            TextField(
              controller: num3,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Numero 3',
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: performAnalisis,
              child: const Text('Analizar'),
            ),
            if(max != null && min != null && average != null) 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text('Mayor: $max'),
                  Text('Menor: $min'),
                  Text('Promedio: $average'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}