import 'package:flutter/material.dart';

class MobileFifthPage extends StatelessWidget {
  const MobileFifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          
          child: ListView(
            children: [
             
               Column(
                children: [
                  SizedBox(height: 10,),
                  Center(
                      child: Text(
                    "Browse my Recent",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.grey[700]),
                  )),
                 const Text(
                    "Illustrations",
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,color: Colors.black),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 500,
                    width: 350,
                    
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: const Color.fromARGB(255, 42, 41, 41),
                                    width: 1)),
                                    child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SizedBox(
                                        height: 470,
                                        width: 350,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/arts/baby.jpg",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                  ),  SizedBox(height: 10,),
                  Container(
                    height: 500,
                    width: 350,
                    
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: const Color.fromARGB(255, 42, 41, 41),
                                    width: 1)),
                                    child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SizedBox(
                                        height: 470,
                                        width: 350,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/arts/kbfc.jpg",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                  ),
                    SizedBox(height: 10,),
                  Container(
                    height: 500,
                    width: 350,
                    
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: const Color.fromARGB(255, 42, 41, 41),
                                    width: 1)),
                                    child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SizedBox(
                                        height: 470,
                                        width: 350,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/arts/chetri.jpg",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                  )
      
      
      
      
                 
                ],
              ),
              SizedBox(height: 30,)
              
            ],
          )),
    );
  }
}
