import 'package:alsharqapp/bindings/intialbindings.dart';
import 'package:alsharqapp/core/Services/Services.dart';
import 'package:alsharqapp/core/localization/translation.dart';
import 'package:alsharqapp/firebase_options.dart';
import 'package:alsharqapp/route.dart';
import 'package:alsharqapp/theme_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/localization/changelocal.dart';
import "package:provider/provider.dart";


void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((instance){
   
  });
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
    
  );
  
  await initialServices();
  await GetStorage.init();
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderData>(
      create: (context) => ProviderData(),
      child: MyAppThemm(),
      );
  }

}class MyAppThemm extends StatelessWidget {
  const MyAppThemm({super.key});

  @override
  Widget build(BuildContext context) {
   // final theme = Provider.of<ProviderData>(context);
    LocaleController controller = Get.put(LocaleController());
    return  GetMaterialApp(
      themeMode: ThemeService().getThemeMode(),
      darkTheme: ThemeService().darkTheme,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeService().lightTheme, 
      
      initialBinding:initialBindings() ,
      // routes: routes,
      getPages: route,
    );
  }
}
//AIzaSyAo7ROY4lYksid-Tf97Rjzmfdwfso4NJ3g