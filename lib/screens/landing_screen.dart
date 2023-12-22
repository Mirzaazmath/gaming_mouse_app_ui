import 'package:flutter/material.dart';
import 'package:mouse_app/utils/text_utlis.dart';

import '../utils/clipper.dart';
import 'home_screen.dart';
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size.height;
    return Scaffold(
      body:Stack(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [ ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: size*0.65,
                  decoration:const  BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff07ace5),
                        Color(0xff3bcdf1)
                      ]
                    )
                  ),
                ),
              ),],
            ),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              children: [
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child:     Image.asset("assets/logo.png"),
              ),
            ),
               Expanded(child:  Image.asset("assets/mouse1.png",fit: BoxFit.cover,), ),
                TextUtil(text: "G502 HERO",color: Colors.white,weight: true,size: 30,),
                TextUtil(text: "HIGH PERFORMANCE",color: Colors.white,weight: true,size: 30,),
                const SizedBox(height: 10,),
                TextUtil(text: "GAMING MOUSE",color:const  Color(0xff446e8b),weight: true,size: 20,),
                const SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: const  BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xff07ace5),
                                Color(0xff3bcdf1)
                              ]
                          )
                      ),
                      child:const  Icon(Icons.arrow_forward,color: Colors.white,),
                    ),
                  ),
                )
                
              ],
            ),
          )


        ],
      )
    );
  }
}
