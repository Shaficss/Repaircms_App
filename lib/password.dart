import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repaircms/Welcome.dart';


final _formGlobalKey = GlobalKey<FormState>();

class InputPass extends StatelessWidget {
  const InputPass({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       
        actions: <Widget>[
          
          TextButton(
            onPressed: () {
              _formGlobalKey.currentState!.validate();
            },
            child: const Text('Continue >',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 31, 138, 249),
                )),
          ),
        ], 
      ), 
      

      
     body: Center(     
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            

             SvgPicture.asset("assets/repair_cms_top.svg",),
              const SizedBox(height: 30,),
              Text("Input password",style: TextStyle(fontSize: 40,)),

              const SizedBox(height: 30,),


              Container(
              width: 500,
              child:
              Form(
                key: _formGlobalKey,
                child: Column(children: [
                  TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  else{
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Welcome()));
                  }
                  return null;
                },
                style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter Your Password',
    
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