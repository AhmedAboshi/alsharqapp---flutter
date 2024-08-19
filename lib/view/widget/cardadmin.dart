import 'package:flutter/material.dart';

class CardAdminListe extends StatelessWidget {
  final String url;
  final String title;
   final void Function()? onClick;
  const CardAdminListe({super.key, required this.url, required this.title,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
              onTap: onClick,
              child: Card(
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(url , width: 30,),
                        Text("$title")
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}