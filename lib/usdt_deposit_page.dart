import 'package:flutter/material.dart';

class UsdtDepositPage extends StatefulWidget {
  const UsdtDepositPage({super.key});

  @override
  _UsdtDepositPageState createState() => _UsdtDepositPageState();
}

class _UsdtDepositPageState extends State<UsdtDepositPage> {
  bool isEthSelected = false; // 初始選擇狀態，Tron/TRC20 被選中
  final String usdtAddress = "TH9um87KHvP63AT2MtNfm8c7EupemMygUC"; // Replace with your actual USDT address

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('充值 - USDT'),
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
            const Center(
              child: Text('USDT', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Center(
              child: Image.asset('assets/images/usdt_qr.png', width: 150, height: 150),
            ),
            const SizedBox(height: 16),
            const Text('鏈名稱', style: TextStyle(fontSize: 18)),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEthSelected = true; // 選中 ETH/ERC20
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isEthSelected ? Colors.white : Colors.grey[200], // 背景顏色
                      side: isEthSelected ? const BorderSide(color: Colors.green) : BorderSide.none, // 根據選中狀態設置邊框
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50), // 設置高度
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16), // border radius
                      ),
                    ),
                    child: const Text('ETH/ERC20'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        isEthSelected = false; // 選中 Tron/TRC20
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: isEthSelected ? Colors.grey[200] : Colors.white, // 背景顏色
                      side: isEthSelected ? BorderSide.none : const BorderSide(color: Colors.green), // 根據選中狀態設置邊框
                      foregroundColor: Colors.black, // 文字顏色
                      minimumSize: const Size(double.infinity, 50), // 設置高度
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16), // border radius
                      ),
                    ),
                    child: const Text('Tron/TRC20'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('地址', style: TextStyle(fontSize: 18)),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200], // 設置淺灰色填充背景
                borderRadius: BorderRadius.circular(8), // 保留圓角
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(usdtAddress),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    onPressed: () {
                      // Implement copy functionality
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement save image functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // background
                  minimumSize: const Size(double.infinity, 60), // width and height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // border radius
                  ),
                ),
                child: const Text(
                  '儲存圖片',
                  style: TextStyle(color: Colors.white, fontSize: 20), // 字體大小設置為32
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
