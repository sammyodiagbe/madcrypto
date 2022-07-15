// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:madcrypto/madCrypto.dart';

void main() {
  runApp(MadCryptoApp());
}

class MadCryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MadCrypto(),
    );
  }
}
