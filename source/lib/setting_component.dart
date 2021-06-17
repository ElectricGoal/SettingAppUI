import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:setting_app/account_page.dart';

Widget themeText(String? text, double size) {
  return Text(
    text!,
    style: GoogleFonts.lato(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: Icon(
          Icons.person,
          color: Colors.black,
          size: 30,
        ),
      ),
      title: themeText("ElectricGoal", 20),
      subtitle: Text(
        "Personal info",
        style: GoogleFonts.lato(
          fontSize: 15,
          color: Colors.black54,
        ),
      ),
      trailing: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AccountPage();
              }));
            },
            child: Icon(Icons.navigate_next_rounded,
                color: Colors.black, size: 25)),
      ),
    );
  }
}

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.orange[100],
        ),
        child: Icon(
          Icons.language_rounded,
          color: Colors.orange,
          size: 30,
        ),
      ),
      title: TextBoth(title: "Language", text: "English"),
      trailing: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: Icon(Icons.navigate_next_rounded, color: Colors.black, size: 25),
      ),
    );
  }
}

// ignore: must_be_immutable
class DarkMode extends StatelessWidget {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: TextBoth(title: "Dark mode", text: "Off"),
      value: _lights,
      onChanged: (bool value) {},
      secondary: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.purple[100],
        ),
        child: Icon(
          Icons.dark_mode_rounded,
          color: Colors.purple,
          size: 30,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextBoth extends StatelessWidget {
  TextBoth({required this.title, required this.text});

  String? title;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Text(text!,
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.black54,
            )),
      ],
    );
  }
}

// ignore: must_be_immutable
class FListTitle extends StatelessWidget {
  FListTitle({required this.text, required this.icon, required this.color});
  String? text;
  IconData? icon;
  MaterialColor color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          color: color[100],
        ),
        child: Icon(
          icon,
          color: color,
          size: 30,
        ),
      ),
      title: themeText(text, 20),
      trailing: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black12,
        ),
        child: Icon(Icons.navigate_next_rounded, color: Colors.black, size: 25),
      ),
    );
  }
}
