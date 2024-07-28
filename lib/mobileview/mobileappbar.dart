
// import 'package:flutter/material.dart';
// import 'package:personalportfolio/portfolio/widgets/mobileappbarbutton.dart';

// class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
//   final double height;
//   final ScrollController scrollController;

//   final VoidCallback scrollToSecondPage;
//   final VoidCallback scrollToThirdPage;
//   final VoidCallback scrollToFourthPage;
// final VoidCallback scrollToHomePage;
//   final VoidCallback scrollToContact;

//   MobileAppbar({
//     this.height = kToolbarHeight,
//     required this.scrollController,
//     required this.scrollToSecondPage,
//     required this.scrollToThirdPage,
//     required this.scrollToFourthPage,
//     required this.scrollToContact,
//      required this.scrollToHomePage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       toolbarHeight: 100,
//       elevation: 0,
//       title: 
       
//          Padding(
//            padding: const EdgeInsets.only(left: 400),
//            child: Text(
//             "Abhishek K P",
//             style: TextStyle(
//               fontSize: 22,
//               fontFamily: "Poppins",
//               fontWeight: FontWeight.w600,
//               letterSpacing: 1,
//             ),
//                    ),
//          ),
      
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(top: 50, right: 3),
//           child: Row(
//             children: [
             
//               MobileAppbarButton(
//                 buttonname: "About",
//                 buttonaction: scrollToSecondPage,
//               ),
//               const SizedBox(width: 0),
//               MobileAppbarButton(
//                 buttonname: "Experience",
//                 buttonaction: scrollToThirdPage,
//               ),
//               const SizedBox(width: 0),
//               MobileAppbarButton(
//                 buttonname: "Project",
//                 buttonaction: scrollToFourthPage,
//               ),
//               const SizedBox(width: 0),
//               MobileAppbarButton(
//                 buttonname: "Contact",
//                 buttonaction: scrollToContact,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }
import 'package:flutter/material.dart';
import 'package:personal/portfolio/widgets/mobileappbarbutton.dart';

class MobileAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final ScrollController scrollController;

  final VoidCallback scrollToSecondPage;
  final VoidCallback scrollToThirdPage;
  final VoidCallback scrollToFourthPage;
  final VoidCallback scrollToHomePage;
  final VoidCallback scrollToContact;

  MobileAppbar({
    this.height = kToolbarHeight,
    required this.scrollController,
    required this.scrollToSecondPage,
    required this.scrollToThirdPage,
    required this.scrollToFourthPage,
    required this.scrollToContact,
    required this.scrollToHomePage,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: height,
      elevation: 0,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Abhishek K P",
            style: TextStyle(
              fontSize: 22,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 5), // Add some spacing between the title and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MobileAppbarButton(
                buttonname: "About",
                buttonaction: scrollToSecondPage,
              ),
              const SizedBox(width: 0), // Add some spacing between buttons
              MobileAppbarButton(
                buttonname: "Experience",
                buttonaction: scrollToThirdPage,
              ),
              const SizedBox(width: 0),
              MobileAppbarButton(
                buttonname: "Project",
                buttonaction: scrollToFourthPage,
              ),
              const SizedBox(width: 0),
              MobileAppbarButton(
                buttonname: "Contact",
                buttonaction: scrollToContact,
              ),
            ],
          ),
        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
