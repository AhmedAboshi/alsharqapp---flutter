import 'package:alsharqapp/Controller/checkout_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/functions/validinput.dart';
import 'package:alsharqapp/core/shared/customtextformglople.dart';
import 'package:alsharqapp/view/widget/checkout/cardpaymentmethod.dart';
import 'package:alsharqapp/view/widget/checkout/cardshippingaddress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Checkout extends StatefulWidget {

   Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  DateTime dateTime =DateTime(2024 , 02, 25,12 , 30);

  @override
  Widget build(BuildContext context) {

    CheckoutController controller = Get.put(CheckoutController());
    return Scaffold(
      appBar: AppBar(
        title:  Text('58'.tr , style: TextStyle( fontWeight: FontWeight.bold , color: Colors.blue),),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            color: AppColor.backgroundcolor,
            textColor: Colors.blue,
            onPressed: () {
              controller.checkout();
            },
            child:  Text("58".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )),
      body: GetBuilder<CheckoutController>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    children: [
                       Text(
                        "59".tr,
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("0");
                        },
                        child: CardPaymentMethodCheckout(
                            title: "60".tr,
                            isActive: controller.paymentMethod == "0" // cash
                                ? true
                                : false),
                      ),
                      
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("1");
                        },
                        child: CardPaymentMethodCheckout(
                            title: "61".tr,
                            isActive: controller.paymentMethod == "1" // Card
                                ? true
                                : false),
                      ),
                      const SizedBox(height: 20),
                        // ElevatedButton(
                      
                        //  child: Text("Please choose a download time and date", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold, color: Colors.green),),
                        //   onPressed: () async{
                        //  DateTime? newDate =  await showDatePicker(
                         
                        //       context: context,
                        //      firstDate: DateTime(2000),
                        //       lastDate: DateTime(2100),
                        //       switchToInputEntryModeIcon: Icon(Icons.date_range),
                        //       );
                        //       if (newDate == null) return;
                        //    TimeOfDay? newTime=  await showTimePicker(context: context,
                        //        initialTime: TimeOfDay(
                        //         hour: dateTime.hour,
                        //          minute: dateTime.minute));
                        //          if(newTime == null) return;
                        //     final newDateTime = DateTime(
                        //      newDate.year,
                        //       newDate.month ,
                        //       newDate.day,
                        //       newTime.hour,
                        //       newTime.minute,
                        //     );
                        //       setState(() {
                        //         dateTime = newDateTime;
                        //       });
                        //   },
                          
                        // ),
const SizedBox(height: 20),
                      // Center(
                      //   child: Text(
                      //     '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${dateTime.hour} : ${dateTime.minute}',
                      //     style: TextStyle(
                      //         color: AppColor.primaryColor,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 16),
                      //   ),
                      // ),
                     const SizedBox(height: 20),

                    
                      CustonTextFormGlobal(
                hinttext: "62".tr,
                 labeltext: "62".tr,
                  iconData: Icons.location_city_outlined,
                   valid: (val){
                    return validInput(val!, 1, 30, "");
                    
                   },
                    mycontroller: controller.cityup,
                    isNumber: false),
                     const SizedBox(height: 20),

                      CustonTextFormGlobal(
                hinttext: "63".tr,
                 labeltext: "63".tr,
                  iconData: Icons.location_city_outlined,
                   valid: (val){
                    return validInput(val!, 1, 30, "");
                    
                   },
                    mycontroller: controller.citydown,
                    isNumber: false),
                     const SizedBox(height: 20),

                      CustonTextFormGlobal(
                hinttext: "64".tr,
                 labeltext: "64".tr,
                  iconData: Icons.car_rental_outlined,
                   valid: (val){
                    return validInput(val!, 1, 30, "");
                    
                   },
                    mycontroller: controller.tyapetrack,
                    isNumber: false),
                     
                      const SizedBox(height: 20),
                    CustonTextFormGlobal(
                hinttext: "65".tr,
                 labeltext: "65".tr,
                  iconData: Icons.car_rental_outlined,
                   valid: (val){
                    return validInput(val!, 1, 30, "");
                    
                   },
                    mycontroller: controller.carusers,
                    isNumber: false),
                      const SizedBox(height: 20),
                    CustonTextFormGlobal(
                hinttext: "66".tr,
                 labeltext: "66".tr,
                  iconData: Icons.mobile_screen_share_outlined,
                   valid: (val){
                    return validInput(val!, 1, 10, "");
                    
                   },
                    mycontroller: controller.phone,
                    isNumber: true),
                     const SizedBox(height: 20),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              "67".tr,
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            ...List.generate(
                              controller.dataaddress.length,
                              (index) => InkWell(
                                onTap: () {
                                  controller.chooseShippingAddress(
                                      controller.dataaddress[index].addressId!);
                                },
                                child: CardShppingAddressCheckout(
                                    title:
                                        "${controller.dataaddress[index].addressName}",
                                    body:
                                        "${controller.dataaddress[index].addressCity} ${controller.dataaddress[index].addressStreet}",
                                    isactive: controller.addressid ==
                                            controller
                                                .dataaddress[index].addressId
                                        ? true
                                        : false),
                              ),
                            )
                          ],
                        )
                    ],
                  )))),
    );
  }
}