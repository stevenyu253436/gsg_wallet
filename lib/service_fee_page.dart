import 'package:flutter/material.dart';

class ServiceFeePage extends StatelessWidget {
  const ServiceFeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('服務費用'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildFeeItem('購買USDT', '1.00%'),
                _buildFeeItem('出售USDT', '1.00%(最低 5.00USDT)'),
                _buildFeeItem('提現到IBAN', '€5.00/筆'),
                _buildFeeItem('USDT轉入', '免費'),
                _buildFeeItem('USDT轉出(ETH/ERC20)', '60.00USDT/筆'),
                _buildFeeItem('Unioncash行內轉賬', '1.00USDT/筆'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeeItem(String title, String fee) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Text(fee, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
