import 'package:flutter/material.dart';

class Textfieldsignup extends StatelessWidget {

  final TextEditingController onchange;
  

   const Textfieldsignup({super.key, required this.onchange,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
        Expanded(
          child: TextFormField(
            controller: onchange,
            style: const TextStyle(color: Colors.white), //logic
            decoration: InputDecoration(
            
            fillColor: const Color.fromRGBO(16, 15, 15, 10),
            filled: true,
           
              enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    
        ),
    
            ),
          ),
          
        ),

        
        
      ],
    
    
    
    );
  }
}