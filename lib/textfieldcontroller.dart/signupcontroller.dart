import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupcontroller extends GetxController{
  TextEditingController name=TextEditingController();
   TextEditingController emailid=TextEditingController(); 
   TextEditingController password=TextEditingController(); 
    TextEditingController confirmpassword=TextEditingController(); 
    
    static var ispasswordhide=true.obs;



void onsignup(){
print("name${name.text}");
print("name${emailid.text}");
print("name${confirmpassword.text}");
print("name${password.text}");

}



}