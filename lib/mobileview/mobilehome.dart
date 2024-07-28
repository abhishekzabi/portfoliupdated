// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MobileHomePage extends StatelessWidget {
//   const MobileHomePage({super.key});
//     Future<void> _openResume(BuildContext context) async { // Accept context as a parameter
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
// //   if (await launchUrl(url)) {
// //     await launchUrl(url);
// //   } else {
// //     throw 'Could not launch $url';
// //   }
// // }
// Future<void> _openUrl(String url) async {
//     final Uri uri = Uri.parse(url); // Convert the String to Uri
//     if (await canLaunchUrl(uri)) { // Check if the URL can be launched
//       await launchUrl(uri); // Launch the URL
//     } else {
//       throw 'Could not launch $url'; // Throw an error if it cannot be launched
//     }
//   }
// Future<void> _sendEmail() async {
//     final Uri emailUri = Uri(
//       scheme: 'mailto',
//       path: 'abhishekkp321@gmail.com', // Replace with your email address
      
//     );

//     await _openUrl(emailUri.toString());
//   }


//   @override
//   Widget build(BuildContext context) {
   
//     final screenwidth = MediaQuery.of(context).size.width;
//     return Container(
//       decoration: BoxDecoration(color: Colors.white),
//       // height: 600,
//       width: screenwidth,
//       child: Stack(
//         children: [
//           Center(
//             child: Column(
//               children: [
//                 SizedBox(height: 80,),
            
//                 ClipOval(
//                       child: SizedBox(
//                           height: 210,
//                           width: 210,
//                           child: Image.asset(
//                             "assets/profile.jpg",
//                             fit: BoxFit.cover,
//                           )),
//                     ),
//                     const SizedBox(
//                         height: 30
//                       ),
//                     Container(
//                   child: Column(
//                     children: [
//                      const Center(
//                           child: Text(
//                         "Hello, I'am",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 1,
//                             color: Colors.black),
//                       )),
//                      const SizedBox(
//                         height: 5
//                       ),
//                      const Text(
//                         "Abhishek K P",
//                         style: TextStyle(
//                             fontSize: 32,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 1),
//                       ),
//                       SizedBox(height: 5),
                      
//                       Text(
//                         "Flutter Developer",
//                         style: TextStyle(
//                             fontSize: 32,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 1,
//                             color: Colors.grey[700]),
//                       ),
//                      const SizedBox(height: 14),
//                      ElevatedButton(
//                                       style: ElevatedButton.styleFrom(
//                                           minimumSize:const  Size(150, 50)),
//                                         onPressed: () => _openResume(context), 
//                                       child: const Text(
//                                         "Download CV",
//                                         style: TextStyle(
//                                             fontSize: 13,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.black),
//                                       )),
                                
//                                 SizedBox(height: 15,),
//                                 ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                         backgroundColor:const
//                                             Color.fromARGB(255, 41, 39, 39),
//                                         minimumSize: const Size(150, 50)),
//                                     onPressed: _sendEmail,
//                                     child:const Text(
//                                       "Contact Info",
//                                       style: TextStyle(
//                                           fontSize: 13,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           color:
//                                               Color.fromARGB(255, 255, 255, 255)),
//                                     )),
                      
                         
                      
//                       const SizedBox(
//                         height: 14,
//                       ),
//                       IconButton(onPressed: 
//                       (){
//                         _openUrl("https://www.linkedin.com/in/abhishek-k-p-898304277/");

//                       },
//                        icon: FaIcon(FontAwesomeIcons.linkedin,size: 35,color: Colors.black,)),
//                       const SizedBox(width: 30),
//                       IconButton(onPressed: 
//                       (){
//                         _openUrl("https://github.com/abhishekzabi");
//                       },
//                        icon: FaIcon(FontAwesomeIcons.github,size: 35,color: Colors.black,)),
                    
                        
                      
//                     ],
//                   ),
//                 ),
                
                    
//               ],
//             ),
//           ),
//               Padding(padding: EdgeInsets.only(
//           left: 1450,top: 540
//         ),
//         child: IconButton(onPressed: (){

//         },
//          icon: Icon(Icons.keyboard_double_arrow_down_outlined,size: 36,)),
//         )
//         ],
//       ),
//     );
//   }
// }
