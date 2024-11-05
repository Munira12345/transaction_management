import 'package:flutter/material.dart';

class ViewTransactionsScreen extends StatelessWidget {
  const ViewTransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Transactions'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual transaction count
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text('Transaction #$index'),
            subtitle: Text('Details of transaction #$index'),
            trailing: Text('KES ${100 * index}'), // Replace with transaction amount
            onTap: () {
              // Navigate to Transaction Status Screen with transaction details
            },
          );
        },
      ),
    );
  }
}
