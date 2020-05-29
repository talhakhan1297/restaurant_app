import 'package:flutter/material.dart';
import 'package:restaurant_app/style/colors.dart';
import 'package:restaurant_app/style/theme.dart';

class KButton extends StatelessWidget {
  const KButton({
    Key key,
    @required this.buttonText1,
    @required this.buttonText2,
  }) : super(key: key);

  final String buttonText1;
  final String buttonText2;

  @override
  Widget build(BuildContext context) {
    return Align(
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
                highlightColor: Colors.grey,
                child: Text(
                  buttonText1,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
            Container(
              height: 50,
              width: deviceWidth(context) * 0.4,
              child: FlatButton(
                highlightColor: Colors.grey,
                shape: StadiumBorder(),
                color: kBlack,
                onPressed: () {},
                child: Text(
                  buttonText2,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
