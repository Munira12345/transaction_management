import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Management System'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sendMoney');
              },
              child: Text('Send Money'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to Check Balance screen
                Navigator.pushNamed(context, '/checkBalance');
              },
              child: Text('Check Balance'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to View Transactions screen
                Navigator.pushNamed(context, '/viewTransactions');
              },
              child: Text('View Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}
