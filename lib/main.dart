import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // SVG desteği için gerekliimport 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            ),
          ],
        ),
      ),
    );
  }
}
