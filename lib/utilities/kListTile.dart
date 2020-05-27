import 'package:flutter/material.dart';
import 'package:restaurant_app/style/colors.dart';
import 'package:restaurant_app/style/theme.dart';

class KListTile extends StatefulWidget {
  KListTile(
    this.title,
    this.subtitle,
    this.unitPrice,
    this.currentPrice,
    this.counterWidget,
    this.extrasWidget, {
    Key key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String unitPrice;
  final String currentPrice;
  final Widget counterWidget;
  final Widget extrasWidget;

  @override
  _KListTileState createState() => _KListTileState();
}

class _KListTileState extends State<KListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        color: kYellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title, subtitle and unit price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Container(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 16, right: 8),
                          width: deviceWidth(context) * 0.55,
                          child: Text(widget.subtitle,
                              style: Theme.of(context).textTheme.subtitle1)),
                    ],
                  ),
                  widget.counterWidget,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Unit Price: " + widget.unitPrice,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Text(
                      "Total Price: " + widget.currentPrice,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
              widget.extrasWidget,
            ],
          ),
        ),
      ),
    );
  }
}
