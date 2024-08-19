

import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class CustomDrodownSearch extends StatefulWidget {
  final String? title ;
  final List<SelectedListItem> listdata ;
 final  TextEditingController dropdownSelectedname ;
  final TextEditingController dropdownSelectedID ;
   CustomDrodownSearch({super.key, this.title, required this.listdata, required this.dropdownSelectedname, required this.dropdownSelectedID});

  @override
  State<CustomDrodownSearch> createState() => _CustomDrodownSearchState();
}

class _CustomDrodownSearchState extends State<CustomDrodownSearch> {
 void showDropDownSearch(){
  DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle:  Text(
          widget.title!,
          style:  const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        clearButtonChild: const Text(
          'Clear',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.listdata ?? [],
        selectedItems: (List<dynamic> selectedList) {
        
         SelectedListItem selectedListItem =selectedList[0];
         widget.dropdownSelectedname.text= selectedListItem.name ;
         widget.dropdownSelectedID.text = selectedListItem.value!;
         print("..............");
         print(widget.dropdownSelectedname.text);
          print("..............");
         print( widget.dropdownSelectedID.text);
        },
       
      ),
    ).showModal(context);
  }

 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller: widget.dropdownSelectedname,
          cursorColor: Colors.black,
          onTap:  () {
                  FocusScope.of(context).unfocus();
                 showDropDownSearch();
                },
 decoration: 
             
                InputDecoration(
                  hintStyle:  const TextStyle(fontSize: 14),
                     hintText: widget.dropdownSelectedname.text == "" ? widget.title : widget.dropdownSelectedname.text,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                 contentPadding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 30),
                 label: Container(
                  margin:  const EdgeInsets.symmetric(horizontal: 9),
                  child:  Text(widget.dropdownSelectedname.text == "" ? widget.title! : widget.dropdownSelectedname.text)),
                 suffixIcon: InkWell(child:  Icon(Icons.arrow_drop_down), onTap: (){},),
                border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
                ),
                   
              ),
          // decoration:  InputDecoration(
          //   filled: true,
          //   fillColor: Colors.black12,
          //   contentPadding:const  EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
          //   hintText: widget.dropdownSelectedname.text == "" ? widget.title : widget.dropdownSelectedname.text,
          //   border:  const OutlineInputBorder(
          //     borderSide: BorderSide(
          //       width: 0,
          //       style: BorderStyle.none,
          //     ),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(8.0),
          //     ),
          //   ),
          // ),
        )
;
  }
} 