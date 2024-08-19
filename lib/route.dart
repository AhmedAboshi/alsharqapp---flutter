import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/core/middleware/mymiddleware.dart';
import 'package:alsharqapp/view/address/add.dart';
import 'package:alsharqapp/view/address/adddetails.dart';
import 'package:alsharqapp/view/address/view.dart';
import 'package:alsharqapp/view/screen/aboutas.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:alsharqapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:alsharqapp/view/screen/auth/homepashe.dart';
import 'package:alsharqapp/view/screen/auth/language.dart';
import 'package:alsharqapp/view/screen/auth/languageapp.dart';
import 'package:alsharqapp/view/screen/auth/login.dart';
import 'package:alsharqapp/view/screen/auth/signup.dart';
import 'package:alsharqapp/view/screen/auth/success_signup.dart';
import 'package:alsharqapp/view/screen/auth/verifycodesignup.dart';
import 'package:alsharqapp/view/screen/callwe.dart';
import 'package:alsharqapp/view/screen/cart.dart';
import 'package:alsharqapp/view/screen/checkout.dart';
import 'package:alsharqapp/view/screen/items.dart';
import 'package:alsharqapp/view/screen/myfavorite.dart';
import 'package:alsharqapp/view/screen/offers.dart';
import 'package:alsharqapp/view/screen/onboarding.dart';
import 'package:alsharqapp/view/screen/orders/archive.dart';
import 'package:alsharqapp/view/screen/orders/details.dart';
import 'package:alsharqapp/view/screen/orders/pending.dart';
import 'package:alsharqapp/view/screen/orders/traking.dart';
import 'package:alsharqapp/view/screen/productdetails.dart';
import 'package:alsharqapp/view/screen/profileusr.dart';
import 'package:get/get.dart';
List<GetPage<dynamic>>? route = [
  
GetPage(  name: "/", page: () => const Language(), middlewares: [
 MyMiddleWare()
 ]),
 
  GetPage(name: AppRoute.cart, page: () =>  const Cart()),
  GetPage(name: AppRoute.Login, page: () => const Login()),
  GetPage(name: AppRoute.SignUp, page: () => const SigenUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifycode, page: () => const verifycode()),
  GetPage(name: AppRoute.resetPassword, page: () => const resetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.SuccessSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onboarding, page: () => const onboarding()),
  GetPage(name: AppRoute.verifycodesignup, page: () => const VerfiyCodeSignUp()),
   GetPage(name: AppRoute.homepashe, page: () => const HomePashe()),

    GetPage(name: AppRoute.items, page: () => const Items()),
    GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
    GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
        GetPage(name: AppRoute.addressview, page: () => const AddressView()),
        GetPage(name: AppRoute.addressadd, page: () =>  const AddressAdd()),
        GetPage(name: AppRoute.adddetails, page: () => const AddressAddDetails()),
        GetPage(name: AppRoute.checkout, page: () =>  Checkout()),
        GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
         GetPage(name: AppRoute.ordersdetalis, page: () => const OrdersDetails()),
         GetPage(name: AppRoute.archiveorders, page: () => const OrdersArchiveView()),
        GetPage(name: AppRoute.offers, page: () => const OffersView()),
                GetPage(name: AppRoute.orderstracking, page: () => const OrdersTracking()),
GetPage(name: AppRoute.callwe, page: () => const Callwe()),
GetPage(name: AppRoute.aboutas, page: () => const Aboutas()),
GetPage(name: AppRoute.languageapp, page: () => const LanguageApp()),
GetPage(name: AppRoute.profileuser, page: () => const UserProfileScreen()),



];
