import 'package:flutter/material.dart';

class Aboutas extends StatefulWidget {
  const Aboutas({super.key});

  @override
  State<Aboutas> createState() => _AboutasState();
}

class _AboutasState extends State<Aboutas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("عن الشـرق؟", style: TextStyle(fontWeight: FontWeight.bold,),
       
        ),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
                   Text(" والشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                   SizedBox(height: 15,),
                   Text("خدمة النقل وسحب المركبات", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.green, decoration: TextDecoration.underline  ),
                    textAlign: TextAlign.start,

                   ),
                   Text("الشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),
                  
                   ),
                   Text("الشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                   Text("الشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                    Text("الشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                     Text("الشرق هو تطبيق يوظف التكنلوجيا لتقديم خدمات المساعدة علي الطريق وخدمة الحوادث والتقديرات  والفحص الدوري ونقل بين المدن", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
      ],
    ),
    );
  }
} 