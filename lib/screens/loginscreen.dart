import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast/screens/textfieldsigin.dart';
import 'package:podcast/screens/signupscreen.dart';
import 'package:podcast/textfieldcontroller.dart/signincontroller.dart';
import 'package:podcast/textfieldcontroller.dart/signupcontroller.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({super.key});

  @override
  State<signinscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<signinscreen> {
  signupcontroller Signup = Get.put(signupcontroller());
    signupcontroller Signin = Get.put(signupcontroller());


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
     gradient:    LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  stops: [0.7, 0.5, 2],
  colors: [
    Colors.black54,
    Colors.black54,
    Colors.red,
  ],
),

      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    'Logo',
                    style:  GoogleFonts.poppins(
                               textStyle :  const TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  ),
                                  ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Login to your account',
                    style: GoogleFonts.poppins(
                               textStyle :  const TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  ),
                                  ),         
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                    'Email',
                    style: GoogleFonts.poppins(
                               textStyle :  const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,            
                                  ),
                      )),
                     const SizedBox(height: 6),
                       Textfieldsignin(onchange:Signin.name),
                  const SizedBox(height: 8),
                   Text(
                    'Confirm Password',
                    style:  GoogleFonts.poppins(
                               textStyle :  const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,            
                                  ),
                      )),
                  Obx(()=>
                     TextFormField(
                                obscureText:signupcontroller.ispasswordhide.value,
                                style: const TextStyle(color: Colors.white), //logic
                                decoration: InputDecoration(
                                suffix: InkWell(
                                  onTap: (){
                                    signupcontroller.ispasswordhide.value=!signupcontroller.ispasswordhide.value;},
                                  child: Icon(signupcontroller.ispasswordhide.value?Icons.visibility:Icons.visibility_off,color: Colors.white,)),
                                fillColor: const Color.fromRGBO(16, 15, 15, 10),
                                filled: true,
                                  enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                            ),
                                ),
                              ),
                  ),
                                       Obx(()=>
                                          Row(children: [
                                          Checkbox(
                                              value: signincontroller.rememberme.value, 
                                          onChanged:(Value)=>signincontroller.rememberme.value=!signincontroller.rememberme.value),
                                            const SizedBox(
                                            width: 2,
                                           ),
                                           Text('Remember Me',style:GoogleFonts.poppins(textStyle: const TextStyle(
                                            fontSize: 16,color: Colors.white,
                                           ))),
                                           const SizedBox(
                                            width: 14,
                                           ),
                                           InkWell(
                                            onTap: (){},//ontap functionality,
                                            child: Text('Forget Password?',style: GoogleFonts.poppins(textStyle:const TextStyle(
                                              color: Color.fromRGBO(96, 5, 5, 3),
                                              fontSize: 15,
                                            )),)),
                                         ],
                                         ),
                                       ),
                                  const SizedBox(height: 8),                  
                                     InkWell(
                                      onTap: (){},
                                       child: Container(
                                        width: 390,
                                        height: 48,
                                        decoration:  BoxDecoration(
                                          color: const Color.fromRGBO(231, 15, 15,10),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,),
                                          child: Text
                                          (
                                            'Login',style: GoogleFonts.poppins(
                                              textStyle :  const TextStyle(
                                             color: Colors.white,
                                             fontSize: 16,),),  textAlign:TextAlign.center ,)
                                        ),
                                       ),
                                     ),
                                  const SizedBox(
                                    height: 18,
                                  ) ,
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container( margin: const EdgeInsets.only(left: 8,right: 18),
                                           child: const Divider(
                                        color: Colors.white,
                                       ),),
                                      ),
                                  Text('or continue with',style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color:Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),),
                                   Expanded(
                                     child: Container(
                                      margin: const EdgeInsets.only(left: 8,right: 18),
                                      child: const Divider(
                                        color: Colors.white,
                                      ),
                               ),
                                   ),
                                    ],
                                  ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    InkWell( //on tap function for googleee
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child:Image.network("https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
                                          
                      ),
                    ),
                    const SizedBox(width: 16,),
                    InkWell( //ontap finction for facebookkk
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(7)
                          
                        ),
                        child:Image.network("https://static-00.iconduck.com/assets.00/facebook-color-icon-1024x1024-5fognu35.png"),
                                          
                      ),
                    ),
                    const SizedBox(width: 16,),
                    InkWell( //ontap function for apple
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(7)
                          
                        ),
                        child:Image.network("https://cdn-icons-png.flaticon.com/512/0/747.png"),
                                          
                      ),
                    ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an account?",style: GoogleFonts.poppins(textStyle: const TextStyle(color: 
                      Colors.white,fontSize: 12,)),),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(()=>const Signupscreen(),);
                        },
                        child: Text('Signup',style: GoogleFonts.poppins(textStyle: const TextStyle(color: 
                      Colors.white,fontSize: 12,decoration: TextDecoration.underline,decorationColor: Colors.white,decorationThickness: 1.5)),))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
