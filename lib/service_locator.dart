import 'package:get_it/get_it.dart';
import 'transaction_repository.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
    // Registering TransactionRepository without ApiService
  getIt.registerLazySingleton<TransactionRepository>(() => TransactionRepository());
}
