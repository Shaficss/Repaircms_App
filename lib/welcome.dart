import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repaircms/loaddata.dart';



class Welcome extends StatelessWidget {
  const Welcome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         title:Text('Welcome'),
        actions: <Widget>[
          
          TextButton(
            onPressed: () {
              Navigator.pop(
                  context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Print()));
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
              Text("Login Successful",
              style: TextStyle(fontSize: 40,
              color: Color.fromARGB(255, 10, 129, 47),)),

              const SizedBox(height: 30,),


              
           
           const SizedBox(height: 50,),


           TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    )
  ),
    foregroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 255, 255, 255)),
    backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 31, 138, 249)),
    padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 150, vertical: 10)),
  ),
  onPressed: () {
    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Print()));
  },
  child: Text('Fetch', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

),


          ],
        ),
      ),


      
    );
  }
}