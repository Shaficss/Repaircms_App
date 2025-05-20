//single data fetch
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:repaircms/Welcome.dart';

Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://18b58655-5eac-4b4f-ae4a-181d388ef5e0.mock.pstmn.io/user/6410618c420f462db2c886a8'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}

class Album {
  final String id;
  final String fullName;
  final String email;
  final String password;

  const Album({required this.id, required this.fullName, required this.email, required this.password});

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      { 'id': String id, 'fullName': String fullName,'email': String email, 'password': String password} => Album(
        id: id,
        fullName: fullName,
        email: email,
        password: password,
      ),
      _ => throw const FormatException('Failed to load'),
    };
  }
}

class Print extends StatefulWidget {
  const Print({super.key});

  @override
  State<Print> createState() => _PrintState();
}

class _PrintState extends State<Print> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         title:Text('Fetch'),
        actions: <Widget>[
          
          TextButton(
            onPressed: () {
              Navigator.pop(
                  context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Welcome()));
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
          child: 
          FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final String name = snapshot.data!.fullName;
                final String id = snapshot.data!.id;
                final String email = snapshot.data!.email;
                final String password = snapshot.data!.password;

                 return Container(
                  child:Column(
                    children: [
                   Text(id, 
                  style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 255, 27, 27),
                          )
                        ),
                Text(name, 
                  style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 255, 27, 27),
                          )
                        ),
                        Text(email, 
                  style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 255, 27, 27),
                          )
                        ),
                        Text(password, 
                  style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 255, 27, 27),
                          )
                        ),

                    ],

                  )
                  
                );
              }else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            
            },
          ),
  
        ),

        
      ),
    );
  }

}
