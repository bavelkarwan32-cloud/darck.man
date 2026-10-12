
import 'package:flutter/material.dart';

void main() {
  runApp(const CyberSafeApp());
}

class CyberSafeApp extends StatelessWidget {
  const CyberSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CyberSafe Toolkit',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D1117),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00E6A0),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('DNS Lookup', Icons.language),
      ('Domain Information', Icons.public),
      ('Security Reports', Icons.security),
      ('About CyberSafe', Icons.info_outline),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('CyberSafe Toolkit'),
        backgroundColor: const Color(0xFF161B22),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.shield_outlined,
              size: 85,
              color: Color(0xFF00E6A0),
            ),
            const SizedBox(height: 12),
            const Text(
              'Security Dashboard',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Card(
                color: const Color(0xFF202938),
                child: ListTile(
                  leading: Icon(
                    item.$2,
                    color: const Color(0xFF00E6A0),
                  ),
                  title: Text(item.$1),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(item.$1),
                        content: const Text(
                          'This feature is ready for development.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}