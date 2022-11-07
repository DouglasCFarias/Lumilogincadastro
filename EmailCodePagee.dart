import 'package:flutter/material.dart';
import 'SingInPageeFirst.dart';
class EmailCodePagee extends StatefulWidget {
  const EmailCodePagee({super.key});

  @override
  State<EmailCodePagee> createState() => _EmailCodePageeState();
}

class _EmailCodePageeState extends State<EmailCodePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 35, 97),
      body:
     Column(
      children: [
        
      //text
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
child: Text('Inserir código de confirmaçào',
style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
),
),
      ),
SizedBox(height:10),
      //text1
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:25 ),
        child:
        Row(
        children: [
        Text(
          'Inssira o código de confirmaçã enviado para seu email'
      
        ),
        MaterialButton(onPressed: (){
          setState(() {
            
          }) ;
        },
        child: Text( 'Reenviar código',
style: TextStyle(
  color:Colors.white,
  fontWeight: FontWeight.bold,
),
        ),
        ),
        ]
        )
    ),
    
  
      



      //code
     Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
     child:  Container(
      decoration: BoxDecoration(
        color:Colors.grey,
        borderRadius:BorderRadius.circular(12),
        
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Código para login',
          disabledBorder:  UnderlineInputBorder(
            borderSide: BorderSide.none,
          )
        )
        ),
      ),
     ),
      //buton
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SingInPageeFirst();
        }));
      },
      child: Text(
        'Avança'
        )
        ),
        ),
     ] ),
      )
    ;
  }
}