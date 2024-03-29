import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practicse/first_page.dart';
import 'package:provider_practicse/numbers_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberProvider()),
      ],
      child: const MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
