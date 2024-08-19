import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



    
Future<Set<Polyline>> getPolyLine(lat ,long ,destlat , destlong)async{
  List<LatLng>  polylinco = [];

PolylinePoints polylinePoints = PolylinePoints();

Set<Polyline> polylineSet = {};


String url = "https://maps.googleapis.com/maps/api/directions/json?origin=$lat,$long&destination=$destlat,$destlong&key=AIzaSyAo7ROY4lYksid-Tf97Rjzmfdwfso4NJ3g";
 var response = await http.post(Uri.parse(url));
 var responsebody = jsonDecode(response.body);
 var point =responsebody['routes'][0]['overview_polyline']['points'];
 List<PointLatLng> result = polylinePoints.decodePolyline(point);
if(result.isNotEmpty){
  result.forEach((PointLatLng pointLatLng) { 
    polylinco.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
  });
}
Polyline polyline = Polyline(polylineId: PolylineId("ahmed"), color: Color(0xff3498db), width: 5 , points: polylinco);
polylineSet.add(polyline);
return polylineSet ;
}