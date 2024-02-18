import 'package:flutter/material.dart';


class Presentacion extends StatelessWidget {
  const Presentacion({super.key});



//Gabriel Perez Regalado(2022-0332)



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi presentacion'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.asset('assets/fp.jpg'),
              ),
              const SizedBox(height: 25),
              const Text(
                'Gabriel Adolfo Perez Regalado',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
  }
}