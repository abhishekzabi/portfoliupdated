
// import 'dart:io'; // New import for File operations

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:open_file/open_file.dart'; // New import for open_file
// import 'package:path_provider/path_provider.dart';
// import 'package:url_launcher/url_launcher.dart'; // New import for path_provider

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   Future<void> _openResume(BuildContext context) async { // Accept context as a parameter
//     final directory = await getTemporaryDirectory(); // Get the temporary directory
//     final path = '${directory.path}/abhishekresume.pdf'; // Define the path for the PDF

//     final file = File(path);
//     if (!await file.exists()) { // Check if the file doesn't exist
//       final data = await DefaultAssetBundle.of(context).load('assets/abhishekresume.pdf'); // Load the asset
//       await file.writeAsBytes(data.buffer.asUint8List()); // Write the asset data to the file
//     }

//     final result = await OpenFile.open(path); // Use OpenFile to open the file
//     if (result.type != ResultType.done) { // Check if the file couldn't be opened
//       throw 'Could not launch $path'; // Throw an error if the file can't be launched
//     }
//   }

// //   Future<void> _openUrl(String url) async {
// //   if (await canLaunch(url)) {
// //     await launch(url);
// //   } else {
// //     throw 'Could not launch $url';
// //   }
// // }

// Future<void> _openUrl(String url) async {
//   final Uri uri = Uri.parse(url);
//   if (!await launchUrl(uri)) {
//     throw 'Could not launch $url';
//   }
// }
// Future<void> _sendEmail() async {
//     final Uri emailUri = Uri(
//       scheme: 'mailto',
//       path: 'abhishekkp321@gmail.com', // Replace with your email address
      
//     );

//     await _openUrl(emailUri.toString());
//   }


// ////////////////////////////////////////////////////////////////////////
import 'dart:io'; // Required for File operations
import 'dart:typed_data'; // Required for Uint8List operations
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart'; // Required for opening files
import 'package:path_provider/path_provider.dart'; // Required for accessing the temporary directory
import 'package:url_launcher/url_launcher.dart'; // Required for launching URLs

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Opens the CV file, either by loading from assets or from the temporary directory
  Future<void> _openResume(BuildContext context) async {
    try {
      // Get the temporary directory for storing the CV
      final directory = await getTemporaryDirectory();
      final path = '${directory.path}/abhishekresume.pdf';

      final file = File(path);

      // Check if the file already exists
      if (!await file.exists()) {
        // Load the PDF from assets
        final data = await DefaultAssetBundle.of(context).load('assets/abhishekresume.pdf');
        // Write the PDF data to the file
        await file.writeAsBytes(data.buffer.asUint8List());
      }

      // Open the file using the OpenFile package
      final result = await OpenFile.open(path);
      if (result.type != ResultType.done) {
        throw 'Could not open file at $path';
      }
    } catch (e) {
      // Show an error message if something goes wrong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error opening resume: $e')),
      );
    }
  }

  // Opens the given URL
  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  // Opens the email client with a pre-filled email address
  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'abhishekkp321@gmail.com',
    );

    await _openUrl(emailUri.toString());
  }
// //////////////////////////

final String resumeUrl = 'https://github.com/abhishekzabi/resume/blob/main/abhishekresume.pdf'; // Replace with your GitHub resume URL

  // Function to launch the URL
  Future<void> _openNewResume(BuildContext context) async {
    final Uri url = Uri.parse(resumeUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open resume.')),
      );
    }
  }

// ////////////////////////////////////////////////////////////////////


  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth>1000 && Constraints.maxWidth<2000){
          return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: screenheight,
      width: screenwidth,
      child: Stack(
        children: [
          Positioned(
            top: screenheight / 4,
            left: screenwidth / 4,
            child: ClipOval(
              child: SizedBox(
                height: 410,
                width: 410,
                child: Image.asset(
                  "assets/profile.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 900,
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Hello, I'am,",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Abhishek K P",
                    style: TextStyle(
                      fontSize: 42,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 42,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () => _openNewResume(context),
                        child: const Text(
                          "Download CV",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 41, 39, 39),
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed:_sendEmail,
                        child: const Text(
                          "Contact Info",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      IconButton(onPressed: 
                      (){
                        _openUrl("https://www.linkedin.com/in/abhishek-k-p-898304277/");

                      },
                       icon: FaIcon(FontAwesomeIcons.linkedin,size: 35,color: Colors.black,)),
                      const SizedBox(width: 30),
                      IconButton(onPressed: 
                      (){
                        _openUrl("https://github.com/abhishekzabi");
                      },
                       icon: FaIcon(FontAwesomeIcons.github,size: 35,color: Colors.black,)),
                    ],
                  ),
                  
                ],
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1450, top: 540),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_double_arrow_down_outlined, size: 36),
            ),
            
          ),
          





        ],
      ),
    );
          
          
          

        }
        else {
          return  Container(
      decoration: BoxDecoration(color: Colors.white),
      // height: 600,
      width: screenwidth,
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 80,),
            
                ClipOval(
                      child: SizedBox(
                          height: 210,
                          width: 210,
                          child: Image.asset(
                            "assets/profile.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                        height: 30
                      ),
                    Container(
                  child: Column(
                    children: [
                     const Center(
                          child: Text(
                        "Hello, I'am",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.black),
                      )),
                     const SizedBox(
                        height: 5
                      ),
                     const Text(
                        "Abhishek K P",
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      SizedBox(height: 5),
                      
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.grey[700]),
                      ),
                     const SizedBox(height: 14),
                     ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          minimumSize:const  Size(150, 50)),
                                        onPressed: () =>  _openNewResume(context),
                                      child: const Text(
                                        "Download CV",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )),
                                
                                SizedBox(height: 15,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:const
                                            Color.fromARGB(255, 41, 39, 39),
                                        minimumSize: const Size(150, 50)),
                                    onPressed: _sendEmail,
                                    child:const Text(
                                      "Contact Info",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 255, 255, 255)),
                                    )),
                      
                         
                      
                      const SizedBox(
                        height: 14,
                      ),
                      IconButton(onPressed: 
                      (){
                        _openUrl("https://www.linkedin.com/in/abhishek-k-p-898304277/");

                      },
                       icon: FaIcon(FontAwesomeIcons.linkedin,size: 35,color: Colors.black,)),
                      const SizedBox(width: 30),
                      IconButton(onPressed: 
                      (){
                        _openUrl("https://github.com/abhishekzabi");
                      },
                       icon: FaIcon(FontAwesomeIcons.github,size: 35,color: Colors.black,)),
                    
                        
                      
                    ],
                  ),
                ),
                
                    
              ],
            ),
          ),
              Padding(padding: EdgeInsets.only(
          left: 1450,top: 540
        ),
        child: IconButton(onPressed: (){

        },
         icon: Icon(Icons.keyboard_double_arrow_down_outlined,size: 36,)),
        )
        ],
      ),
    );  




        }
       
        

      
      }
      
      );
    
    
    
    
  
  }
}










           