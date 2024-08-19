

import 'package:flutter/material.dart';

class CardPaymentMethodCheckout extends StatelessWidget {
    final String title;
final bool isActive;
  const CardPaymentMethodCheckout({super.key, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const  EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                padding:  const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
              
                decoration: BoxDecoration(
                  color:isActive == true ? Colors.blue : Colors.white, borderRadius: BorderRadius.circular(20)),
                  child:   Text(
                  title , 
                    style:   TextStyle(
                      fontSize: 14 , 
                      fontWeight: FontWeight.bold,
                       color: isActive == true ? Colors.white : Colors.black ,
                       height: 1) , ),
              );
  }
}