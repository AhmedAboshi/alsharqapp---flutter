import 'package:flutter/material.dart';

class TopcartCart extends StatelessWidget {
   final String message ;
  const TopcartCart({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const  EdgeInsets.only(bottom: 5),
                margin: const  EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20)),
             child:  Text(message , textAlign: TextAlign.center,
              style:  const TextStyle(color: Colors.white,
               fontWeight: FontWeight.bold),),
          );
  }
}