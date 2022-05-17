import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/pages/home_page.dart';

class ShoppingSplitterApp extends StatelessWidget {
  const ShoppingSplitterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rachador de Compras',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xFFD0BCFF),
              onPrimary: const Color(0xFF380094),
              primaryContainer: const Color(0xFF5124B2),
              onPrimaryContainer: const Color(0xFFE9DDFF),
            ),
        scaffoldBackgroundColor: const Color(0xFF1C1B1F),
        fontFamily: 'Rajdhani',
      ),
      home: const SafeArea(child: HomePage()),
    );
  }
}
