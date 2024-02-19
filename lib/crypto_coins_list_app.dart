import 'package:flutter/material.dart';
import 'package:crypto_coins/router/router.dart';
import 'package:crypto_coins/theme/theme.dart';
import 'theme/theme.dart';
class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List App',
      theme: darkTheme,
      routes:routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
