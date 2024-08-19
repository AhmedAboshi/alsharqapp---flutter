import 'package:alsharqapp/core/constant/imagesassed.dart';
import 'package:alsharqapp/view/widget/cardadmin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Callwe extends StatelessWidget {
  const Callwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("68".tr, style: TextStyle(fontWeight: FontWeight.bold,),
       
        ),
      ),
     body: Column(
       children: [
         Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      
                        Row(
                         //  mainAxisSize: MainAxisSize.min,
                           children: [
                               SizedBox(width: 30,),
                            CardAdminListe(
                              url: APPimagesassed.WhatsApp,
                              title: "69".tr,
                              onClick: (){
                                   _openwhatsAppChat();
                              },
                            ),
                               SizedBox(width: 100,),
                             CardAdminListe(
                              url: APPimagesassed.call,
                              title: "70".tr,
                              onClick: (){
                                   launchUrl(Uri.parse("tel:+966550186105"));
                              },
                            ),
                          //    SizedBox(height: 30,),
                          //    Text("تابع اخبارنا" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.green),),
                          //    ListTile(
                          //     onTap: () {
                          //     //Get.toNamed(AppRoute.callwe);
                          //  },
                          //   title: const Text("callwe"),
                          //   trailing:const Icon(Icons.call_outlined , color: Colors.green,) ,
                          //    ),
                           ],
                        ),
                    ]
                      ),
                         
                    ],
                    
                  ),
            ],
            
          ),
             
          ),
          SizedBox(height: 30,),
                    Text("71".tr , style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.green),),
               SizedBox(height: 30,),
          Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      
                        Row(
                         //  mainAxisSize: MainAxisSize.min,
                           children: [
                               SizedBox(width: 30,),
                            CardAdminListe(
                              url: APPimagesassed.twetir,
                              title: "72".tr,
                              onClick: (){
                                   _opentwiterApp();
                              },
                            ),
                               SizedBox(width: 30,),
                             CardAdminListe(
                              url: APPimagesassed.facebook,
                              title: "73".tr,
                              onClick: (){
                                  _openfacebookApp(); 
                              },
                            ),

                          SizedBox(width: 5,),
                             CardAdminListe(
                              url: APPimagesassed.instagram,
                              title: "74".tr,
                              onClick: (){
                                _openinstgramApp();
                              },
                            ),



                          //    SizedBox(height: 30,),
                          //    Text("تابع اخبارنا" , style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.green),),
                          //    ListTile(
                          //     onTap: () {
                          //     //Get.toNamed(AppRoute.callwe);
                          //  },
                          //   title: const Text("callwe"),
                          //   trailing:const Icon(Icons.call_outlined , color: Colors.green,) ,
                          //    ),
                           ],
                        ),
                    ]
                      ),
                         
                    ],
                    
                  ),
            ],
       
       
     ),
       ]
     )
     );
    
  }
   void _openwhatsAppChat()async{ 
   await launch('https://wa.me/966550186105?text= متعطل بالطريق ممكن خدمتي');
                    }

                     void _opentwiterApp()async{ 
   await launch("https://x.com/ALSHARQCOmmany?t=l0eVGpAeSh4y_uIXEUyEPQ&s=08");
                    }
                      void _openfacebookApp()async{ 
   await launch("https://www.facebook.com/profile.php?id=61560234822764&mibextid=JRoKGi");
                    }

 void _openinstgramApp()async{ 
   await launch("https://www.instagram.com/alsarqksa?igsh=cHg0ZXVtdndxbHlk");
                    }

}


 