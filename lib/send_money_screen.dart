import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
      ),
      body: Center(
        child: Text(
          'Send Money Screen Content Goes Here!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
