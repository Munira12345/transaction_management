import 'transaction.dart';
//import 'api_service.dart';

class TransactionRepository {
  Future<List<Transaction>> getAllTransactions() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Mocked data
    return [
      Transaction(
        id: '1',
        title: 'Groceries',
        amount: 1500.0,
        date: DateTime.now(),
      ),
      Transaction(
        id: '2',
        title: 'Rent',
        amount: 30000.0,
        date: DateTime.now().subtract(const Duration(days: 30)),
      ),
      Transaction(
        id: '3',
        title: 'Electricity Bill',
        amount: 2500.0,
        date: DateTime.now().subtract(const Duration(days: 15)),
      ),
    ];
  }
}
