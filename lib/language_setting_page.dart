import 'package:flutter/material.dart';

class LanguageSettingPage extends StatelessWidget {
  const LanguageSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('語言設定'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const LanguageSelectionModal();
              },
            );
          },
          child: const Text('語言設定'),
        ),
      ),
    );
  }
}

class LanguageSelectionModal extends StatelessWidget {
  const LanguageSelectionModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('繁體中文'),
            trailing: const Icon(Icons.check),
            onTap: () {
              Navigator.pop(context);
              // Handle language change to Traditional Chinese
            },
          ),
          ListTile(
            title: const Text('English'),
            onTap: () {
              Navigator.pop(context);
              // Handle language change to English
            },
          ),
        ],
      ),
    );
  }
}
