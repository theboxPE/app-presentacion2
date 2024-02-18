import 'package:flutter/material.dart';

class Multiplicacion_page extends StatefulWidget{
  const Multiplicacion_page({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => Multiplicacion();

}
  
class Multiplicacion extends State<Multiplicacion_page>{
  List<Widget> multiplicacionTable = [];



//Gabriel Perez Regalado(2022-0332)


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de multiplicar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un numero',
              ),
              onChanged: (value) {
                int number = int.tryParse(value) ?? 0;
                List<Widget> numerosMultiplicar = [];
                for(int i = 1; i <= 14; i++ ) {
                  numerosMultiplicar.add(
                    Text(
                      '$number x $i = ${number * i}',
                      style: const TextStyle(fontSize: 18),
                    )
                  );
                }
                setState(() {
                  multiplicacionTable = numerosMultiplicar;
                });
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: multiplicacionTable,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}