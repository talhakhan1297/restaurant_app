import 'package:flutter/material.dart';
import 'package:restaurant_app/style/colors.dart';
import 'package:restaurant_app/style/theme.dart';
import 'package:restaurant_app/utilities/counter.dart';
import 'package:restaurant_app/utilities/kListTile.dart';

class Burger extends StatefulWidget {
  Burger({Key key}) : super(key: key);

  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: kBlack),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Burgers",
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
                      "PISTACCHIOTTO",
                      "Hamburger di scotona, provola affumicata, mortadella igp, patate al forno, rucola, pesto di pistacchio",
                      "\$9.50",
                      "\$0.00",
                      Counter(),
                      Container(),
                    ),
                    SizedBox(height: index == 9 ? 75 : 0)
                  ],
                );
              },
              itemCount: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: deviceWidth(context) * 0.4,
                      child: FlatButton(
                        shape: StadiumBorder(),
                        color: kBlack,
                        onPressed: () {},
                        child: Text(
                          "Clear",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: deviceWidth(context) * 0.4,
                      child: FlatButton(
                        shape: StadiumBorder(),
                        color: kBlack,
                        onPressed: () {},
                        child: Text(
                          "OK",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
