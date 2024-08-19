
import 'package:alsharqapp/Controller/address/add_controller.dart';
import 'package:alsharqapp/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({super.key});
  @override
  Widget build(BuildContext context) {
Get.put(AddAddressController());
    return Scaffold(
      appBar: AppBar(
        title:   const Text("AddressAdd"),
      ),
      
      // ignore: avoid_unnecessary_containers
      body: Container(
        
      child: GetBuilder<AddAddressController>(builder: (controllerpage)=>HandlingDataView(
        statusRequest: controllerpage.statusRequest,
         widget: Column(
        children: [
         if(controllerpage.kGooglePlex != null)  
              Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  GoogleMap(
                    markers: controllerpage.markers.toSet(),
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    onTap: (LatLng){
                      controllerpage.addMarkers(LatLng);
                    },
                    mapType: MapType.normal,
                    initialCameraPosition: controllerpage.kGooglePlex!,
                    onMapCreated: (GoogleMapController controllermap) { 
                      controllerpage.completercontroller!.complete(controllermap);
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: MaterialButton(
                        minWidth: 200,
                        onPressed: () {
                       controllerpage. goToPageAddDetailsAddress();
                      },
                       // ignore: sort_child_properties_last
                       child:   const Text("اكمال" , style: TextStyle(fontSize: 18),) ,
                       color: Colors.blue,
                        textColor: Colors.white, ),
                    ),
                  ),
                ],
              ),
            ),
        ]
      ),
        
      ),)
      ),
      );
    
  }


}

//AIzaSyCMzAJ10c-JCbPqDtISn0ZdDhpFCySpfI0