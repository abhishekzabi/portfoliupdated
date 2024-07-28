import 'package:flutter/material.dart';
import 'package:personal/mobileview/mobileappbar.dart';

class AppbarScrollMobile extends StatefulWidget {
  const AppbarScrollMobile({super.key});

  @override
  State<AppbarScrollMobile> createState() => _AppbarScrollMobileState();
}

class _AppbarScrollMobileState extends State<AppbarScrollMobile> {


   final ScrollController _scrollController = ScrollController();

  void _scrollToPage(double offset) {
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
   void _scrollToMobilePage(double offset) {
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileAppbar(
         height: 100,
                  scrollController: _scrollController,
                   scrollToHomePage: () => _scrollToMobilePage(0),
                  scrollToSecondPage: () => _scrollToMobilePage(630), // Adjust these offsets
                  scrollToThirdPage: () => _scrollToMobilePage(1700),
                  scrollToFourthPage: () => _scrollToMobilePage(2600),
                  
                  scrollToContact: () => _scrollToPage(6000),
    ));
  }
}