// ignore: file_names
// ignore: file_names
import 'package:alsharqapp/Controller/productdetails_controller.dart';
import 'package:alsharqapp/core/constant/color.dart';
import 'package:alsharqapp/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImp> {
  const TopProductPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
            children: [
              Container(
                height: 180,
                 decoration: const BoxDecoration(color: AppColor.secoundColor),

              ),
                                                Positioned(
                                                   top: 30.0,
            right: Get.width / 8,
            left: Get.width / 8,
                                                  child: Hero(
                                                    tag: "${controller.itemsModel.itemsId}",
                                                    child: CachedNetworkImage(
                                                      // ignore: prefer_interpolation_to_compose_strings
                                                      imageUrl: AppLink.imagestItems + "/" + controller.itemsModel.itemsImage! ,
                                                       height: 250,
                fit: BoxFit.fill,
                                                      ),
                                                      
                                                  ),
                                                ),
               
                                     SizedBox(height: 30,),
                                          
                            

            ],
            
          );
      
  }
  
}


// class SubCategory extends StatefulWidget {
//   final String cat_id;
//   final String cat_name;
//   SubCategory({required this.cat_id, required this.cat_name, required cat_image, required String sub_id, required sub_image, required String sub_name});
//   @override
//   _SubCategoryState createState() => _SubCategoryState();
// }

// class _SubCategoryState extends State<SubCategory> {
//   var myarr_category = [
//     {
//       "sub_id": "1",
//       "sub_name": "سطحه هايدروليك",
//       "sub_image": "images/category/alshaeq44.png",
//       "sub_count": "10",
//     },
//     {
//       "sub_id": "2",
//       "sub_name": "سطحة مغطاة",
//       "sub_image": "images/category/box11.png",
//       "sub_count": "10",
//     },
    
    
//     {
//       "sub_id": "6",
//       "sub_name": "سطحات متعده الحمولة",
//       "sub_image": "images/category/traila11.png",
//       "sub_count": "5",
//     },
    
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           widget.cat_name,
//           style: TextStyle(color: Colors.black),
//         ),
//         leading: InkWell(
//           onTap: () {
//             Navigator.of(context).pop();
//           },
//           child: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         margin: EdgeInsets.only(top: 10.0),
//         child: ListView.builder(
//             itemCount: myarr_category.length,
//             itemBuilder: (BuildContext context, int index) {
//               return SingleSubCategory(
//                   sub_id: myarr_category[index]["sub_id"],
//                   sub_image: myarr_category[index]["sub_image"],
                  
//                  );
//             }),
//       ),
//     );
//   }
// }

// class SingleSubCategory extends StatelessWidget {
//   final  sub_id;
//   final  sub_image;
  

//   SingleSubCategory(
//       {required this.sub_id, required this.sub_image, });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(right: 10.0),
//       child: Column(
//         children: <Widget>[
//           InkWell(
//             // onTap: () {
//             //    Navigator.push(context,
//             //       MaterialPageRoute(builder: (context) =>  ProductDetail()));
//             // },
//             child: ListTile(
//               leading: Container(
//                 padding: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50.0),
//                     color: Colors.grey[100]),
//                 child: Image.asset(sub_image),
//               ),
             
              
//             //  trailing: Icon(Icons.arrow_forward_ios),
//             ),
//           ),
//           Divider(),
//         ],
//       ),
//     );
//   }
// }