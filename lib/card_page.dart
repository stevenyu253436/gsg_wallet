import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('卡片', style: TextStyle(color: Colors.green)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add Card Images
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/physical_card.jpg',
                    height: 200,
                  ),
                  const SizedBox(width: 16),
                  Image.asset(
                    'assets/images/virtual_card.jpg',
                    height: 200,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Add Card Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCardInfo(
                  'assets/images/physical_card.jpg',
                  '實體卡',
                  '€49.90',
                  isSelected: true,
                ),
                _buildCardInfo(
                  'assets/images/virtual_card.jpg',
                  '虛擬卡',
                  '€5.00',
                  isSelected: false,
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Add Buttons
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity, // Make button full width
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // background
                        minimumSize: const Size(double.infinity, 50), // width and height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // border radius
                        ),
                      ),
                      child: const Text(
                        '申請銀行卡',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity, // Make button full width
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50), // width and height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // border radius
                        ),
                      ),
                      child: const Text(
                        '綁定銀行卡',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardInfo(String imagePath, String title, String price,
      {bool isSelected = false}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.purple.withOpacity(0.1) : Colors.white,
            border: Border.all(color: isSelected ? Colors.purple : Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                height: 40,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(price),
                ],
              ),
              const SizedBox(width: 40),
            ],
          ),
        ),
      ],
    );
  }
}
