import 'package:flutter/material.dart';

class AccountSecurityPage extends StatelessWidget {
  const AccountSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('帳戶&安全'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAccountSecurityOption(Icons.phone, '修改手機號碼'),
            _buildAccountSecurityOption(Icons.email, '變更信箱'),
            _buildAccountSecurityOption(Icons.lock, '登入密碼'),
            _buildAccountSecurityOption(Icons.security, '支付密碼'),
            _buildAccountSecurityOption(Icons.fingerprint, '面容/指紋登錄', trailing: Switch(value: false, onChanged: (bool value) {})),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountSecurityOption(IconData icon, String title, {Widget? trailing}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Handle the tap
      },
    );
  }
}