import 'dart:math';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget{
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int solResim=1;
  int sagResim=1;
  void salla(){
    var random=new Random();
    setState(() {
      solResim=random.nextInt(6)+1;
      sagResim=random.nextInt(6)+1;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Game"),
      backgroundColor: Colors.blue,),

      body: Center(
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: SizedBox(height: 250,width: 250,
                    child: Image.asset("assets/zar$solResim.png"))),
                SizedBox(width: 15,),
                Expanded(child: SizedBox(height:250,width: 250,
                    child: Image.asset("assets/zar$sagResim.png"))),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              child: ElevatedButton(onPressed:(){
                  salla();
              },
                  child: Text("Salla"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  minimumSize: Size(150, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
