import 'package:flutter/material.dart';
import 'package:investor_list/invetors/investor_details_screen.dart';
import 'package:investor_list/model/investors.dart';

class InvestorListScreen extends StatelessWidget {
  const InvestorListScreen({Key? key, required this.investors})
      : super(key: key);
  final Investors investors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Investors"),
      ),
      body: ListView.builder(
          itemCount: investorList.length,
          itemBuilder: (context, index) {
            Investors investor = investorList[index];
            return Card(
                child: ListTile(
              title: Text(investors.name),
              leading: Image.network(investors.imageUrl),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            InvestorsDetailsScreen(investors))));
              },
            ));
          }),
    );
  }
}
