import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Contas'),
      ),
      body: ListView(
        children: [
          AccountCard(accountName: 'Conta Corrente', balance: 'R\$ 1.250,00'),
          AccountCard(accountName: 'Conta Poupança', balance: 'R\$ 3.000,00'),
          AccountCard(accountName: 'Cartão de Crédito', balance: 'R\$ 500,00'),
        ],
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  final String accountName;
  final String balance;

  AccountCard({required this.accountName, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              accountName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              balance,
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
