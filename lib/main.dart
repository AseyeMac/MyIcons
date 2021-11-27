import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Using Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Using Icons'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('using the font awesome package',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              Text(
                'Brand Icon',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  FaIcon(FontAwesomeIcons.twitterSquare,
                      size: 50, color: Colors.blue),
                  FaIcon(FontAwesomeIcons.pinterest,
                      size: 50, color: Colors.red),
                  FaIcon(FontAwesomeIcons.whatsapp,
                      size: 50, color: Colors.green),
                  FaIcon(FontAwesomeIcons.photoVideo,
                      size: 50, color: Colors.black),
                ],
              )
            ],
          ),
        ));
  }
}
