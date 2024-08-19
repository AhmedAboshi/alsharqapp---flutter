import 'package:flutter/material.dart';

class CustonTextFormGlobal extends StatelessWidget {
  

     final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustonTextFormGlobal({super.key, required this.hinttext, required this.labeltext, required this.iconData, this.mycontroller, required this.valid, required this.isNumber, this.obscureText, this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        keyboardType: isNumber ? TextInputType.numberWithOptions(decimal: true):TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText==null || obscureText == false  ? false : true,
              decoration: 
             
                InputDecoration(
                  hintStyle:  const TextStyle(fontSize: 14),
                    hintText: hinttext,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                 contentPadding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 30),
                 label: Container(
                  margin:  const EdgeInsets.symmetric(horizontal: 9),
                  child:  Text(labeltext)),
                 suffixIcon: InkWell(child:  Icon(iconData), onTap: onTapIcon,),
                border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
                ),
                   
              ),
               
            ),
    );
  }
}