import 'package:flutter/material.dart';
import 'usdt_deposit_page.dart'; // 导入 UsdtDetailPage 页面

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('充值'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          _buildAssetItem('USD', 'US Dollars', 'assets/images/usd.png', () {
            // TODO: Implement USD action
          }),
          _buildAssetItem('USDT', 'Tether', 'assets/images/usdt.png', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UsdtDepositPage()),
            );
          }),
          _buildAssetItem('BTC', 'Bitcoin', 'assets/images/btc.png', () {
            // TODO: Implement BTC action
          }),
          _buildAssetItem('ETH', 'Ethereum', 'assets/images/eth.png', () {
            // TODO: Implement ETH action
          }),
        ],
      ),
    );
  }

  Widget _buildAssetItem(String symbol, String name, String imagePath, Function onTap) {
    return ListTile(
      leading: Image.asset(imagePath, width: 40, height: 40),
      title: Text(symbol),
      subtitle: Text(name),
      onTap: () => onTap(),
    );
  }
}
