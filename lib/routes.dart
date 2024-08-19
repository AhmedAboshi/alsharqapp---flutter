



import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/view/address/add.dart';
import 'package:alsharqapp/view/address/adddetails.dart';
import 'package:alsharqapp/view/address/view.dart';
import 'package:alsharqapp/view/screen/aboutas.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:alsharqapp/view/screen/auth/homepashe.dart';
import 'package:alsharqapp/view/screen/auth/language.dart';
import 'package:alsharqapp/view/screen/auth/languageapp.dart';
import 'package:alsharqapp/view/screen/auth/login.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:alsharqapp/view/screen/auth/signup.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:alsharqapp/view/screen/auth/verifycodesignup.dart';
import 'package:alsharqapp/view/screen/auth/success_signup.dart';
import 'package:alsharqapp/view/screen/callwe.dart';
import 'package:alsharqapp/view/screen/checkout.dart';
import 'package:alsharqapp/view/screen/items.dart';
import 'package:alsharqapp/view/screen/myfavorite.dart';
import 'package:alsharqapp/view/screen/onboarding.dart';
import 'package:alsharqapp/view/screen/orders/pending.dart';
import 'package:alsharqapp/view/screen/orders/traking.dart';
import 'package:alsharqapp/view/screen/profileusr.dart';
import 'package:flutter/material.dart';




Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.Login: (context) => const Login(),
  AppRoute.SignUp: (context) => const SigenUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifycode: (context) => const verifycode(),
  AppRoute.resetPassword: (context) => const resetPassword(), 
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.SuccessSignUp: (context) => const SuccessSignUp(),
  AppRoute.onboarding: (context) => const onboarding(),
  AppRoute.language: (context) => const Language(),
  AppRoute.homepashe: (context) => const HomePashe(),
    AppRoute.verifycodesignup: (context) => const VerfiyCodeSignUp(),
      AppRoute.items: (context) => const Items(),
            AppRoute.myfavroite: (context) => const MyFavorite(),
           AppRoute.addressview: (context) => const AddressView(),
           AppRoute.addressadd: (context) =>  const AddressAdd(),
            AppRoute.adddetails: (context) => const AddressAddDetails(),
            AppRoute.checkout : (context) =>  Checkout(),
            AppRoute.orderspending : (context) => const OrdersPending(),
                        AppRoute.orderstracking : (context) => const OrdersTracking(),
 AppRoute.callwe : (context) => const Callwe(),
  AppRoute.aboutas : (context) => const Aboutas(),
   AppRoute.languageapp : (context) => const LanguageApp(),
      AppRoute.profileuser : (context) => const UserProfileScreen(),      
};
  