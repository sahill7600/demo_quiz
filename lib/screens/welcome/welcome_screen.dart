import 'package:demo_nav/constants.dart';
import 'package:demo_nav/controllers/Controller_text.dart';
import 'package:demo_nav/screens/quiz/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
   TextController _textController = Get.put(TextController());


  @override
  Widget build(BuildContext context) {
    bool _validate = false;
    return Scaffold(
      body:
      Stack(
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,width: double.infinity,),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                //  Spacer(),
                  SizedBox(height: 30,),
              // Center(
              //   child: DefaultTextStyle(
              //     style: const TextStyle(
              //       fontSize: 32.0,
              //       fontWeight: FontWeight.bold,
              //     ),
              //     child: AnimatedTextKit(
              //       animatedTexts: [
              //         WavyAnimatedText('Insignia Technolabs'),
              //       ],
              //       isRepeatingAnimation: true,
              //       onTap: () {
              //         print("Tap Event");
              //       },
              //     ),
              //   ),
              // ),
                 // SizedBox(height: 15,),
                  Center(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bobbers',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Welcome to Quiz'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Center(child: Image(image: AssetImage('assets/icons/insignia_logo.png'),)),
                  SizedBox(height: 20,),
                  // Text(
                  //   "Let's Play Quiz,",
                  //   style: Theme.of(context).textTheme.headline4?.copyWith(
                  //       color: Colors.white, fontWeight: FontWeight.bold),
                  // ),
                 // Spacer(),
                  Text("Enter your informations below",style: TextStyle(fontSize: 20),),// 1/6
                  SizedBox(height: 5,),
                  TextField(
                    onChanged: _textController.updateText,
                    decoration: const InputDecoration(
                   //   errorText: _validate ? "Value Can't Be Empty" : null,
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(), // 1/6
                  InkWell(
                    onTap:
                        () => Get.to(QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// class WelcomeScreen extends StatefulWidget {
//   @override
//   WelcomeScreenState createState() {
//     return new WelcomeScreenState();
//   }
// }
//
// class WelcomeScreenState extends State<WelcomeScreen> {
//   TextController _textController = Get.put(TextController());
//
//   void checkValues() {
//     String name = _textController.text.trim();
//     if(name == "" ) {
//       showAlertDialog(context, "Incomplete Data", "Please Enter Your Name");
//     }else {
//       logIn(name);
//     }
//   }
//
//   void logIn(String name) async {
//     showLoadingDialog(context, "Logging In..");
//       print("Log In Successful!");
//       Navigator.popUntil(context, (route) => route.isFirst);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) {
//               return QuizScreen();
//             }
//         ),
//       );
//
//   }
//
//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//           children: [
//             SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill,width: double.infinity,),
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 30,),
//                   Center(
//                     child: DefaultTextStyle(
//                       style: const TextStyle(
//                         fontSize: 32.0,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'Bobbers',
//                       ),
//                       child: AnimatedTextKit(
//                         animatedTexts: [
//                           TyperAnimatedText('Welcome to Quiz'),
//                         ],
//                         onTap: () {
//                           print("Tap Event");
//                         },
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Center(child: Image(image: AssetImage('assets/icons/insignia_logo.png'),)),
//                   SizedBox(height: 20,),
//                   Text("Enter your informations below",style: TextStyle(fontSize: 20),),
//                   SizedBox(height: 5,),
//                   TextField(
//                     onChanged: _textController.updateText,
//                     decoration: InputDecoration(
//                         labelText: 'Enter the Name',
//                       border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                     ),
//
//                   ),
//                   Spacer(), // 1/6
//                   InkWell(
//                     onTap:
//
//                        () => checkValues(),
//                     child: Container(
//                       width: double.infinity,
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
//                       decoration: const BoxDecoration(
//                         gradient: kPrimaryGradient,
//                         borderRadius: BorderRadius.all(Radius.circular(12)),
//                       ),
//                       child: Text(
//                         "Lets Start Quiz",
//                         style: Theme.of(context)
//                             .textTheme
//                             .button
//                             ?.copyWith(color: Colors.black),
//                       ),
//                     ),
//                   ),
//                   Spacer(flex: 2),
//
//                 ],
//               ),
//             ),
//           ),
//         ]),
//     );
//   }
//   static void showAlertDialog(BuildContext context, String title, String content) {
//     AlertDialog alertDialog = AlertDialog(
//       title: Text(title),
//       content: Text(content),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text("Ok"),
//         ),
//       ],
//     );
//
//     showDialog(context: context, builder: (context) {
//       return alertDialog;
//     });
//   }
//
//   static void showLoadingDialog(BuildContext context, String title) {
//     AlertDialog loadingDialog = AlertDialog(
//       content: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//
//             CircularProgressIndicator(),
//
//             SizedBox(height: 30,),
//
//             Text(title),
//
//           ],
//         ),
//       ),
//     );
//
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (context) {
//           return loadingDialog;
//         }
//     );
//   }
//
// }