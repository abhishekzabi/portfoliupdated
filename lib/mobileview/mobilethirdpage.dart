import 'package:flutter/material.dart';

import '../portfolio/widgets/thirdpagewidget.dart';

class MobileThirdPage extends StatelessWidget {
  const MobileThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:  Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        
      height:MediaQuery.of(context).size.height, 
        width:MediaQuery.of(context).size.width, 
        child:ListView(
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
                        SizedBox(height: 30,)
                        
                          
          
          ],
          
          ),
          
         
      
          ],
        )
        
        
        
      
      ),
    );
    
  }
}
