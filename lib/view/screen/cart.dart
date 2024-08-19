import 'package:alsharqapp/Controller/cart_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/view/widget/card/custom_bottom_navgationbar_cart.dart';
import 'package:alsharqapp/view/widget/card/customitemscartlist.dart';
import 'package:alsharqapp/view/widget/card/topcartcart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override 
  Widget build(BuildContext context) {
CartController cartController = Get.put(CartController()); 

  return Scaffold(
    appBar: AppBar( iconTheme: IconThemeData(color: Colors.blue),
  backgroundColor: Colors.white,
  title:   Text("85".tr , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 20),),
  centerTitle: true,
    ),
      bottomNavigationBar: GetBuilder<CartController>(builder: (controller) => 
       BottomNavgationBarCart(
        controllercoupon: controller.controllercoupon! ,
        onApplyCoupon: () {
          controller.checkcoupon();
        },
        price:"${cartController.priceorders}",
         discount: "${controller.discountcoupon}%",
         shipping: "0",
          totalprice: "${controller.getTotalPrice()}"),),

      body: GetBuilder<CartController>(builder: (controller) => 
      HandlingDataView(statusRequest: controller.statusRequest, widget: ListView(
         
        children: [
        
        

            const SizedBox(height: 15,),
              TopcartCart( message: "You have ${cartController.totalcountitems} items in your list",),

             Container(
              padding: const EdgeInsets.all(10),
               child:   Column(
                 children: [
                   

                
                ...List.generate(cartController.data.length, (index) =>
                 CustomItemsCartList(
                  onAdd: ()async {
                 await   cartController.add("${cartController.data[index].itemsId!}");
                    cartController.refreshPage();
                  },
                  onRemove: () async {
                                 await       cartController.delete("${                 await   cartController.delete("${cartController.data[index].itemsId!}")
}");
 cartController.refreshPage();
                  },
                  count: "${cartController.data[index].countitems}",
                  name: "${translateDatabase(cartController.data[index].itemsNameAr, cartController.data[index].itemsName)}",
                   price: "${cartController.data[index].itemsPrice}",
                    imagename: "${cartController.data[index].itemsImage}",
                    ),
)

                 ],
               ),
             ),
        ]
        ),),)
    );
  }
}