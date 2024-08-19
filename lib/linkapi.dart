class AppLink{
 static   const String server="http://172.20.10.3/alsharqservices";
 static   const String test="$server/test.php";

 static   const String imageststatic="$server/upload";
static   const String  viewusers ="$server/admin/viewusers.php";
 //========================== Image ============================ 
static const String imagestCategories = "$imageststatic/categories";  
static const String imagestItems = "$imageststatic/items"; 
static const String imagestcare = "$imageststatic/imagecare"; 
static const String imagestusers = "http://172.20.10.3/alsharqservices/upload"; 

//===================================Auth==========================//
 static   const String  singup ="$server/auth/signup.php";
  static   const String  Login ="$server/auth/Login.php";
 static   const String  verfiyCodeSignUp ="$server/auth/verficode.php";
 static   const String  reSend ="$server/auth/reSend.php";

//===================================ForgetPassword==========================//
static   const String  checkemail ="$server/forgetpassword/checkemail.php";
static   const String  resetpassword ="$server/forgetpassword/resetpassword.php";
static   const String  verifycodeforgetpassword ="$server/forgetpassword/verficode.php";

//===================================home==========================//
static   const String  homeScreen="$server/home.php";

//items
static const String items = "$server/items/items.php"  ;
static const String  searchitems = "$server/items/search.php"  ;
// Favorite
static const String favoriteAdd = "$server/favorite/add.php"  ;
static const String favoriteRemove = "$server/favorite/remove.php" ;
static const String favoriteView = "$server/favorite/view.php" ;
static const String deletefromfavroite = "$server/favorite/deletefromfavroite.php" ;
// imaigecare
static   const String  imaigecareview="$server/imagecareview.php";

// cart
static const String cartview = "$server/cart/view.php"  ;
static const String cartadd = "$server/cart/add.php"  ;
static const String cartdelete = "$server/cart/delete.php" ;
static const String getcountitems = "$server/cart/getcountitems.php" ;
 // Address
  static const String addressView = "$server/address/view.php"  ;
static const String addressAdd = "$server/address/add.php"  ;
static const String addressDelete = "$server/address/delete.php" ;
static const String addressEdit = "$server/address/edit.php" ;
// coupon
static const String checkcoupon = "$server/coupon/checkcoupon.php" ;
// checkout
static const String checkout = "$server/orders/checkout.php" ;

// orders
static const String orderspending = "$server/orders/pending.php" ;
static const String ordersdetails = "$server/orders/details.php" ;
static const String deleteorders= "$server/orders/delete.php" ;
static const String archiveorders= "$server/orders/archive.php" ;
static   const String  viewpricecity ="$server/pricecity/viewpricecity.php";

// notification
static const String notification = "$server/notification.php" ;
//offers
static const String offers = "$server/offers.php" ;

static const String rating = "$server/rataing.php" ;
} 


