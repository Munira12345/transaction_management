// lib/api_service.dart
class ApiService {
  // Simulated fetch of recent transactions
  Future<List<Map<String, dynamic>>> fetchTransactions() async {
    // Simulate an API response with a delay
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(
      10,
          (index) => {
        "id": index,
        "title": "Transaction $index",
        "description": "Details of transaction $index",
        "amount": 100 * index,
      },
    );
  }
}
