// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // double _width = 50;
  // double _height = 50;
  // GlobalKey textKey = GlobalKey();
  // GlobalKey btnKey = GlobalKey();

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //     if (_width >= 300) {
  //       _width = 50;
  //     } else {
  //       _width += 10;
  //     }
  //   });

  //   RenderBox? renderText =
  //       textKey.currentContext?.findRenderObject() as RenderBox?;
  //   RenderBox? renderBtn =
  //       btnKey.currentContext?.findRenderObject() as RenderBox?;

  //   print(renderText?.localToGlobal(Offset.zero));
  //   print(renderText?.size);

  //   print('-----');

  //   print(renderBtn?.localToGlobal(Offset.zero));
  //   print(renderBtn?.size);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         const Text('Hello cac ban tre',
      //             style: TextStyle(fontSize: 20, color: Colors.amber)),
      //         Text(
      //           '$_counter',
      //           key: textKey,
      //           style: const TextStyle(
      //             color: Colors.red,
      //             fontSize: 20,
      //           ),
      //         ),
      //         Container(
      //           color: Colors.red,
      //           width: _width,
      //           height: _height,
      //         )
      //       ],
      //     ),
      //   ),
      //   body: Center(
      //       child: Container(
      //     alignment: Alignment.center,
      //     // padding: const EdgeInsets.fromLTRB(0, 0, 0, 300),
      //     decoration: BoxDecoration(
      //         color: Colors.green,
      //         // borderRadius: const BorderRadius.all(Radius.circular(10)),
      //         shape: BoxShape.circle, //hinh tron
      //         border: Border.all(width: 2, color: Colors.amber)),
      //     // constraints: const BoxConstraints.expand(),
      //     transform: Matrix4.rotationZ(30 * pi / 180),
      //     width: 200,
      //     height: 200,
      //     child: const Text("adu",
      //         style: TextStyle(
      //             color: Colors.amber,
      //             fontSize: 40,
      //             fontWeight: FontWeight.w700)),
      //   )),

      //   body: Center(
      //     child: Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         Container(
      //           width: 300,
      //           height: 300,
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.deepPurple,
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.blueAccent,
      //         )
      //       ],
      //     ),
      //   ),

      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.amber,
      //       ),
      //       Container(
      //         width: 75,
      //         height: 75,
      //         color: Colors.deepPurple,
      //       ),
      //       Container(
      //         width: 50,
      //         height: 50,
      //         color: Colors.blueAccent,
      //       ),
      //     ],
      //   ),
      // ),

      body: Container(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
          color: Colors.white,
          constraints: const BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffd8d8d8)),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: const FlutterLogo(),
              ),
              //
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  'Hello\nWelcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              //
              const TextField(
                style: TextStyle(color: Color(0xff888888), fontSize: 18),
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15),
                ),
              ),
              //
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: const [
                  //
                  TextField(
                    style: TextStyle(color: Color(0xff888888), fontSize: 18),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15),
                    ),
                  ),
                  //
                  Text(
                    'Show',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _onSignInClick,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.amber, fontSize: 16),
                    ),
                  ),
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'New Account? Sign Up',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  )
                ],
              )
            ],
          )),

      // floatingActionButton: FloatingActionButton(
      //   key: btnKey,
      //   onPressed: _incrementCounter,
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  void _onSignInClick() {}
}
