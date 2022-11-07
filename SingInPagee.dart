import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'EmailCodePagee.dart';
class SingInPagee extends StatefulWidget {
  const SingInPagee({super.key});

  @override
  State<SingInPagee> createState() => _SingInPageeState();
}

class _SingInPageeState extends State<SingInPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 29, 77),
      body: 
      Column(
      children: [
      //Lumi

      //email
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color:Colors.grey,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
     ),
      //buton 1
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
   child: 
   Container(
    decoration: 
    BoxDecoration(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.circular(12),
      ),
    child:
   GestureDetector(onTap: (){
   Navigator.push(context, MaterialPageRoute(builder: (context){
    return EmailCodePagee();
   }));
},
child: Text('Avançar'),
 ),)
 ),
      //buton 
SizedBox(height: 120,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(
        "Já tem conta?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        )
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25)),
        
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginPage();
            }));
          },
          child: Text(
        "Entrar",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        )
      ]
    )
  ),
     ] )
    );
  }
}