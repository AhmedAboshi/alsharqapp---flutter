import 'package:alsharqapp/core/constant/color.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customtextbodyauth extends StatelessWidget {
   final String text;
  const customtextbodyauth({super.key, required this.text});

 

  @override
  Widget build(BuildContext context) {
    return   Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
             text,
              textAlign: TextAlign.center,
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppcolorApp.primaryColor ),
            ),
          
          );
  }
}
 