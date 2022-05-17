import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:shopping_splitter/app/ui/utils/screen_size.dart';
import 'package:shopping_splitter/app/ui/utils/theme_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: getScreenWidth(context) * 0.6,
                height: getScreenHeight(context) * 0.07,
                decoration: BoxDecoration(
                    color: getPrimaryColor(context),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    'Valor compra - 50%',
                    style: TextStyle(
                      color: getOnPrimaryColor(context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getScreenWidth(context) * 0.3,
                height: getScreenHeight(context) * 0.07,
                child: TextField(
                  controller: _controller,
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: getPrimaryContainerColor(context),
                    hintText: '0',
                    hintStyle: TextStyle(color: getPrimaryColor(context)),
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: 'br',
                      decimalDigits: 2,
                      symbol: 'R\$',
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
