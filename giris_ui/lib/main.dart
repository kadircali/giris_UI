import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GirisUI(),
    );
  }
}

class GirisUI extends StatelessWidget {
  const GirisUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage("assets/flutterp.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Social World",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //altı kısım
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.purpleAccent[100],
              ),
              child: Column(
                children: [
                  //ilk butonlar
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        width: 310,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Mail İle Giriş",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.purple),
                          ),
                        ),
                      )
                    ],
                  ),

                  //ikinci buton
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Facebook")),
                      ),
                      Container(
                        width: 130,
                        height: 50,
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Gmail")),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
