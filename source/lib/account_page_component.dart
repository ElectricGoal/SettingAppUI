import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:setting_app/setting_component.dart';

class Information extends StatelessWidget {
  Information({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: Text(
        text!,
        style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class RowText extends StatelessWidget {
  RowText({this.text1, this.text2, this.size});
  String? text1;
  String? text2;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, top: 30),
      child: Row(
        children: [Information(text: text1), TextWidget(text: text2!, size: size!)],
      ),
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, top: 30),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Information(text: "Photo"),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 60,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Upload image",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class Gender extends StatelessWidget {
  const Gender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, top: 30),
      child: Row(
        children: [
          Information(text: "Gender"),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.purple[300],
            ),
            child: Icon(
              Icons.male_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black12,
            ),
            child: Icon(
              Icons.female_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
