import 'package:demo_nav/constants.dart';
import 'package:demo_nav/controllers/Controller_text.dart';
import 'package:demo_nav/controllers/question_controller.dart';
import 'package:demo_nav/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';


class ScoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     TextController _textController = Get.find();
       QuestionController _qnController = Get.put(QuestionController());

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,width: double.infinity),
          Column(
            children: [
              Spacer(flex: 1),
              Text('${_textController.text.value}',
                  style:TextStyle(color: kSecondaryColor,fontSize: 28,fontWeight: FontWeight.bold,),),
              Spacer(flex: 1),
              Text("Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
       //     Spacer(),
              Text(
                "${_qnController.numOfCorrectAns * 1}/${_qnController.questions.length * 1}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              ElevatedButton(onPressed: (){
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      }
                  ),
                );
              //  Navigator.pop(context,(route)=> route.isFirst);
               // Navigator.popUntil(context, (route) => route.isFirst);
              },
                child: Text("Done",style: TextStyle(color:kSecondaryColor,fontSize: 16)),),
              Spacer(flex: 3),

            ],
          )
        ],
      ),
    );
  }
}
