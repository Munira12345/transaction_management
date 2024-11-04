import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'send_money_screen.dart';

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
        '/': (context) => const HomeScreen(), //  HomeScreen as the initial screen
        '/sendMoney': (context) => const SendMoneyScreen(),  // SendMoneyScreen route
        // other routes for Check Balance and View Transactions later
      },
    );
  }
}