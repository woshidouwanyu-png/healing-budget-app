import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 0)
class Transaction {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final double amount;

  Transaction({required this.name, required this.amount});
}
