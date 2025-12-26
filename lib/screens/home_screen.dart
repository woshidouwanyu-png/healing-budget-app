import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart'; // ← 关键：提供 .listenable()
import '../models/transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<Transaction>('transactions');

    return Scaffold(
      appBar: AppBar(title: const Text('🌿 治愈系记账')),
      body: ValueListenableBuilder<Box<Transaction>>(
        valueListenable: box.listenable(), // ← 正确用法
        builder: (context, b, _) {
          if (b.isEmpty) {
            return const Center(
              child: Text(
                '暂无记录\n点击 + 记一笔吧 🌸',
                textAlign: TextAlign.center,
              ),
            );
          }

          // 必须返回一个 Widget（不能只写 if）
          return ListView.builder(
            itemCount: b.length,
            itemBuilder: (context, i) {
              var tx = b.getAt(i)!;
              return ListTile(
                title: Text(tx.name),
                subtitle: Text('${tx.amount.toStringAsFixed(2)} 元'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
