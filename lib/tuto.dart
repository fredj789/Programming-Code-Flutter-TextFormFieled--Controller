import 'package:flutter/material.dart';

class MyTuto extends StatefulWidget {
  const MyTuto({super.key});

  @override
  State<MyTuto> createState() => _MyTutoState();
}

class _MyTutoState extends State<MyTuto> {
  TextEditingController username = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: Column(children: [
            TextFormField(
              //initialValue: "fredj ", // initialisation
              //readOnly: true, // juste pour lire seulement
              //style: TextStyle(
              //color: Colors.red,
              //fontSize: 20,
              //fontWeight: FontWeight.bold,

              // pour faire le style d'ecriture et le font  de text a ecrire
              //textInputAction: TextInputAction.go,
              //textInputAction: TextInputAction.search,
              //textAlign: TextAlign.end, // le commencement d 'ecriture
              controller: username,
            ),
            ElevatedButton(
                onPressed: () {
                  print(username.text);
                },
                child: Text("send"))
          ]),
        ));
  }
}
