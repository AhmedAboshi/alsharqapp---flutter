
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

imageUploadCamera() async{
    final XFile? file = await ImagePicker().pickImage(source: ImageSource.camera , imageQuality: 90);

 if(file != null){
  return File(file.path);
  } else {
    return null ;
  }
}

fileUploadGallery([isSvg =false]) async{
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom ,
   
     
     allowedExtensions:isSvg
     ?["svg" , "SVG"]
    :  ["png" , 
      "PNG" ,
      "jpeg" , 
      "gif" ,]
 
  );
   if(result != null){
   return File(result.files.single.path!);
  } else {
   return null ;
   }
}  

showModelBottomSheet(imageUploadCamera() ,fileUploadGallery()){
  Get.bottomSheet(
  
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.amber,
        padding: EdgeInsets.all(10),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const  Text(
                "اختر صورة" ,
                style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.green),
                ),
            ),
          const   Padding(padding: EdgeInsets.only(top: 10)),
            ListTile(
              onTap: (){
                imageUploadCamera() ;
                Get.back();
              },
              leading:const  Icon(Icons.camera_alt ,
              size: 40,
              ),
              title: const Text("اختر صورة من الكميرا", 
                style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            ),
              ListTile(
              onTap: (){
                fileUploadGallery() ;
                Get.back();
              },
              leading:const  Icon(Icons.image ,
              size: 40,
              ),
              title: const Text("اختر صورة من الاستديو", 
                style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    )
      );
  
}