import 'package:flutter/material.dart';

class MobileSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(),
      body: 
       
         Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
        
            child: ListView(
              children: [
              Column(
                children: [
                  SizedBox(height: 0,),
                  const Text(
                    "Get To Know More",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.black),
                  ),
                  const Text(
                    "About Me",
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/arts/aout.jpg",fit: BoxFit.cover,)),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 160,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(255, 42, 41, 41),
                            width: 1)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:const Icon(
                                Icons.people_alt_outlined,
                                color: Colors.black,
                                size: 30,
                              )),
                         const Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Experience",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  color: Colors.black),
                            ),
                          ),
                         const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "1 + years",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 74, 74, 74)),
                          ),
                          const Text(
                            "Software Development",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 74, 74, 74)),
                          ),
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 160,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.school,
                                color: Colors.black,
                                size: 30,
                              )),
                         const Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Education",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  color: Colors.black),
                            ),
                          ),
                         const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            "Master Of Computer Application",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 74, 74, 74)),
                          ),
                          const Text(
                            "Bachelor Of Computer Application",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                                color: Color.fromARGB(255, 74, 74, 74)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                    "As an MCA graduate specializing in Flutter development with a strong foundation in UI/UX design, I bring a blend of technical proficiency and collaborative spirit. My experience spans machine learning and mobile application development, showcasing my ability to deliver intuitive and high-performance solutions. Driven by a passion for continuous learning and innovation, I am eager to contribute effectively to dynamic projects and teams."                    ,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
          
        ),
      
    );
  }
}
