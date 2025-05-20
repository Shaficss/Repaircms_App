import 'package:flutter/material.dart';

class Page03 extends StatelessWidget {
  const Page03 ({super.key});

      
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(     
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 100,),

              
            Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              child:Column(
                children: <Widget>[
                  const SizedBox(width: 475,height: 689,
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.start,
                     children:<Widget> [ 
                  SizedBox(height: 20,),
                      Text(
                    'Device Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Row(
                    children:[
                      Text('Device Name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text('Device Model',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ]
                  )
                  



                  
                  ]
                  ),
                  ),
                ]
              
              
              ),

            )
          
           

           
    
      
            

        

          ],
        ),
      ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


