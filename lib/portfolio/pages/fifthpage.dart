import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth>1000){


          return Container(
  color: const Color.fromARGB(255, 255, 255, 255),
  height: 800,
  width: MediaQuery.of(context).size.width,
  child: SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Text(
            "Browse my Recent",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.grey[700],
            ),
          ),
        ),
        const Text(
          "Illustrations",
          style: TextStyle(
            fontSize: 42,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130, left: 130, right: 130),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: const Color.fromARGB(255, 42, 41, 41),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/arts/baby.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: const Color.fromARGB(255, 42, 41, 41),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/arts/kbfc.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: const Color.fromARGB(255, 42, 41, 41),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/arts/chetri.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);




          // ///////////////////////////////////////////////////////////////
        // return  Container(
        // color: const Color.fromARGB(255, 255, 255, 255),
        // height: 800,
        // width: MediaQuery.of(context).size.width,
        // child: Stack(
        //   children: [
        //      Column(
        //       children: [
        //         Center(
        //             child: Text(
        //           "Browse my Recent",
        //           style: TextStyle(
        //               fontSize: 18,
        //               fontFamily: "Poppins",
        //               fontWeight: FontWeight.bold,
        //               letterSpacing: 1,
        //               color: Colors.grey[700]),
        //         )),
        //        const Text(
        //           "Illustrations",
        //           style: TextStyle(
        //               fontSize: 42,
        //               fontFamily: "Poppins",
        //               fontWeight: FontWeight.bold,
        //               letterSpacing: 1,color: Colors.black),
        //         ),
        //       ],
        //     ),
        //     Expanded(
        //       child: Container(
        //         child: Padding(
        //           padding:
        //               const EdgeInsets.only(top: 130, left: 130, right: 130),
        //           child: Row(
        //             children: [
        //                Expanded(
        //                 child: Container(
        //                   height: 500,
        //                   width: 500,
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(40),
        //                       border: Border.all(
        //                           color: const Color.fromARGB(255, 42, 41, 41),
        //                           width: 1)),
        //                   child: Center(
        //                     child: Column(
        //                       children: [
        //                         Padding(
        //                           padding: const EdgeInsets.all(10),
        //                           child: SizedBox(
        //                               height: 470,
        //                               width: 450,
        //                               child: ClipRRect(
        //                                   borderRadius:
        //                                       BorderRadius.circular(40),
        //                                   child: Image.asset(
        //                                     "assets/arts/baby.jpg",
        //                                     fit: BoxFit.cover,
        //                                   ))),
        //                         ),
                                
                               
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               const SizedBox(
        //                 width: 30,
        //               ),
        //                Expanded(
        //                 child: Container(
        //                   height: 500,
        //                   width: 500,
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(40),
        //                       border: Border.all(
        //                           color: const Color.fromARGB(255, 42, 41, 41),
        //                           width: 1)),
        //                   child: Center(
        //                     child: Column(
        //                       children: [
        //                         Padding(
        //                           padding: const EdgeInsets.all(10),
        //                           child: SizedBox(
        //                               height: 470,
        //                               width: 450,
        //                               child: ClipRRect(
        //                                   borderRadius:
        //                                       BorderRadius.circular(40),
        //                                   child: Image.asset(
        //                                     "assets/arts/kbfc.jpg",
        //                                     fit: BoxFit.cover,
        //                                   ))),
        //                         ),
                                
                               
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               const SizedBox(
        //                 width: 30,
        //               ),
        //               Expanded(
        //                 child: Container(
        //                   height: 500,
        //                   width: 500,
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(40),
        //                       border: Border.all(
        //                           color: const Color.fromARGB(255, 42, 41, 41),
        //                           width: 1)),
        //                   child: Center(
        //                     child: Column(
        //                       children: [
        //                         Padding(
        //                           padding: const EdgeInsets.all(10),
        //                           child: SizedBox(
        //                               height: 470,
        //                               width: 450,
        //                               child: ClipRRect(
        //                                   borderRadius:
        //                                       BorderRadius.circular(40),
        //                                   child: Image.asset(
        //                                     "assets/arts/chetri.jpg",
        //                                     fit: BoxFit.cover,
        //                                   ))),
        //                         ),
                                
                               
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ));
      }
      else {
        return 
Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
             Column(
              children: [
                SizedBox(height: 50,),
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
            
          ],
        ));
    
      }
      
    });
    
    
    
    
    
    
    
    
  }
}













