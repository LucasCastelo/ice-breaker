import 'package:flutter/material.dart';
import 'package:ice_breaker/components/custom_text_montserrat.dart';
import 'package:ice_breaker/constants.dart';

class GameModeScreen extends StatefulWidget {
  final bool show;

  const GameModeScreen({Key key, this.show}) : super(key: key);

  @override
  _GameModeScreenState createState() => _GameModeScreenState();
}

class _GameModeScreenState extends State<GameModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: MediaQuery.of(context).size.height,
      ),
      padding: EdgeInsets.zero,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 600),
            top: widget.show
                ? 0
                : MediaQuery.of(context).size.height / 1.5 * (-1),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "lib/assets/imgs/custom_red_bg.png",
                  ),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 40,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextMontserrat(
                                    "NAUGHTY MODE",
                                    fontSize: FontSize.medium,
                                    fontWeight: FontWeight.w900,
                                    color: UIColors.fontMain,
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextMontserrat(
                                    "Use this mode if you want a more \"kink\" experience.",
                                    fontSize: FontSize.small,
                                    textAlign: TextAlign.start,
                                    fontWeight: FontWeight.w500,
                                    color: UIColors.fontMain,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FlatButton(
                                onPressed: () {
                                  //TODO IMPLEMENT GAME MODE
                                },
                                color: UIColors.detailBlueLight,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 15,
                                  ),
                                  child: CustomTextMontserrat(
                                    "BREAK!",
                                    fontSize: FontSize.small,
                                    fontWeight: FontWeight.w900,
                                    color: UIColors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 600),
            bottom: widget.show
                ? 0
                : MediaQuery.of(context).size.height / 1.5 * (-1),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                    "lib/assets/imgs/custom_light_bg.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 40,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomTextMontserrat(
                                    "NORMAL MODE",
                                    fontSize: FontSize.medium,
                                    fontWeight: FontWeight.w900,
                                    color: UIColors.fontMain,
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextMontserrat(
                                    "The basic experience, with no weird questions.",
                                    fontSize: FontSize.small,
                                    textAlign: TextAlign.end,
                                    fontWeight: FontWeight.w500,
                                    color: UIColors.fontMain,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextMontserrat(
                                    "(RECOMMENDED)",
                                    fontSize: FontSize.small,
                                    textAlign: TextAlign.start,
                                    fontWeight: FontWeight.w900,
                                    color: UIColors.fontMain,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FlatButton(
                                onPressed: () {
                                  //TODO IMPLEMENT GAME MODE
                                },
                                color: UIColors.blueDark,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 15,
                                  ),
                                  child: CustomTextMontserrat(
                                    "BREAK!",
                                    fontSize: FontSize.small,
                                    fontWeight: FontWeight.w900,
                                    color: UIColors.detailBlueLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
