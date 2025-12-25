import 'package:hive/hive.dart';
part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction extends HiveObject {
  @HiveField(0) String merchant;
  @HiveField(1) double amount;
  @HiveField(2) DateTime timestamp;

  Transaction({required this.merchant, required this.amount, DateTime? timestamp})
      : timestamp = timestamp ?? DateTime.now();
}
