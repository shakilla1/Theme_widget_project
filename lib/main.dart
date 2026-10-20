import 'package:flutter/material.dart';

void main() => runApp(const ThemeWidget());

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  Color seed = Colors.deepPurple;
  bool bigText = false;
  bool dark = false;

  @override
  Widget build(BuildContext context) {
    final scheme = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: dark ? Brightness.dark : Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: scheme,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: bigText ? 32 : 16),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme widget'),
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome to Kigali Coffee'),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() => seed = Colors.deepPurple),
                    child: const Text('Purple'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => seed = Colors.green),
                    child: const Text('Green'),
                  ),
                  ElevatedButton(
                    onPressed: () => setState(() => seed = Colors.orange),
                    child: const Text('Orange'),
                  ),
                ],
              ),
              SwitchListTile(
                title: const Text('Big text'),
                value: bigText,
                onChanged: (v) => setState(() => bigText = v),
              ),
              SwitchListTile(
                title: const Text('Dark mode'),
                value: dark,
                onChanged: (v) => setState(() => dark = v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}