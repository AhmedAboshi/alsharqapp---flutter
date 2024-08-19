
import 'package:alsharqapp/Controller/settings_controller.dart';
import 'package:alsharqapp/core/constant/imagesassed.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
   bool stutas = true ; 
  @override
  void initState(){

    super.initState();
   // setState(() => _darkMode = darkMode );
  }
  Widget build(BuildContext context) {
   

    SettingsController controller =Get.put(SettingsController());
    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.width /3,
                color: Colors.blue,
              ),
              Positioned(
              top:  Get.width /3.8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100)),
                  child:  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[100],
                    backgroundImage: const AssetImage(APPimagesassed.logo),
                  ),
                
                ),
                
                ),
                
                 Row(
                   children: [
                     SizedBox(width: 50,),
                     Text("83".tr, style: TextStyle(fontSize: 20 , color: Colors.white)),
                      SizedBox(width: 20,),
                     Text( "${controller.myServices.sharedPreferences.getString("username".tr)}".tr , style: TextStyle(fontSize: 20 , color: Colors.white)),
                     SizedBox(width: 50,),
                     Text(" ${controller.myServices.sharedPreferences.getString("userphone")}" , style: TextStyle(fontSize: 20 , color: Colors.white),)
                   ],
                 ),
                  
            ],
          ),

          const SizedBox(height: 100,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:  Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                       onTap: () {
                        Get.toNamed(AppRoute.profileuser);
                     },
                      title:  Text("84".tr , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                      leading: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.green,
                      ),
                      trailing:const Icon(Icons.arrow_right , color: Colors.green,) ,
                      
                                      ),
                   ),
                  const Divider(),
                     ListTile(
                     onTap: () {
                      Get.toNamed(AppRoute.callwe);
                   },
                    title:  Text("44".tr , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    trailing:const Icon(Icons.call_outlined , color: Colors.green,) ,
                    
                 ),
                 SwitchListTile(
                  title: Text("45".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                 
                  value: stutas,
                  onChanged: (val){
                
setState(() {
  ThemeService().changeTheme();
  stutas = val;
 

 
});
                  }),
                  const Divider(),
                    // RadioMenuButton(value: "value", groupValue: "groupValue", onChanged: "", child: child),
                    ListTile(
                     onTap: () {
                      Get.toNamed(AppRoute.addressview);
                    },
                    title:  Text("46".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    trailing: const Icon(Icons.location_on_outlined , color: Colors.red,),
                  ),
                   ListTile(
                     onTap: () {
                      Get.toNamed(AppRoute.orderspending);
                    },
                    title:  Text("47".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    trailing: const Icon(Icons.card_travel , color: Colors.blue,),
                  ),
                   ListTile(
                     onTap: () {
                      Get.toNamed(AppRoute.archiveorders);
                    },
                    title:  Text("48".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    trailing: const Icon(Icons.card_travel_rounded , color: Colors.red,),
                  ),
                  const Divider(),
                   ListTile(
                     onTap: () {
                      Get.toNamed(AppRoute.aboutas);
                    },
                    title:  Text("49".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    trailing: const Icon(Icons.help_outline_rounded , color: Colors.blue,),
                  ),
                   const Divider(),
 
                    ListTile(
                     onTap: () {
                       Get.toNamed(AppRoute.languageapp);
                    },
                  
                     title:  Text("50".tr, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                     trailing: const Icon(Icons.language, color: Colors.blue,),
                   ),
                  //  ListTile(
                  //    onTap: () {
                  //     launchUrl(Uri.parse("tel:+966550186105"));
                  //   },
                  
                  //   title: const Text("Contact as"),
                  //   trailing: const Icon(Icons.call_rounded, color: Colors.green,),
                  // ),
                   ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title:  Text("51".tr, style: TextStyle(fontWeight: FontWeight.bold,),),
                    trailing: const Icon(Icons.exit_to_app, color: Colors.blue,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

    void _openwhatsAppChat()async{
   await launch('https://wa.me/966550186105?text= متعطل بالطريق ممكن خدمتي');
                    }
}


