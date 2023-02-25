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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Welcome')),
    );
  }
}
