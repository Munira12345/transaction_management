import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'transaction.dart'; // Assuming you have a Transaction model
import 'service_locator.dart';
import 'transaction_repository.dart';

// StateNotifier manages state changes
class TransactionsViewModel extends StateNotifier<List<Transaction>> {
  final TransactionRepository _repository = getIt<TransactionRepository>();

  TransactionsViewModel() : super([]);

  Future<void> fetchTransactions() async {
    try {
      final transactions = await _repository.getAllTransactions();
      state = transactions; // Update state
    } catch (e) {
      // Handle errors
      state = [];
    }
  }
}

// Provide the TransactionsViewModel to the app
final transactionsProvider =
StateNotifierProvider<TransactionsViewModel, List<Transaction>>(
        (ref) => TransactionsViewModel());
