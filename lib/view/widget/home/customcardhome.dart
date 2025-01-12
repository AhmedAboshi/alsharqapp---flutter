import 'package:alsharqapp/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
   CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child:  ListTile(
                              title: Text(title,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              subtitle: Text(body,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                            ),
                          ),
                          Positioned(
                            top: -50,
                            right:  controller.lang == "ar" ? -20 : null,
                            left :controller.lang == "en" ? -20 : null,
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(160)),
                            ),
                          )
                        ]),
                      );
  }
}