import 'package:flutter/material.dart';
import 'package:investor_list/model/investors.dart';

class InvestorsDetailsScreen extends StatelessWidget {
  final Investors investors;

  InvestorsDetailsScreen(this.investors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(investors.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(investors.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                investors.biodata,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 22.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
