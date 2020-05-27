import 'package:flutter/material.dart';
import 'package:restaurant_app/style/colors.dart';

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.add_circle),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
        Container(
          color: kWhite,
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Text(
            counter.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        IconButton(
          icon: Icon(Icons.do_not_disturb_on),
          onPressed: () {
            setState(() {
              if (counter > 0) {
                counter--;
              }
            });
          },
        )
      ],
    );
  }
}
