import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:repaircms/homepage.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255,241, 243, 247),
      appBar: AppBar(
        title: const Text('Page 01'),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          width: 481,
          height: 230,
          child: Row(
            children: [
              Expanded(flex: 1, child: 
              Container(
                width: 210,
                height: 230,
                color: const Color.fromARGB(255, 255, 255, 255),
                child:
                Column(
                  children: <Widget>[ 
                       const SizedBox(height: 40,),
                    SvgPicture.asset("assets/searchicon.svg",),
                     const SizedBox(height: 20,),
                    Text('Service Pricing',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: () {
              // Add your onPressed code here!
            }, 
            child: 
            Text('Book a work',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            )    
                    
                  
                  ],
                )
                 
              )
              
              ),


              SizedBox(width: 61),
              Expanded(flex: 1, child:
               Container(
                width: 210,
                height: 230,
                color: const Color.fromARGB(255, 255, 255, 255),
                child:
                Column(
                  children: <Widget>[
                     const SizedBox(height: 40,),
                    SvgPicture.asset("assets/Printer.svg",),
                     const SizedBox(height: 20,),
                     Text('Printer setting',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              

                  ],
                )
              )
               
               ),
            ],
          ),
        ),
           

            
          ],
        ),
      ),
    );
  }
}