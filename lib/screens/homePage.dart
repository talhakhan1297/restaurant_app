import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/style/colors.dart';
import 'package:restaurant_app/style/theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _itemTile(String asset, String title, Function onPressed) {
    return FlatButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          SvgPicture.asset(
            asset,
            width: deviceWidth(context) * 0.15,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: kWhite,
            width: deviceWidth(context) * 0.31,
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
            child: Center(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(letterSpacing: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPressBurger() {
    Navigator.pushNamed(context, '/burger');
  }

  void onPressPizza() {
    Navigator.pushNamed(context, '/pizza');
  }

  void onPressDrinks() {
    Navigator.pushNamed(context, '/drinks');
  }

  void onPressKBurger() {}
  void onPressKPizza() {}
  void onPressReview() {}
  void onPressQR() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4),
                    ),
                    child: Center(
                      child: Text("Logo",
                          style: TextStyle(fontSize: 20, color: kBlack)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _itemTile("assets/burger.svg", "Burger", onPressBurger),
                    _itemTile("assets/pizza.svg", "Pizza", onPressPizza),
                  ],
                ),
                SizedBox(height: deviceHeight(context) * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _itemTile(
                        "assets/kBurger.svg", "Custom Burger", onPressKBurger),
                    _itemTile(
                        "assets/kPizza.svg", "Custom Pizza", onPressKPizza)
                  ],
                ),
                SizedBox(height: deviceHeight(context) * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _itemTile("assets/drinks.svg", "Drinks", onPressDrinks),
                    _itemTile(
                        "assets/review.svg", "Review Order", onPressReview)
                  ],
                ),
                SizedBox(height: deviceHeight(context) * 0.05),
                _itemTile("assets/qr.svg", "Scan QR", onPressQR),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
