import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IdentityVerificationPage extends StatelessWidget {
  const IdentityVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('身份認證'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIdentityOption(Icons.person, '個人資訊', '審核中'),
            _buildIdentityOption(FontAwesomeIcons.passport, '護照', '待完善', subtitleColor: Colors.orange),
            _buildIdentityOption(Icons.face, '人臉辨識', '審核中'),
          ],
        ),
      ),
    );
  }

  Widget _buildIdentityOption(IconData icon, String title, String status, {Color? subtitleColor}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Text(status, style: TextStyle(color: subtitleColor ?? Colors.blue)),
      onTap: () {
        // Handle the tap
      },
    );
  }
}
