import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // stateful +rotation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Management System'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sendMoney');
              },
              child: const Text('Send Money'),
            ),
            const SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                // Navigate to Check Balance screen
                Navigator.pushNamed(context, '/checkBalance');
              },
              child: const Text('Check Balance'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to View Transactions screen
                Navigator.pushNamed(context, '/viewTransactions');
              },
              child: const Text('View Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}
