import 'package:flutter/material.dart';

class CheckBalanceScreen extends StatelessWidget {
  const CheckBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Balance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Balance:',
              style: TextStyle(fontSize: 24),
            ),
            // Replace with actual balance data when available
            const Text(
              'KES 0.00',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to refresh or check balance again
              },
              child: const Text('Refresh Balance'),
            ),
          ],
        ),
      ),
    );
  }
}
