import 'package:alsharqapp/Controller/myfavoritecontroller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/data/model/myfavorite.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavoriteItems extends GetView <MyFavoriteController>{
  final MyfavoriteModel itemsModel;
  
  const CustomListFavoriteItems( {super.key,   required this.itemsModel});


  @override
  Widget build(BuildContext context) {
    
                        return InkWell(
                          onTap: () {
                            // controller.goToPageProdactDatails(itemsModel);

                          },
                          child: Card( 
                            
                             
                              child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemsImage}",
                
                child: CachedNetworkImage(
                  imageUrl: AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                   height: 80,
                ),
              ),
              const SizedBox(height: 10) , 
              Text(translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Rating 3.5 ", textAlign: TextAlign.center),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 22,
                    child: Row(
                      children: [
                        ...List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                    size: 15,
                                ))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${itemsModel.itemsPrice} \$",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "sans")),
                           IconButton(onPressed: (){
                            controller.deleteFromFavorite(itemsModel.favoriteId!);
                           }, icon: const Icon(
                       
                     
                      Icons.delete,
                       color: Colors.blue,
                      ))
                 

                ],
              )
            ]
            ),
      ),
    )
    );
  }
}

