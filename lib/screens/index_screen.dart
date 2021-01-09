import 'package:flutter/material.dart';
import 'package:ice_breaker/components/custom_text_montserrat.dart';
import 'package:ice_breaker/constants.dart';

class IndexScreen extends StatefulWidget {
  final bool game;
  final Function onStartClick;

  const IndexScreen({
    Key key,
    this.game,
    this.onStartClick,
  }) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage(
                  "lib/assets/imgs/ice_logo.png",
                ),
              ),
              Image(
                image: AssetImage(
                  "lib/assets/imgs/ice_logo_text.png",
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            child: FlatButton(
              onPressed: widget.onStartClick,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(500),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 10,
              ),
              child: CustomTextMontserrat(
                "START",
                fontWeight: FontWeight.w900,
                fontSize: FontSize.medium,
                color: UIColors.fontMain,
              ),
              color: UIColors.red,
            ),
          ),
        ),
      ],
    );
  }
}
