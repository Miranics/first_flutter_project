import 'package:flutter/material.dart';

const String myname = 'Nanen Miracle Mbanaade';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final dateString = '${today.year}-${_two(today.month)}-${_two(today.day)}';
    final greeting = 'Hello World - $myname';
    return MaterialApp(
      title: 'First Flutter Project',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo)),
      home: Scaffold(
        appBar: AppBar(title: const Text('First Flutter Project')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(greeting, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 12),
              Text('Date: $dateString', style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 24),
              const Text('(Ensure your face & today\'s date are visible in the video)')
            ],
          ),
        ),
      ),
    );
  }
}

String _two(int v) => v.toString().padLeft(2, '0');
