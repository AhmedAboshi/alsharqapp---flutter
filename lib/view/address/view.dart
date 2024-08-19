import 'package:alsharqapp/Controller/address/view_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:alsharqapp/core/constant/routes.dart';
import 'package:alsharqapp/data/model/addressmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(AddressViewController());
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Address"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(AppRoute.addressadd);
      },
      child: const Icon(Icons.add),),
      body: GetBuilder<AddressViewController>(builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest,
       // ignore: avoid_unnecessary_containers
       widget: Container(
        child: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context, i) {
            return CardAddress(addressModel: controller.data[i], onPressed :() {
              controller.deleteAddress(controller.data[i].addressId!);
               Get.rawSnackbar(
            title: "اشعار",
            messageText: const Text("تم حذف عنوان التوصيل"));
            },);
          },
          ),
      ),),)
    );
  }
}

class CardAddress extends StatelessWidget {
  final AddressModel addressModel;
  final void Function()? onPressed;
  const CardAddress({super.key, required this.addressModel, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(addressModel.addressName!),
        subtitle: Text("${addressModel.addressCity} ${addressModel.addressStreet}"),
        trailing: IconButton(onPressed: onPressed, icon: const Icon(Icons.delete_outline_rounded)),
      ),
      ),
    );
  }
}