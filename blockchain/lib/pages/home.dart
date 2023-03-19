// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       minimum: EdgeInsets.zero,
//       child: Scaffold(
//         // backgroundColor: Colors.grey,
//         //drawer: Drawer(backgroundColor: Colors.amber),
//         // appBar: AppBar(
//         //   leading: IconButton(
//         //       onPressed: () => const Drawer(
//         //             backgroundColor: Colors.red,
//         //           ),
//         //       icon: const Icon(
//         //         Icons.menu,
//         //         color: Color.fromARGB(249, 23, 76, 119),
//         //         size: 28,
//         //       )),
//         //   elevation: 0,
//         //   centerTitle: true,
//         //   title: const Text(
//         //     'Blockchain',
//         //     style: TextStyle(
//         //         fontSize: 26, color: Color.fromARGB(249, 23, 76, 119)),
//         //   ),
//         //   backgroundColor: Colors.transparent,
//         // ),
//         //backgroundColor: const Color.fromARGB(255, 226, 240, 252),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               // appbar
//               Padding(
//                 padding: const EdgeInsets.only(left: 15, top: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/login.png',
//                           width: 40,
//                         ),
//                         Text(
//                           'Blockchain',
//                           style: GoogleFonts.poppins(
//                             fontSize: 30,
//                             color: const Color.fromARGB(249, 23, 76, 119),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(right: 8.0),
//                       child: CircleAvatar(
//                         backgroundColor: Colors.blue,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 35,
//               ),

//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: Text(
//                     'Documents',
//                     style: GoogleFonts.poppins(
//                       decoration: TextDecoration.underline,
//                       color: const Color.fromARGB(249, 23, 76, 119),
//                       fontSize: 22,
//                     ),
//                   ),
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                 child: Container(
//                   //height: MediaQuery.of(context).size.height * 0.18,
//                   // color: Color.fromARGB(255, 228, 240, 249),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 10,
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: Container(
//                               height: 130,
//                               width: 185,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   // color: Color.fromARGB(255, 255, 255, 255),
//                                   //border: Border.all(),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   image: DecorationImage(
//                                     image:
//                                         AssetImage('assets/images/aadhar.png'),
//                                   )),
//                               child: const Align(
//                                   alignment: Alignment.bottomCenter,
//                                   child: Padding(
//                                     padding: EdgeInsets.only(top: 18.0),
//                                     child: Text(
//                                       'AADHAAR CARD',
//                                     ),
//                                   )),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Container(
//                               height: 130,
//                               width: 185,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   //border: Border.all(),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           'assets/images/PANCR.png'))),
//                               child: const Align(
//                                   alignment: Alignment.bottomCenter,
//                                   child: Text(
//                                     'PAN CARD',
//                                   )),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Container(
//                               height: 140,
//                               width: 185,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   //border: Border.all(),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           'assets/images/DRVLC.png'))),
//                               child: const Align(
//                                   alignment: Alignment.bottomCenter,
//                                   child: Text(
//                                     'DRIVING LISCENCE',
//                                   )),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Container(
//                               height: 130,
//                               width: 185,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   //border: Border.all(),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           'assets/images/aadhar.png'))),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Container(
//                               height: 130,
//                               width: 185,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   //border: Border.all(),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           'assets/images/aadhar.png'))),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:blockchain/pages/login.dart';
import 'package:blockchain/pages/scanner.dart';
import 'package:blockchain/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'E-Verify',
            style: GoogleFonts.poppins(fontSize: 20, color: blueColor),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Scan!'),
                          children: [
                            SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Scan a QR'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QRViewExample()));
                              },
                            ),
                            SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Logout'),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                            ),
                            SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                },
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: blueColor,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width * 0.98,
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: 170,
                        width: 135,
                        child: Image.network(
                            'https://github.com/vamshi-exe/euforia/blob/main/IMG_20220315_111205.jpg?raw=true'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name: Ashish Sinha',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              'DOB: 21 NOV 2001',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              'Sex: Gay',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.white),
                            ),
                            Text(
                              'Add: PHCET Rasayani',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
