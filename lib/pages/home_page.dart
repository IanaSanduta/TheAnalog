//import 'package:card_scanner/card_scanner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //CardDetails _cardDetails;
  //CardScanOptions scanOptions = const CardScanOptions(
  /* scanCardHolderName: true,
    // enableDebugLogs: true,
    validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  );*/

  Future<void> scanCard() async {
    // var cardDetails = await CardScanner.scanCard(scanOptions: scanOptions);
    if (!mounted) return;
    setState(() {
      // _cardDetails = cardDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01013D),
      appBar: AppBar(
        title: const Text('card_scanner app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: () async {
                scanCard();
              },
              child: Text('scan card'),
            ),
            //Text('$_cardDetails'),
            //Expanded(
            /*child: OptionConfigureWidget(
                initialOptions: scanOptions,
                onScanOptionChanged: (newOptions) => scanOptions = newOptions,
              ),*/
            //)
          ],
        ),
      ),
    );
  }
}
