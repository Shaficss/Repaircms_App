import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repaircms/input_email.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(     
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SvgPicture.asset("assets/repair_cms_top.svg",),
            const SizedBox(height: 22,),
            SvgPicture.asset("assets/man_and_pc.svg",),

            const Text('WORLD`S MOST USER-FRIENDLY',style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
            const Text('REPAIR MANAGER',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
           

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
                                const Inputemail()));
  },
  child: Text('Log In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

),
    
                 const SizedBox(height: 40,), 
      Text('Leagal discloser|Privecy policy|Terms of service',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
      const Text('Copyright © Candy Melon Software GmbH',style: TextStyle(fontSize: 12),),
            

        

          ],
        ),
      ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
