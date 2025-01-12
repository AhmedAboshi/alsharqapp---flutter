import 'package:alsharqapp/Controller/items_controller.dart';
import 'package:alsharqapp/core/functions/translatefatabase.dart';
import 'package:alsharqapp/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                        height: 100,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Categories( 
                               i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]));


                          },
                        ),
                      );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       controller.changeCat(i!, categoriesModel.categoriesId !);
      },
      child: Column(
                                children: [
                                  GetBuilder<ItemsControllerImp>(builder: (controller)=>Container(
                                    padding: EdgeInsets.only(right: 10 , left: 10 , bottom: 5),
                                    decoration: controller.selectedCat ==i ? BoxDecoration(
                                      border: Border(bottom: BorderSide(width: 3, color: Colors.amber))
                                     ):null,
                                    child: Text(
                                                           "${translateDatabase( categoriesModel.categoriesNameAr , categoriesModel.categoriesName)}",style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 15),
                                    )
                                    ),)
                                ],
                              ),
    );
  }
} 