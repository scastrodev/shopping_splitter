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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0XFF9772FB)),
      ),
      home: const SafeArea(child: HomePage()),
    );
  }
}
