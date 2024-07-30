import 'package:flutter/material.dart';
import 'package:personal/portfolio/widgets/thirdpagewidget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth>1000){
          return Container(
  color: const Color.fromARGB(255, 255, 255, 255),
  height: 600,
  width: MediaQuery.of(context).size.width,
  child: Stack(
    children: [
      Column(
        children: [
          Center(
            child: Text(
              "Explore My",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.grey[700]),
            ),
          ),
          Text(
            "Experience",
            style: TextStyle(
                fontSize: 42,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.black),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 130, left: 130, right: 130),
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 370,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(255, 42, 41, 41), width: 1),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Flutter Development",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Colors.grey[700]),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "Flutter",
                                skillproficient: "Experienced",
                                skillnametwo: "Dart",
                                skillproficienttwo: "Experienced",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "Ui/Ux",
                                skillproficient: "Experienced",
                                skillnametwo: "Git",
                                skillproficienttwo: "Experienced",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "Android",
                                skillproficient: "Experienced",
                                skillnametwo: "IOS",
                                skillproficienttwo: "Intermediate",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      height: 370,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(255, 42, 41, 41), width: 1),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Flutter Development",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    color: Colors.grey[700]),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "Firebase",
                                skillproficient: "Experienced",
                                skillnametwo: "Api",
                                skillproficienttwo: "Experienced",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "Frontend",
                                skillproficient: "Experienced",
                                skillnametwo: "CI/CD",
                                skillproficienttwo: "Experienced",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Skills(
                                skillname: "oops",
                                skillproficient: "Experienced",
                                skillnametwo: "MySQL",
                                skillproficienttwo: "Experienced",
                              ),
                            ),
                          ],
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
    ],
  ),
);













          // ???????????????????????????
    //       return  Container(
    //   color: const Color.fromARGB(255, 255, 255, 255),
      
    
    //   height: 600,
    //   width:MediaQuery.of(context).size.width, 
    //   child:Stack(
    //     children: [
    //        Column(children: [
    //       Center(
    //         child: 
    //         Text("Explore My",style: TextStyle(
    //                         fontSize: 18,
    //                         fontFamily: "Poppins",
    //                         fontWeight: FontWeight.bold,
    //                         letterSpacing: 1,
    //                         color: Colors.grey[700]),)
    //       ),
    //       Text(
    //                     "Experience",
    //                     style: TextStyle(
    //                         fontSize: 42,
    //                         fontFamily: "Poppins",
    //                         fontWeight: FontWeight.bold,
    //                         letterSpacing: 1,color: Colors.black),
    //                   ),
                      
                        
        
    //     ],
        
    //     ),
        
       
    //       Expanded(
    //         child: Container(
    //           child: Padding(
    //             padding: const EdgeInsets.only(top: 130,left: 130,right: 130),
    //             child: Row(children: [
                
    //             Expanded(
    //               child: Container(
    //                   height: 370,
    //                   width: 500,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(40),
    //                     border: Border.all(
    //                       color: const Color.fromARGB(255, 42, 41, 41),width: 1
    //                     )
    //                   ),
    //                   child:   Center(
    //                       child: Column(children: [
                           
                            
    //                         Padding(
    //                           padding: const EdgeInsets.all(10.0),
    //                           child: Text("Flutter Development", style: TextStyle(
    //                           fontSize: 32,
    //                           fontFamily: "Poppins",
    //                           fontWeight: FontWeight.bold,
    //                           letterSpacing: 1,
    //                           color: Colors.grey[700]),
    //                                   ),
    //                         ),
    //                         SizedBox(height: 20,),
                            
    //                        Padding(
    //                             padding: const EdgeInsets.only(left: 30),
    //                             child: Skills(skillname: "Flutter", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "Dart", 
    //                               skillproficienttwo:"Experienced" ),
    //                           ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(left: 30),
    //                               child: Skills(skillname: "Ui/Ux", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "Git", 
    //                               skillproficienttwo:"Experienced" ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(left: 30),
    //                               child: Skills(skillname: "Android", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "IOS", 
    //                               skillproficienttwo:"Intermediate" ),
    //                             ),
                             
                           
                           
                            
    //                       ],),
    //                     ),
                        
                  
    //                 ),
    //             ),
    //               SizedBox(width: 30,),
    //               Expanded(
    //                 child: Container(
    //                     height: 370,
    //                     width: 500,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(40),
    //                       border: Border.all(
    //                         color: const Color.fromARGB(255, 42, 41, 41),width: 1
    //                       )
    //                     ),
    //                     child:   Center(
    //                         child: Column(children: [
                             
                              
    //                           Padding(
    //                             padding: const EdgeInsets.all(10.0),
    //                             child: Text("Flutter Development", style: TextStyle(
    //                             fontSize: 32,
    //                             fontFamily: "Poppins",
    //                             fontWeight: FontWeight.bold,
    //                             letterSpacing: 1,
    //                             color: Colors.grey[700]),
    //                                     ),
    //                           ),
    //                           SizedBox(height: 20,),
                              
    //                           Padding(
    //                             padding: const EdgeInsets.only(left: 30),
    //                             child: Skills(skillname: "Firebase", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "Api", 
    //                               skillproficienttwo:"Experienced" ),
    //                           ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(left: 30),
    //                               child: Skills(skillname: "Frontend", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "CI/CD", 
    //                               skillproficienttwo:"Experienced" ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.only(left: 30),
    //                               child: Skills(skillname: "oops", 
    //                               skillproficient: "Experienced", 
    //                               skillnametwo: "MySQL", 
    //                               skillproficienttwo:"Experienced" ),
    //                             ),
                             
                             
                              
    //                         ],),
    //                       ),
                          
                    
    //                   ),
    //               ),
                  
                
    //                     ],),
    //           ),
    //         ),
    //       ),

    //     ],
    //   )
      
      
      
    
    // );

        }
        else {
          return  
Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      
    // height:MediaQuery.of(context).size.height, 
      width:MediaQuery.of(context).size.width, 
      child:Stack(
        children: [
           Column(children: [
            SizedBox(height: 50,),
          Center(
            child: 
            Text("Explore My",style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.grey[700]),)
          ),
          Text(
                        "Experience",
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,color: Colors.black),
                      ),
                      SizedBox(height: 10,),
                      Container(
                      height: 370,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: const Color.fromARGB(255, 42, 41, 41),width: 1
                        )
                      ),
                      child:   Center(
                          child: Column(children: [
                           
                            
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("Flutter Development", style: TextStyle(
                              fontSize: 28,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.grey[700]),
                                      ),
                            ),
                            SizedBox(height: 20,),
                            
                           Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Skills(skillname: "Flutter", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "Dart", 
                                  skillproficienttwo:"Experienced" ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Skills(skillname: "Ui/Ux", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "Git", 
                                  skillproficienttwo:"Experienced" ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Skills(skillname: "Android", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "IOS", 
                                  skillproficienttwo:"Intermediate" ),
                                ),
                             
                           
                           
                            
                          ],),
                        ),
                        
                  
                    ),
                    SizedBox(height: 10,),
                    Container(
                        height: 370,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: const Color.fromARGB(255, 42, 41, 41),width: 1
                          )
                        ),
                        child:   Center(
                            child: Column(children: [
                             
                              
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Flutter Development", style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.grey[700]),
                                        ),
                              ),
                              SizedBox(height: 20,),
                              
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Skills(skillname: "Firebase", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "Api", 
                                  skillproficienttwo:"Experienced" ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Skills(skillname: "Frontend", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "CI/CD", 
                                  skillproficienttwo:"Experienced" ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Skills(skillname: "oops", 
                                  skillproficient: "Experienced", 
                                  skillnametwo: "MySQL", 
                                  skillproficienttwo:"Experienced" ),
                                ),
                             
                             
                              
                            ],),
                          ),
                          
                    
                      ),
                      
                        
        
        ],
        
        ),
        
       

        ],
      )
      
      
      
    
    );
   
        }
        
      });
    
    
   
    
  }
}








