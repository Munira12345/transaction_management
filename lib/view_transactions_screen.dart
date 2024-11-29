import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'transactions_view_model.dart'; // Import your ViewModel
// Import the Transaction model

class ViewTransactionsScreen extends ConsumerWidget {
  const ViewTransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the transactions state
    final transactions = ref.watch(transactionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Transactions'),
      ),
      body: transactions.isEmpty
          ? Center(
        child: ElevatedButton(
          onPressed: () {
            // Trigger fetchTransactions from the ViewModel
            ref.read(transactionsProvider.notifier).fetchTransactions();
          },
          child: const Text('Load Transactions'),
        ),
      )
          : ListView.builder(
        itemCount: transactions.length, // Use the dynamic count
        itemBuilder: (context, index) {
          final transaction = transactions[index]; // Get each transaction
          return ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(transaction.title), // Transaction title
            subtitle: Text(
              'Date: ${transaction.date.toString()}', // Transaction date
            ),
            trailing: Text('KES ${transaction.amount}'), // Transaction amount
            onTap: () {
              // Navigate to Transaction Status Screen with transaction details
              Navigator.pushNamed(
                context,
                '/transactionStatus',
                arguments: transaction,
              );
            },
          );
        },
      ),
    );
  }
}

