// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppbarButton extends StatelessWidget {
  String buttonname;
  final VoidCallback buttonaction;
  AppbarButton({
    Key? key,
    required this.buttonname,
    required this.buttonaction,
  }) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return TextButton(
                  onPressed:buttonaction,
                  child: Text(
                    buttonname,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                       letterSpacing: 2,
                       color: Colors.black
                    ),
                  ),
                );
  }
}
