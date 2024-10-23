import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signincontroller extends GetxController{
   TextEditingController emailid=TextEditingController(); 
    TextEditingController confirmpassword=TextEditingController(); 
    
    static var ispasswordhide=true.obs;
    static var rememberme=false.obs;



void onsignup(){
print("name${emailid.text}");
print("name${confirmpassword.text}");

}



}