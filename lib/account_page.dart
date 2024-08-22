import 'package:flutter/material.dart';
import 'account_security_page.dart'; // 確保導入新文件
import 'identity_verification_page.dart'; // 確保導入新文件
import 'address_book_page.dart'; // 确保导入新文件
import 'service_fee_page.dart'; // 確保導入新文件
import 'invite_friends_page.dart'; // 确保导入新文件
import 'language_setting_page.dart'; // 确保导入新文件
import 'about_page.dart'; // 確保導入新文件

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('賬戶', style: TextStyle(color: Colors.green)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.green,
                  child: Text('CY', style: TextStyle(color: Colors.white, fontSize: 24)),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('097****868', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Chewei Yu'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildAccountOption(context, Icons.security, '帳戶&安全'),
            _buildAccountOption(context, Icons.verified_user, '身份認證', subtitle: '待完善', subtitleColor: Colors.orange),
            _buildAccountOption(context, Icons.account_box, '帳戶管理'),
            _buildAccountOption(context, Icons.location_on, '地址薄'),
            const Divider(),
            _buildAccountOption(context, Icons.receipt, '服務費用'),
            _buildAccountOption(context, Icons.card_giftcard, '邀請好友'),
            _buildAccountOption(context, Icons.language, '語言設定'),
            _buildAccountOption(context, Icons.help, '幫助'),
            _buildAccountOption(context, Icons.info, '關於GSG Wallet'),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background
                  minimumSize: const Size(double.infinity, 48), // width and height
                ),
                child: const Text('登出', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountOption(BuildContext context, IconData icon, String title, {String? subtitle, Color? subtitleColor}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle, style: TextStyle(color: subtitleColor ?? Colors.black)) : null,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Handle the tap
        if (title == '帳戶&安全') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AccountSecurityPage()),
          );
        } else if (title == '身份認證') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IdentityVerificationPage()),
          );
        } else if (title == '地址薄') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddressBookPage()),
          );
        } else if (title == '服務費用') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ServiceFeePage()),
          );
        } else if (title == '邀請好友') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const InviteFriendsPage()),
          );
        } else if (title == '語言設定') {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const LanguageSelectionModal();
            },
          );
        } else if (title == '關於GSG Wallet') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutPage()),
          );
        }
      },
    );
  }
}