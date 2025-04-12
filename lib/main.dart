import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter_svg/flutter_svg.dart'; // SVG desteği için gerekliimport 'dart:async';
>>>>>>> c22fbef060a51c66ac2b47239ad4743a30019154

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

<<<<<<< HEAD
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
=======
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 196, 198, 199),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 196, 198, 199),
          toolbarHeight: MediaQuery.of(context).size.height * 0.23,
          title: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.04,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ), //soldan bosluk
                    Column(
                      children: [
                        Text(
                          "11:25PM",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                    Column(
                      children: [
                        Row(children: [Text("Saturday ")]),
                        Row(
                          children: [
                            Text(
                              "August 27 ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 22,
                  ), //yatay olrk kenarlardn  bosluk bırakıyo
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Uygulama Ara...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.width * 0.10),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 170, 193, 210),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(6, 6),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'lib/assets/icons/clouds.svg', // Buraya eklemek istediğin SVG dosyanın yolunu yaz
                    width: 34, // İkonun genişliği
                    height: 34, // İkonun yüksekliği
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ), // Beyaz renk yap
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ), // İkon ile yazı arasına boşluk ekler
                  Text(
                    "Broken cloud - 43 derece",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.08),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Container(
                              //containern içine bi tane daha container verdm
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(8, 9, 0, 7),

                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'lib/assets/icons/call.svg',
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09, // Test için belirli bir genişlik ver
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    fit: BoxFit.contain, // Taşma yapmasın
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text(
                                    "arama",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Container(
                              //containern içine bi tane daha container verdm
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(8, 7, 0, 7),

                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'lib/assets/icons/mail.svg',
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09, // Test için belirli bir genişlik ver
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    fit: BoxFit.contain, // Taşma yapmasın
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text(
                                    "e posta",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: MediaQuery.of(context).size.height * 0.10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Container(
                              //containern içine bi tane daha container verdm
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(8, 7, 0, 7),

                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'lib/assets/icons/camera.svg',
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09, // Test için belirli bir genişlik ver
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    fit: BoxFit.contain, // Taşma yapmasın
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text(
                                    "kamera",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //phone mai sonrasııı
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: MediaQuery.of(context).size.height * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Container(
                            //containern içine bi tane daha container verdm
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(18, 7, 0, 7),

                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'lib/assets/icons/instagram.svg',
                                  width:
                                      MediaQuery.of(context).size.width *
                                      0.10, // Test için belirli bir genişlik ver
                                  height:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fit: BoxFit.contain, // Taşma yapmasın
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "instagram",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: MediaQuery.of(context).size.height * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Container(
                            //containern içine bi tane daha container verdm
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(18, 7, 0, 7),

                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'lib/assets/icons/whatsapp_1.svg',
                                  width:
                                      MediaQuery.of(context).size.width *
                                      0.10, // Test için belirli bir genişlik ver
                                  height:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fit: BoxFit.contain, // Taşma yapmasın
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Align(alignment: Alignment.bottomRight),
                                Text(
                                  "whatsaap",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: MediaQuery.of(context).size.height * 0.10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Container(
                            //containern içine bi tane daha container verdm
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(18, 7, 0, 7),

                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'lib/assets/icons/social-media.svg',
                                  width:
                                      MediaQuery.of(context).size.width *
                                      0.10, // Test için belirli bir genişlik ver
                                  height:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fit: BoxFit.contain, // Taşma yapmasın
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06,
                                ),
                                Align(
                                  alignment:
                                      Alignment.center, // Sağ alt köşeye hizala
                                  child: Text(
                                    "twitter",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Container(
                            //containern içine bi tane daha container verdm
                            alignment: Alignment.centerLeft,

                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.13,
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'lib/assets/icons/youtube.svg',
                                  width:
                                      MediaQuery.of(context).size.width *
                                      0.10, // Test için belirli bir genişlik ver
                                  height:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center, // Taşma yapmasın
                                ),
                                Align(
                                  alignment:
                                      Alignment.center, // Sağ alt köşeye hizala
                                  child: Text(
                                    "youtube",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.04),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: Offset(5, 5),
                              ),
                            ],
                          ),
                          child: Container(
                            //containern içine bi tane daha container verdm
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.13,
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'lib/assets/icons/sound.svg',
                                  width:
                                      MediaQuery.of(context).size.width *
                                      0.10, // Test için belirli bir genişlik ver
                                  height:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fit: BoxFit.contain, // Taşma yapmasın
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "spotify",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.04,
                    ), // Daha fazla boşluk ekle
                  ],
                ),
              ],
>>>>>>> c22fbef060a51c66ac2b47239ad4743a30019154
            ),
          ],
        ),
      ),
<<<<<<< HEAD
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
=======
>>>>>>> c22fbef060a51c66ac2b47239ad4743a30019154
    );
  }
}
