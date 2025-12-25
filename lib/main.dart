import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/transaction.dart';
import 'models/wishlist_place.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  Hive.registerAdapter(WishlistPlaceAdapter());
  await Hive.openBox<Transaction>('transactions');
  await Hive.openBox<WishlistPlace>('wishlist');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '🌿 治愈系记账',
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: false),
      home: const HomeScreen(),
    );
  }
}
