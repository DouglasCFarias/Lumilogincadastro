import 'dart:ffi';
import 'IconPagee.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
//import 'ImagePagee';
bool _obscuretext = true;
class SingInPageeFirst extends StatefulWidget {
  const SingInPageeFirst({super.key});

  @override
  State<SingInPageeFirst> createState() => _SingInPageeFirstState();
}

class _SingInPageeFirstState extends State<SingInPageeFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Column(
        //usuario
      children:[
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Usuário',
              disabledBorder: UnderlineInputBorder(
                borderSide:BorderSide.none 
                ),
            ),
          ),
          ),
        ),
      
      
    
      //senha
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: 
          BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12)
            ),
            child: TextField(
              obscureText:_obscuretext,
              decoration: InputDecoration(
                
                hintText: 'Senha',
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _obscuretext!=_obscuretext;
                      });
                    },
                    icon: Icon(_obscuretext
                    ? Icons.visibility
                    : Icons.visibility_off
                    ),
                  )
              ),
            ),
          
        ),
        ),

SizedBox(height:10),
      //buton
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
       child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: MaterialButton(onPressed: () {
        setState(() {
           Navigator.push(context, MaterialPageRoute(builder: (context){
           return IconPagee();
          }));
       });
        },
  
        ),
        ),
     ),
      ]
       ) ,
    );
  }
}