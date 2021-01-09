import 'package:flutter/material.dart';
import 'package:ice_breaker/screens/game_mode_screen.dart';
import 'package:ice_breaker/screens/index_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool index;
  bool naughty;
  bool normal;

  @override
  void initState() {
    index = true;
    naughty = false;
    normal = false;
    super.initState();
  }

  void onClickStart() {
    setState(() {
      index = false;
      naughty = true;
      normal = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (!index) {
          setState(() {
            index = true;
            naughty = false;
            normal = false;
          });
        } else {
          Navigator.pop(context);
        }

        return;
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "lib/assets/imgs/main_bg.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              GameModeScreen(
                show: index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
