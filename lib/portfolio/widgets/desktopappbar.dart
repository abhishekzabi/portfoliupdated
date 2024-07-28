
import 'package:flutter/material.dart';
import 'package:personal/portfolio/widgets/appbar_buttons.dart';

class DesktopAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final ScrollController scrollController;

  final VoidCallback scrollToSecondPage;
  final VoidCallback scrollToThirdPage;
  final VoidCallback scrollToFourthPage;
final VoidCallback scrollToHomePage;
  final VoidCallback scrollToContact;

  DesktopAppbar({
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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      toolbarHeight: 100,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(top: 50, left: 170),
        child: Text(
          "Abhishek K P",
          style: TextStyle(
            fontSize: 42,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 160),
          child: Row(
            children: [
              AppbarButton(buttonname: "Home", buttonaction: scrollToHomePage),
              const SizedBox(width: 40),
              AppbarButton(
                buttonname: "About",
                buttonaction: scrollToSecondPage,
              ),
              const SizedBox(width: 40),
              AppbarButton(
                buttonname: "Experience",
                buttonaction: scrollToThirdPage,
              ),
              const SizedBox(width: 40),
              AppbarButton(
                buttonname: "Project",
                buttonaction: scrollToFourthPage,
              ),
              const SizedBox(width: 40),
              AppbarButton(
                buttonname: "Contact",
                buttonaction: scrollToContact,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
