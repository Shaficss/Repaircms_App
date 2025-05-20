import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repaircms/password.dart';
import 'dart:core';
import 'package:email_validator/email_validator.dart';


final _formGlobalKey = GlobalKey<FormState>();



class Inputemail extends StatelessWidget {
  
  const Inputemail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
        actions: <Widget>[
          TextButton(
            onPressed: () {
               _formGlobalKey.currentState!.validate();
            },
            child: const Icon(Icons.navigate_before),
          ),
        ], 

      ), 

     body: Center(     
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          
             SvgPicture.asset("assets/repair_cms_top.svg",),
              const SizedBox(height: 30,),
              Text("Sign Into your Account",style: TextStyle(fontSize: 40,)),

              const SizedBox(height: 30,),

              Container(
              width: 500,
              child:
              Form(
                key: _formGlobalKey,
                child: Column(children: [
                  TextFormField(
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Enter a valid email';
                  }
                  else{
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const InputPass()));
                  }
                  return null;
                },
                style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter Your Email',
    
                ),
              ),

                ],
                ),
            ), 
          ),
           
           const SizedBox(height: 50,),


          ],
        ),
      ),
    );
  }
}