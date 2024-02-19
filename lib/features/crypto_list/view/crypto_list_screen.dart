import 'package:crypto_coins/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:flutter/material.dart';
import '../../../repositories/crypto_coins/models/crypto_coin_model.dart';
import '../widgets/crypto_coin_tile.dart';
class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

 List<CryptoCoin>? _cryptoCoinsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('CryptoCurrenciesList',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: (_cryptoCoinsList == null)?
      const Center (child: CircularProgressIndicator()):
      ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _cryptoCoinsList!.length,
        itemBuilder: (context ,i){
          final coin = _cryptoCoinsList![i];
          return CryptoCoinTile(coin: coin);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.file_download),
        onPressed: () async {
          _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
          setState(() {});
        },
      ),
    );
  }
}
