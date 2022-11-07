import 'package:flutter/material.dart';
import 'dart:ui';
import 'ForgotPasswordPagee.dart';
import 'SingInPagee.dart';
bool _obscuretext=true;
//import 'package:trabalhoo/tela1.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override 
  Widget build(BuildContext context){


return 

Scaffold(


backgroundColor: Color.fromARGB(255, 70, 19, 72),
body: 
// ver como usar background do lumi Backgroundcolor: Colors:colors.violet, 

SafeArea( //para deixar tudo na tela 
child: 
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

//Lumi logo:
 //salvar imagem e usar SizedBox(image.asset(local da pasta))
//Image.network('https://user-images.githubusercontent.com/101994019/199749439-5c577008-d66e-42b9-9f88-64b9c20df037.png')

SizedBox(height:250),
// email textfield

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
child: Container(
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 77, 77, 77),
    borderRadius: BorderRadius.circular(12),
  ),
 child: TextField(
  decoration: InputDecoration(
    enabledBorder: 
    UnderlineInputBorder(
     borderSide: BorderSide.none
    ),
    hintText:  'Email ou nome de usuário',
  ),
)
)

),

SizedBox(height: 10,),

// password textfield

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
child: Container(
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(12),
  ),
 child: TextFormField(
  obscureText: _obscuretext,
  decoration: InputDecoration(
    hintText: 'senha',
    //prefixIcon: Icon(
     // Icons.lock,
    //  color: Colors.white,
    //),
    enabledBorder: UnderlineInputBorder(
     borderSide: BorderSide.none,
    ),
    suffixIcon: IconButton(
      onPressed: (){
        setState(() {
          _obscuretext!=_obscuretext;
        });
      },
      icon: Icon(_obscuretext
      ? Icons.visibility
      : Icons.visibility_off),
  
    ),
    ),
    
  ),
)
)

,

SizedBox(height: 10,),
// sign in button

Padding(
  padding: const EdgeInsets.symmetric(horizontal:25.0),
  child:   Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(12),
      ),
    child: Center(
      child: Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          )
        ),
      ),
  ),
),
SizedBox(height: 10,),

// esqueceu a senha? 
Padding(
padding: const EdgeInsets.symmetric(horizontal: 25.0),
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GestureDetector(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return ForgotPasswordPagee();
        }));
      },
        child: Text(
          'Esqueceu a senha?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          
       
       // Text(
         // ' Cadastre-se agora',
          //style: TextStyle(
            //color: Colors.white,
            //fontWeight: FontWeight.bold,
          //),
        ),
  ],
),
),

SizedBox(height: 120,),
// nao é cadastrado? cadastre-se agora
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(
        "Não tem conta?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        )
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25)),
        
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SingInPagee();
            }));
          },
          child: Text(
        "Criar conta",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        )
      ]
    )
  ),

]),
)
);
  }
}
