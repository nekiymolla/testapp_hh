import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCodes extends StatelessWidget {
  ButtonCodes({
    super.key,
    this.onPressed,
    required this.color,
    required this.text,
    required this.iconConColor,
  });

  Function()? onPressed;
  Color color;
  Color iconConColor;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      color: iconConColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.qr_code,
                      color: Colors.black,
                    )),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                text,
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          )),
    );
  }
}
