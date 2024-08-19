import 'package:alsharqapp/Controller/image_controller.dart';
import 'package:alsharqapp/data/model/imagemodel.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ImageProduct extends GetView<ImageCareController> {
   ImageProduct({super.key});
  ImageCareController controller = Get.find();
ImageModel imageModel =ImageModel();
  @override
  Widget build(BuildContext context) {
    
       
    return  Stack(
      clipBehavior: Clip.none,
            children: [
              
                                              
                 SizedBox(height: 15,) ,

                   Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10 )),
           padding: const EdgeInsets.symmetric(horizontal: 10),
           height: 38,
            width: 80,
            child: CachedNetworkImage(
           imageUrl:     "${AppLink.imagestcare}/${imageModel.imagecareImage}",
                ),
          ),
                             

            ],
          );
  }
}