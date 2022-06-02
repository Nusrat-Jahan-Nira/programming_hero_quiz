import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../../../services/api_provider.dart';
import '../controllers/question_answer_controller.dart';

class QuestionAnswerView extends GetView<QuestionAnswerController> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  QuestionAnswerView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    controller.loadServerData();

    return Scaffold(
      key: _key,
      // appBar: AppBar(
      //   title: const Text("Programming Hero Quiz"),
      // )
        // ,

      appBar: AppBar(
          backgroundColor: const Color(0xff010234),
          leading:new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              Get.back();
              Get.offNamed(Routes.question_answer);
            },
          ),
          title: const Text("Question Answer"),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff010234),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                color: Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
              child: DottedBorder(
              dashPattern: const [6, 2, 6, 2],
              borderType: BorderType.RRect,
              radius: const Radius.circular(2),
              padding: const EdgeInsets.all(6),
              color: Colors.black,
              strokeWidth: 3,
              child:Row(
                children:  [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children:const [
                        Text("Question: ",
                          style: TextStyle(
                              color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                        Text("2/10",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(width: 50,),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Score: ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                        Text("300",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              )
           ),
              ),
              const SizedBox(height: 20,),
              Container(
                color: Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                child: DottedBorder(
                    dashPattern: const [6, 2, 6, 2],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(2),
                    padding: const EdgeInsets.all(6),
                    color: Colors.black,
                    strokeWidth: 3,
                    child:Column(
                      children:  const [
                        Center(
                          child: Text("100 Points", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),

                        Center(
                          child:  Icon(Icons.person,color: Colors.grey,
                          size: 200,),
                        ),


                        Center(
                          child: Text("What is this logo?", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    )
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                color: Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                child: DottedBorder(
                    dashPattern: const [6, 2, 6, 2],
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(2),
                    padding: const EdgeInsets.all(6),
                    color: Colors.black,
                    strokeWidth: 3,
                    child:
                    const Text("list")
                ),
              ),
            ],
          ),
        ),

      )
    );
  }
}