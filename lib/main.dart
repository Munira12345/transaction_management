import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'send_money_screen.dart';
import 'check_balance_screen.dart';
import 'view_transactions_screen.dart';
import 'transaction_status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(), // HomeScreen as the initial screen
        '/sendMoney': (context) => const SendMoneyScreen(),  // SendMoneyScreen route
        '/checkBalance': (context) => const CheckBalanceScreen(),  // CheckBalanceScreen route
        '/viewTransactions': (context) => const ViewTransactionsScreen(),  // ViewTransactionsScreen route
        '/transactionStatus': (context) => const TransactionStatusScreen(transactionId: '12345'), // TransactionStatusScreen with a placeholder ID
      },
    );
  }
}
