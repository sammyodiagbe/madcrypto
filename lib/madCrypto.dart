// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:madcrypto/constants.dart';

class MadCrypto extends StatefulWidget {
  @override
  State<MadCrypto> createState() => _MadCryptoState();
}

class _MadCryptoState extends State<MadCrypto> {
  String _selectedCrypto = 'BTC';
  String _selectedCurrency = 'USD';
  List<DropdownMenuItem<String>> cryptoItems() {
    List<DropdownMenuItem<String>> items = [];
    for (var item in cryptoCurrencies) {
      DropdownMenuItem<String> _item = DropdownMenuItem(
        child: Text(item),
        value: item,
      );
      items.add(_item);
    }

    return items;
  }

  List<DropdownMenuItem<String>> currenciesItems() {
    List<DropdownMenuItem<String>> items = [];
    for (var item in currencies) {
      DropdownMenuItem<String> _item = DropdownMenuItem(
        child: Text(item),
        value: item,
      );
      items.add(_item);
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Madcrypto'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // drop down containers for crypto and currencies
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                DropdownButton<String>(
                  value: _selectedCrypto,
                  items: cryptoItems(),
                  onChanged: (value) {
                    setState(
                      () {
                        _selectedCrypto = value ?? 'BTC';
                      },
                    );
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton<String>(
                  value: _selectedCurrency,
                  items: currenciesItems(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCurrency = value ?? 'USD';
                    });
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 300,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1 $_selectedCrypto',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '/',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        3000.65.toStringAsFixed(2),
                        style: TextStyle(fontSize: 38),
                      )
                    ],
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
