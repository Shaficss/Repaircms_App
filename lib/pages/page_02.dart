import 'package:flutter/material.dart';

class Page02 extends StatelessWidget {
  const Page02 ({super.key});

      
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(     
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 100,),

              TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    )
  ),
    foregroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 255, 255, 255)),
    backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255,255, 149, 48)),
    padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 30, vertical: 2)),
  ),
  onPressed: (null),
  child: Text('Express Job', style: TextStyle(fontSize: 13),),

),
              SizedBox(height: 10,),
              Text("Service Listening",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
              Text('List your service and book a job',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),

            Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              child:
              const SizedBox(width: 409,height: 92,)
              
              
              

            )
           

           
    
      
            

        

          ],
        ),
      ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
