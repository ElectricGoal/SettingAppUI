import 'package:flutter/material.dart';
import 'setting_component.dart';

class HomeSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.arrow_back_ios_rounded,
                  color: Colors.black, size: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.only(left: 22, top: 10),
                child: themeText("Settings", 40)),
            Container(
              padding: EdgeInsets.only(left: 22, top: 40),
              child: themeText("Account", 25),
            ),
            Container(
                padding: EdgeInsets.only(left: 12, top: 20), child: Account()),
            Container(
              padding: EdgeInsets.only(left: 22, top: 30),
              child: themeText("Settings", 25),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <StatelessWidget>[
                    Language(),
                    FListTitle(
                        text: "Nofication",
                        icon: Icons.notifications_none_rounded,
                        color: Colors.blue),
                    DarkMode(),
                    FListTitle(
                      text: "Help",
                      icon: Icons.help_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
