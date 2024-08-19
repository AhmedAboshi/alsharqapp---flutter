


import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:async';
import 'package:alsharqapp/core/functions/getdescriptor.dart';
import 'package:alsharqapp/core/statusrequest.dart';
import 'package:alsharqapp/data/model/ordersmodel.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../core/Services/Services.dart';

class TrackingController extends GetxController{
  Set<Polyline> polylineSet = {};
StreamSubscription<Position> ?positionStream ;
 StatusRequest statusRequest = StatusRequest.success;
 MyServices myServices = Get.find();
  late OrdersModel ordersModel ;
 Timer? timer ;
double? destlat ;
double? destlong ;

double? curentlat ;
double? curentlong ;

  GoogleMapController? gmc ;
      List<Marker> markers = [];
CameraPosition? cameraPosition;
//OrdersAcceptedController ordersAcceptedController = Get.find();

intialData(){
  cameraPosition = CameraPosition(
        target: LatLng(double.parse(ordersModel.addressLat!),
            double.parse(ordersModel.addressLong!)),
        zoom: 12.4746,
      );
    markers.add(Marker(
      markerId: MarkerId("current"),
      position: LatLng(double.parse(ordersModel.addressLat!),
      double.parse(ordersModel.addressLong!) ),
      ));
  
      
}



 initPolyline()async{
   destlat = double.parse(ordersModel.addressLat!);
    destlong =  double.parse(ordersModel.addressLong!);
 await Future.delayed(Duration(seconds: 1));
 polylineSet =  await getPolyLine(curentlat, curentlong, destlat, destlong) ;
 update();
 }
getLocationdelivery(){
  FirebaseFirestore.instance.collection("delivery").doc(ordersModel.addressId).snapshots().listen((event) { 
    if (event.exists) {
      destlat = event.get("lat");
      destlong = event.get("long");
      updateMarkerDelivery(destlat!, destlong!);
        update();

    }
  });
}
 
updateMarkerDelivery(double newlat , double newlong){
  markers.removeWhere((element) => element.markerId.value ==  "dest");
 markers.add(Marker(
     markerId: MarkerId("dest"),
     position: LatLng(newlat,
     newlong),
      ));
        update();

}

@override
  void onInit() {
    ordersModel = Get.arguments['ordersModel'] ;
    intialData();
    getLocationdelivery();
   //  initPolyline();
   
    super.onInit();
  }
@override
  void onClose() {
  // positionStream!.cancel() ;
   gmc!.dispose();
    super.onClose();
  }
}

