
import 'package:flutter/material.dart';
import 'package:personal/mobileview/mobilefourth.dart';
import 'package:personal/mobileview/mobilelastpage.dart';
import 'package:personal/mobileview/mobilesecondpage.dart';
import 'package:personal/mobileview/mobilethirdpage.dart';
import 'package:personal/mobileview/mobulefifthpage.dart';
import 'package:personal/portfolio/pages/fifthpage.dart';
import 'package:personal/portfolio/pages/fourthpage.dart';
import 'package:personal/portfolio/pages/home.dart';
import 'package:personal/portfolio/pages/lastpage.dart';
import 'package:personal/portfolio/pages/secondpage.dart';
import 'package:personal/portfolio/pages/thirdpage.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  


  @override
  Widget build(BuildContext context) {
   
  


    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Abhishek K P",
              style: TextStyle(
                fontSize: 35,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),

          ),
        ),
       drawer: Builder(
         builder: (context) {
           return Drawer(
            
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: 100,
                    child: DrawerHeader(
                      
                      decoration: BoxDecoration(
                        
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("assets/profile.jpg",),),
                        title: Text("Abhishek ", style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                        subtitle: Text("Flutter developer", style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),),
                      )
                    ),
                  ),
                 
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('About'),
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileSecondPage()));
                      // Handle the onTap event
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.school_sharp),
                    title: Text('Experience'),
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileThirdPage()));
                      // Handle the onTap event
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer_rounded),
                    title: Text('Projects'),
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileFourth()));
                      // Handle the onTap event
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.burst_mode_outlined),
                    title: Text('Illustrations'),
                    onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MobileFifthPage()));
                      // Handle the onTap event
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text('Contact'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MobileLastPage()));
                     
                    },
                  ),
                ],
              ),
            );
         }
       ),
        body: ListView(
          children: [
              HomePage(),
                      SecondPage(),
                      ThirdPage(),
                      FourthPage(),
                      FifthPage(),
                      LastPage(),
          ],
        ),
       
      ),
    );
  }
}
