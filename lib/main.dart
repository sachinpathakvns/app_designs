import 'package:app_designs/Design2.dart';
import 'package:app_designs/Providers/Providers.dart';
import 'package:app_designs/Providers/apiProvider.dart';
import 'package:app_designs/Qrcodescan.dart';
import 'package:app_designs/Widget/topdesign.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mailer/mailer.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Widget/bottomdesign.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: providers,
        child: const Designfirst(),
      ),
    );
  }
}

// class Designfirst extends StatefulWidget {
//   const Designfirst({Key? key}) : super(key: key);
//
//   @override
//   State<Designfirst> createState() => _DesignfirstState();
// }
//
// class _DesignfirstState extends State<Designfirst> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 10,),
//             Container(
//               height: 100,
//               padding: EdgeInsets.only(right: 20,left: 20,top: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Image.asset('assets/images/mingcute_menu-fill.png'),
//                       SizedBox(width: 20,),
//                       Text('QR list',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(Icons.search,color: Colors.black,size: 28,),                      SizedBox(width: 20,),
//                       Image.asset('assets/images/Vector.png'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 580,
//               child: ListView.builder(
//                 itemCount: 20,
//                 padding: const EdgeInsets.only(right: 20, left: 20),
//                 physics: const BouncingScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(top: 15),
//                     child: Container(
//                       height: 100,
//                       padding:
//                           const EdgeInsets.only(top: 10, left: 10, bottom: 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           color: Colors.grey.shade500,
//                           width: 1,
//                         ),
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(18)),
//                       ),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 80,
//                             width: 100,
//                             decoration: const BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topRight,
//                                   end: Alignment.bottomLeft,
//                                   colors: [
//                                     Colors.blue,
//                                     Colors.red,
//                                   ],
//                                 ),
//                                 shape: BoxShape.circle),
//                             child: Image.asset('assets/images/qr_generate.png'),
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "LED Backlight",
//                                 style: TextStyle(
//                                     fontSize: 18, fontWeight: FontWeight.bold),
//                               ),
//                               Row(
//                                 children: const [
//                                   Text(
//                                     "900",
//                                     style: TextStyle(
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w800,
//                                         color: Colors.blue),
//                                   ),
//                                   SizedBox(
//                                     width: 3,
//                                   ),
//                                   Text(
//                                     "Coins",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                       fontWeight: FontWeight.w800,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Text(
//                                     "365",
//                                     style: TextStyle(
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w500,
//                                         color: Colors.blue),
//                                   ),
//                                   SizedBox(
//                                     width: 3,
//                                   ),
//                                   Text(
//                                     "Days Warranty",
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ],
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(top: 5),
//                                 child: Text(
//                                   "orem ipsum  dolor dolor sit amet.....",
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                   style: TextStyle(fontWeight: FontWeight.w500),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const Bottomdesign(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Designfirst extends StatefulWidget {
  const Designfirst({Key? key}) : super(key: key);

  @override
  State<Designfirst> createState() => _DesignfirstState();
}

class _DesignfirstState extends State<Designfirst> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Getlistspeciality>(context, listen: false).getAllTodos();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       setState(() async {
            //         // message;
            //         // await connection.send(message);
            //         // await FlutterEmailSender.send(email);
            //       });
            //     },
            //     child: Text("Send email")),
            Container(
              height: 100,
              padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/mingcute_menu-fill.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'QR list',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/images/Vector.png'),
                    ],
                  ),
                ],
              ),
            ),
            Consumer<Getlistspeciality>(
              builder: (context, value, child) {
                if (value.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final todos = value.todos;
                return SizedBox(
                  height: 580,
                  child: RawScrollbar(
                    crossAxisMargin: -20,
                    thumbColor: const Color(0xFF2B73B7),
                    radius: const Radius.circular(20),
                    child: ListView.builder(
                      itemCount: 20,
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 80,
                            padding:
                            const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade500,
                                width: 1,
                              ),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(18)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  // width: ,
                                  decoration: const BoxDecoration(
                                    // color: Colors.black,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                      'assets/images/icons8-torch-64.png'),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "LED Backlight",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "01/02/2024",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Days Warranty",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "365",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Coins",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "2,000",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    // Row(
                                    //   children: const [
                                    //     Text(
                                    //       "900",
                                    //       style: TextStyle(
                                    //           fontSize: 13,
                                    //           fontWeight: FontWeight.w800,
                                    //           color: Colors.blue),
                                    //     ),
                                    //     SizedBox(
                                    //       width: 3,
                                    //     ),
                                    //     Text(
                                    //       "Coins",
                                    //       style: TextStyle(
                                    //         fontSize: 12,
                                    //         fontWeight: FontWeight.w800,
                                    //       ),
                                    //     ),
                                    //     SizedBox(
                                    //       width: 10,
                                    //     ),
                                    //     Text(
                                    //       "365",
                                    //       style: TextStyle(
                                    //           fontSize: 13,
                                    //           fontWeight: FontWeight.w500,
                                    //           color: Colors.blue),
                                    //     ),
                                    //     SizedBox(
                                    //       width: 3,
                                    //     ),
                                    //     Text(
                                    //       "Days Warranty",
                                    //       style: TextStyle(
                                    //           fontSize: 12,
                                    //           fontWeight: FontWeight.w500),
                                    //     ),
                                    //   ],
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 5),
                                    //   child: Text(
                                    //     "orem ipsum  dolor dolor sit amet.....",
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: TextStyle(fontWeight: FontWeight.w500),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            const Bottomdesign(),
          ],
        ),
      ),
    );
  }
}
