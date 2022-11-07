import 'package:flutter/material.dart';
import 'SingInPageeFirst.dart';

//import '../Lumilogincadastro-main/Lumilogincadastro-main/SingInPageeFirst.dart';
class EmailCodePagee extends StatefulWidget {
  const EmailCodePagee({super.key});

  @override
  State<EmailCodePagee> createState() => _EmailCodePageeState();
}

class _EmailCodePageeState extends State<EmailCodePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff220037),
        body: Column(children: [
          //text
          SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Inserir código de confirmaçào',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              //text1
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(children: [
                      Text(
                        'Insira o código de confirmação enviado',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 55),
                          child: Center(
                              child: Row(
                            children: [
                              Text(
                                'Para o seu email',
                                style: TextStyle(color: Colors.white),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Text(
                                  'Reenviar código',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )))
                    ]),
                  )),

              //code
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Código para login',
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //buton
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue,
                  ),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SingInPageeFirst();
                        }));
                      },
                      child: Text('Avançar')),
                ),
              ),
            ]),
          ),
        ]));
  }
}
