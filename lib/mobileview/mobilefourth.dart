import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileFourth extends StatelessWidget {
  const MobileFourth ({super.key});
  
  Future<void> _openUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
               Column(
                children: [
                  SizedBox(height: 30,),
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
                  Text(
                    "Projects",
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
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 35,
                                      right: 35,
                                      top: 35,
                                    ),
                                    child: Container(
                                        height: 320,
                                        width: 450,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/blog.png",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                                  const Text(
                                    "Flutter Blog-App",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color: const Color.fromARGB(
                                            255, 16, 16, 16)),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(255, 41, 39, 39),
                                          minimumSize: const Size(150, 50)),
                                      onPressed: () {
                                        _openUrl("https://github.com/abhishekzabi");
                                      },
                                      child: const Text(
                                        "open in Git Hub",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      )),
                                ],
                              ),
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
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35, right: 35, top: 35),
                                    child: SizedBox(
                                        height: 320,
                                        width: 450,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/Exams.png",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                                  const Text(
                                    "Dyslexia Detection",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color:
                                            const Color.fromARGB(255, 6, 6, 6)),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(255, 41, 39, 39),
                                          minimumSize: const Size(150, 50)),
                                      onPressed: () {
                                        _openUrl("https://github.com/abhishekzabi/MAIN-PROJECT-lexiscan");
                                      },
                                      child: const Text(
                                        "open in Git Hub",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      )),
                                ],
                              ),
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
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 35,
                                      right: 35,
                                      top: 35,
                                    ),
                                    child: SizedBox(
                                        height: 320,
                                        width: 450,
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.asset(
                                              "assets/art.png",
                                              fit: BoxFit.cover,
                                            ))),
                                  ),
                                  const Text(
                                    "Online Art Gallery",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(255, 41, 39, 39),
                                          minimumSize: const Size(150, 50)),
                                      onPressed: () {
                                        _openUrl("https://github.com/abhishekzabi/MINIPROJECT-artgallery");
                                      },
                                      child: const Text(
                                        "open in Git Hub",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      )),
                                ],
                              ),
                            ),
                          ),
      
      
      
      SizedBox(height: 30,)
      
      
                ],
              ),
             
            ],
          )),
    );
  }
}
