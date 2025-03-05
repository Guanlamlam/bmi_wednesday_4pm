import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String bmi;

  const Info({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                  'Body mass index (BMI) is a value derived from the mass (weight) and height of a person',
                textAlign: TextAlign.center,
              ),
              Table(
                border: TableBorder.all(color:Colors.orangeAccent),
                children: const [
                  TableRow(
                    children: [
                      TableCell(
                          child: Text('BMI value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),)
                      ),
                      TableCell(
                        child: Text('BMI value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),)
                      )
                    ]


                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Below 18.5',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Underweight',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('18.5 - 24.90',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Normal',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('More than 25',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Overweight',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                ],
              ),
              bmi == ' ' ? Text('Please enter your height and weight to calculate your BMI'):
                  Text('Your BMI is $bmi'),
              Expanded(child: SizedBox()),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}
