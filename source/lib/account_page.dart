import 'package:flutter/material.dart';
import 'package:setting_app/account_page_component.dart';
import 'package:setting_app/setting_component.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.arrow_back_ios_rounded,
                      color: Colors.black, size: 30),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.cyan[300],
                    ),
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                padding: EdgeInsets.only(left: 22, top: 10),
                child: HeadText(text: "Account", size: 40)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Photo(),
                RowText(
                  text1: "Name",
                  text2: "ElectricGoal",
                  size: 22,
                ),
                Gender(),
                RowText(
                  text1: "Age",
                  text2: "18",
                  size: 22,
                ),
                RowText(
                  text1: "Email",
                  text2: "minhtu225@gmail.com",
                  size: 20,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
