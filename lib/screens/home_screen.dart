import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=1;
  List<String>images=["assets/mouse1.png","assets/mouse2.png","assets/mouse3.webp"];
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xfff8f9f9),

      body: Padding(
        padding: const EdgeInsets.only(left: 15,),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size*0.40,
                padding:const EdgeInsets.only(bottom: 10),
          
                child:Center(child: Image.asset(images[index],fit: BoxFit.cover,))
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for(int i =0;i<images.length;i++)...[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          index=i;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xfff8f9f9),
                          borderRadius:BorderRadius.circular(20),
                          boxShadow:index==i? [
                            BoxShadow(
                              color: Colors.lightBlueAccent.withOpacity(0.2),
                              offset: const Offset(15,15),
                              blurRadius: 20
                            )
                          ]:[],
                          border: Border.all(color:index==i?Colors.cyanAccent: Colors.grey.shade300,width:index==i?3: 1),
                        ),
                        padding:const  EdgeInsets.all(5),
                        child: Image.asset(images[i]),
                      ),
                    )
                  ]
                ],
              ),
              const  SizedBox(height: 20,),
          
              TextUtil(text: "A REBORN HERO",weight: true,size: 25,),
             const  SizedBox(height: 20,),
              TextUtil(text: "G502 HERO features an adv"
                  "anced optical sensor for maximum tracking accuracy, customizable RGB lighting, custom game profiles, from 200 up to 25,600 DPI, and repositionable weights.",size: 14,),
              const  SizedBox(height: 20,),
              Row(
                children: [
                const   Icon(Icons.favorite,color: Colors.lightBlue,size: 15,),
                 const  SizedBox(width: 10,),
                  TextUtil(text: "Hero 25k Sensor",weight: true,size: 16,),
          
                ],
              ),
              const  SizedBox(height: 10,),
              Row(
                children: [
                  const   Icon(Icons.favorite,color: Colors.lightBlue,size: 15,),
                  const  SizedBox(width: 10,),
                  TextUtil(text: "Controls at Your Fingertips",weight: true,size: 16,),
          
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(child:  TextUtil(text: "\$ 79.99",weight: true,size: 25,), ),
                  Container(
                    height: 70,
                    width: 130,
                    decoration: const  BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50) ),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xff07ace5),
                              Color(0xff3bcdf1)
                            ]
                        )
                    ),
                    alignment: Alignment.center,
                    child:TextUtil(text: "Buy now",weight: true,color: Colors.white,),
                  ),
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
