import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyhomePage());
  }
}

class MyhomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Tênis da nike',
      value: 310.56,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Camisa',
      value: 99.90,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
                elevation: 5,
              ),
            ),
            Card(
              child: Text('Lista de  Transações'),
            )
          ],
        ));
  }
}
