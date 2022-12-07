import 'package:flutter/material.dart';
import 'package:negative_padding/negative_padding.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Negative Padding Example')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.green,
                padding: const EdgeInsets.all(24),
                child: const Icon(
                  Icons.image,
                  color: Colors.white,
                  size: 48,
                ),
              ),
              const SizedBox(height: 24),
              NegativePadding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(24),
                  child: const Text(
                    'The quick brown fox jumps over the lazy dog',
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
