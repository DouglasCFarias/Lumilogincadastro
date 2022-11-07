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
        backgroundColor: Color(0xff220037),
        body: SingleChildScrollView(
            child: Column(children: [
          //Lumi
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/lumi.png',
            width: 292,
          ),
          //email
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),
          ),
          //buton 1
          SizedBox(
            height: 70,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(249, 88, 9, 246),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EmailCodePagee();
                      }));
                    },
                    child: Text(
                      'Avançar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )),
          //buton
          SizedBox(
            height: 200,
          ),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Já tem conta?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    )),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 2)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
              ])),
        ])));
  }
}
