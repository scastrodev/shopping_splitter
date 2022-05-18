import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';

import '../division/division.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RACHADOR DE COMPRAS',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Division(labelText: 'Valor compra - 50%'),
          const Division(labelText: 'Valor compra - 70%'),
          const Division(labelText: 'Valor compra - Isadora'),
          const Division(labelText: 'Valor compra - Samuel'),
          Row(
            children: [
              Container(
                width: getScreenWidth(context) * 0.6,
                height: getScreenHeight(context) * 0.18,
                color: Colors.white,
              ),
              Container(
                width: getScreenWidth(context) * 0.25,
                height: getScreenHeight(context) * 0.15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: getPrimaryContainerColor(context),
                ),
                child: const Center(
                  child: Text(
                    'R\$300,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: getScreenWidth(context) * 0.25,
            height: getScreenHeight(context) * 0.15,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: getPrimaryContainerColor(context),
            ),
            child: const Center(
              child: Text(
                'R\$300,00',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
