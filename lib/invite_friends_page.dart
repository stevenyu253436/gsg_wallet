import 'package:flutter/material.dart';

class InviteFriendsPage extends StatelessWidget {
  const InviteFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('邀請好友'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '推薦好友，贏現金獎勵',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            RichText(
              text: const TextSpan(
                text: '使用你的邀請碼每邀請並',
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: '激活成功1人',
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: '，你和受邀人都會得到',
                  ),
                  TextSpan(
                    text: '€5.00',
                    style: TextStyle(color: Colors.orange),
                  ),
                  TextSpan(
                    text: '的獎勵。',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Image.asset(
                'assets/images/invite_friends.png', // 确保图片路径正确
                height: 200,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '透過',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  _buildInfoRow('鏈接', 'www.union.cash'),
                  const SizedBox(height: 8),
                  _buildInfoRow('邀請碼', '140381'),
                  const SizedBox(height: 8),
                  _buildInfoRow('已邀請數量', '0'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        Row(
          children: [
            Text(value, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 8),
            const Icon(Icons.copy, size: 16),
          ],
        ),
      ],
    );
  }
}
