import 'package:flutter/material.dart';
import 'package:restaurant_app/style/colors.dart';
import 'package:restaurant_app/utilities/counter.dart';
import 'package:restaurant_app/utilities/kButton.dart';
import 'package:restaurant_app/utilities/kListTile.dart';

class Drinks extends StatefulWidget {
  Drinks({Key key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlack),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Drinks",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  KListTile(
                    "DRINK $index",
                    "",
                    9.50,
                    0.00,
                    Counter(),
                    Container(),
                  ),
                  SizedBox(height: index == 9 ? 75 : 0)
                ],
              );
            },
            itemCount: 10,
          ),
          KButton(
            buttonText1: "Clear",
            buttonText2: "OK",
          ),
        ],
      ),
    );
  }
}
