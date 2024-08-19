import 'package:alsharqapp/Controller/orders/archive_controller.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:alsharqapp/view/screen/orders/diolgrating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrderListArchive extends GetView<OrdersArchiveController> {
  final OrdersModel listdata;
  const CardOrderListArchive({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    return  Card(child: Container( 
          padding: const  EdgeInsets.all(10),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Order Number : #${listdata.ordersId}" , style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
             const    Spacer(),
                //Text("${listdata.ordersDatetime}")
                Text(
                    Jiffy.parse(listdata.ordersDatetime!, pattern: "yyyy-MM-dd").fromNow(),
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
              ],
            ),
           const  Divider(),
           
             Text("Order price : ${listdata.ordersPrice}\$" , style: const TextStyle(fontSize: 15,color: Colors.black),),
               Text("Order usersid : ${listdata.ordersUsersid}" , style:  const TextStyle(fontSize: 15,color: Colors.black),), 
               Text("paymentmethod : ${controller.printPaymentMethod(listdata.ordersPaymentmethode!)}" ,  style: const  TextStyle(fontSize: 15,color: Colors.black),),
               Text("Order stutes : ${controller.printOrderStatus(listdata.ordersStutas!)}" ,  style: const  TextStyle(fontSize: 16,color: Colors.red),),
        const        Divider(), 
                Row(
                  children: [
                    Text("totalprice :  ${listdata.ordersTotalprice}\$" ,
                     style:const  TextStyle(fontSize: 15 , fontWeight: FontWeight.bold, 
                     color: Colors.blue,
                     ), ),
                  const    Spacer(),
                     MaterialButton(onPressed: (){
                      Get.toNamed(AppRoute.ordersdetalis , arguments: {
                        "ordersmodel": listdata ,
                      });
                     } , color: Colors.blue,
                     textColor: Colors.white,
                      child:    Text("76".tr , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), )
                     ),
                     SizedBox(width: 10,),
                if(listdata.ordersRading =="0")       MaterialButton(onPressed: (){
                    showDialogRating(context , listdata.ordersId!);
                     } , 
                     color: Colors.blue,
                     textColor: Colors.white,
                      child:    Text("78".tr , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), )
                     ),
                     
                    
           //showDialogRating
                  ],
                ),

             
          ],
         ),
         ),
         );
  }
}