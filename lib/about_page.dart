import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('關於GSG Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/logo.png', // 确保图片路径正确
              height: 100,
            ),
            const SizedBox(height: 16),
            const Text(
              '版本號碼1.40',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.receipt, color: Colors.purple),
              title: const Text('服務協定'),
              onTap: () {
                // Handle service agreement tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
