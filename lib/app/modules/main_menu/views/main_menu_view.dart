import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programming_hero_quiz/app/modules/main_menu/controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // appBar: AppBar(
      //   title: const Text("Programming Hero Quiz"),
      // ),
      body: Container(
        color: const Color(0xff010234),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
          SizedBox(height: 100,),
          DottedBorder(
            dashPattern: [6, 2, 6, 2],
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(6),
            color: Colors.white,
            strokeWidth: 3,
              child:
                  Column(
                    children: [
                      Image.asset("assets/images/logo.png",
                        width: double.infinity, ),
                      Text("Quiz", style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  )
          ),
          SizedBox(height: 20,),
          DottedBorder(
                  dashPattern: [6, 2, 6, 2],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  color: Colors.white,
                  strokeWidth: 3,
                  child:
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text("Highscore", style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("500 Points", style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  )
              ),
          SizedBox(height: 20,),
          DottedBorder(
                  dashPattern: [6, 2, 6, 2],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  color: Colors.white,
                  strokeWidth: 3,
                  child:
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 30,right: 30),
                    padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,//change background color of button
                          onPrimary: Colors.black,

                        ),
                        child: Text("Start",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}