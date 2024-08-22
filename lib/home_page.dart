import 'package:flutter/material.dart';
import 'deposit_page.dart'; // 导入 RechargePage
import 'withdraw_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isBalanceVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '總資產',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isBalanceVisible = !_isBalanceVisible;
                  });
                },
                child: Icon(
                  _isBalanceVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                _isBalanceVisible ? '0.00' : '******',
                style: const TextStyle(fontSize: 48),
              ),
              const SizedBox(width: 8),
              const Text(
                'USD',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCircleIcon(Icons.arrow_downward, '充值', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DepositPage()),
                );
              }),
              _buildCircleIcon(Icons.arrow_upward, '提現', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WithdrawPage()),
                );
              }),
              _buildCircleIcon(Icons.sync_alt, '兌換', () {
                // 實現兌換功能
              }),
              _buildCircleIcon(Icons.language, '全球速匯', () {
                // 實現全球速匯功能
              }),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            '資產',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildAssetItem('assets/images/usd.png', 'USD', 'US Dollars', 0.000000),
                _buildAssetItem('assets/images/usdt.png', 'USDT', 'Tether', 0.000000),
                _buildAssetItem('assets/images/btc.png', 'BTC', 'Bitcoin', 0.000000),
                _buildAssetItem('assets/images/eth.png', 'ETH', 'Ethereum', 0.000000),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, String label, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 1),
            ),
            child: Icon(icon, color: Colors.black, size: 32),
          ),
          const SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }

  Widget _buildAssetItem(String imagePath, String symbol, String name, double amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(symbol, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(name, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount.toStringAsFixed(2), style: const TextStyle(fontSize: 18)),
              Text('≈\$${amount.toStringAsFixed(2)}', style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}