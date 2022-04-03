import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_tjbhujef.json'),

          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * .4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_7pkdorub.json')),
                    Text(
                      '2k',
                      style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.bold),),

                  ],
                ),
                Text(
                  'Subscriber',
                  style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),
                ),

                Lottie.network('https://assets1.lottiefiles.com/packages/lf20_5upjwxvm.json'),

              ],
            ),
          ),





        ],
      ),
    );
  }
}
