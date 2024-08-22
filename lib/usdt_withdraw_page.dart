import 'package:flutter/material.dart';

class UsdtWithdrawPage extends StatelessWidget {
  const UsdtWithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('提現'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '請仔細核對交易資訊，以免造成資產損失。',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '提現金額',
                hintText: '輸入金額',
                filled: true, // Enables the fill color
                fillColor: Colors.grey[200], // Set the fill color
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('USDT'),
                      const SizedBox(width: 8),
                      Image.asset('assets/images/usdt.png', width: 24, height: 24),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none, // Remove the border
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            const Text(
              '可用餘額: 21.800000 USDT',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: '提現類型',
                filled: true, // Enables the fill color
                fillColor: Colors.grey[200], // Set the fill color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none, // Remove the border
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: '鏈上轉帳',
                  child: Text('鏈上轉帳'),
                ),
                // Add more items as necessary
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: '鏈名稱',
                filled: true, // Enables the fill color
                fillColor: Colors.grey[200], // Set the fill color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none, // Remove the border
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'ETH/ERC20',
                  child: Text('ETH/ERC20'),
                ),
                DropdownMenuItem(
                  value: 'Tron/TRC20',
                  child: Text('Tron/TRC20'),
                ),
                // Add more items as necessary
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '提現地址',
                hintText: '請輸入提現地址',
                filled: true, // Enables the fill color
                fillColor: Colors.grey[200], // Set the fill color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none, // Remove the border
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.qr_code_scanner),
                      onPressed: () {
                        // Implement QR code scanning functionality
                      },
                    ),
                    const Icon(Icons.paste),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '收款人',
                hintText: '請輸入收款人',
                filled: true, // Enables the fill color
                fillColor: Colors.grey[200], // Set the fill color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none, // Remove the border
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '網絡費: - USDT',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const Text(
              '到賬數量: 0.000000 USDT',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement the withdrawal action
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  '提現',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
