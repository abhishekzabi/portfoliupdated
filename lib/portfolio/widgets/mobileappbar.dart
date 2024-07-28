import 'package:flutter/material.dart';

Widget mobiledrawer=Drawer(
          child:ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                title: Text("about"),
              );

            }, 
            separatorBuilder:(context,index){

              return SizedBox(height: 5,);
            },
             itemCount: 4)
        );