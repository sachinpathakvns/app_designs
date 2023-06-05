import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  const Design2({Key? key}) : super(key: key);

  @override
  State<Design2> createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Scan Qr Code',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 10, right: 10,top: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue.shade300,
                    Colors.indigo.shade400,
                  ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(18)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/images/qr_scanner.png',color: Colors.white,fit: BoxFit.cover,height: 40,),
                            const SizedBox(height: 10,),
                            const Text('Scan Qr Code',style: TextStyle(fontSize: 15,color: Colors.white),)
                          ],
                        ),
                        Column(
                          children:const [
                             Icon(Icons.history,size: 40,color: Colors.white,),
                             SizedBox(height: 10,),
                             Text('History',style: TextStyle(fontSize: 15,color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 15, right: 10,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Activated on      20/04/2025 20:45 Hrs',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text('Expires on          20/04/2025 20:45 Hrs',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Container(
                height: 400,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Column(
                  children:  [
                      const Text('Direct LED beta series',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      SizedBox(
                        height: 250,
                        child: Center(
                          child: Image.asset('assets/images/qr.jpg',fit: BoxFit.cover,height: 200,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const[
                                 Text('Warranty',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,fontSize: 16),),
                                 Text('365',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                              ],
                            ),
                            Column(
                              children:const [
                                 Text('Coins',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),),
                                 Text('1,000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                              ],
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
