// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:madcrypto/madCrypto.dart';
import "package:flutter_dotenv/flutter_dotenv.dart";

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(MadCryptoApp());
}

class MadCryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MadCrypto(),
      theme: ThemeData.dark(),
    );
  }
}
