  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_journey/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color BackgroundColor;
  double size;
  IconData? icon;
  String text;
  bool? isIcon;
  final Color borderColor;
     AppButtons({Key? key,
       this.text="hi",
       this.isIcon=false,
       this.icon,
       required this.color,
    required this.size,
    required this.BackgroundColor,
    required  this.borderColor}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor
            ,width: 1.0),
            borderRadius: BorderRadius.circular(15),
            color: BackgroundColor,
        ),
        child: isIcon==false?Center(child: AppText(text: text,color: color)):Center(child: Icon(icon,color: color,)),
      );;
    }
  }
  