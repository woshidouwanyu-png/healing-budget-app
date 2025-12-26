import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/transaction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final box = Hive.box<Transaction>('transactions');
return Scaffold(
  appBar: AppBar(title: const Text('🌿 治愈系记账')),
  body: ValueListenableBuilder<Box<Transaction>>(
    valueListenable: box.listenable(), // 使用 .listenable() 方法
    builder: (context, b, _) {
      if (b.isEmpty) {
        return const Center(child: Text('暂无记录\n点击 + 记一笔吧 🌸'));
      } else {
        // 这里可以添加处理非空情况的代码
        // 例如：展示交易列表等
      }
    },
  ),
);
          return ListView.builder(
            itemCount: b.length,
            itemBuilder: (c, i) {
              var tx = b.getAt(i)!;
              return ListTile(
                title: Text(tx.merchant),
                subtitle: Text('¥${tx.amount.toStringAsFixed(2)}'),
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
