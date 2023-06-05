import 'package:badges/badges.dart';
import 'package:badges/src/badge.dart' as badge;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomdesign extends StatefulWidget {
  const Bottomdesign({Key? key}) : super(key: key);

  @override
  State<Bottomdesign> createState() => _BottomdesignState();
}

class _BottomdesignState extends State<Bottomdesign> {
  @override
  Widget build(BuildContext context) {
    return badge.Badge(
      badgeStyle: BadgeStyle(
        elevation: 3,
        badgeColor: Colors.yellow.shade800,
        shape: BadgeShape.circle,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      position: BadgePosition.topStart(
        // top: MediaQuery.of(context).size.height * 0.10,
        start: MediaQuery.of(context).size.height * 0.20,
      ),
      badgeContent: Container(
        height: 45,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/images/Group 1.png',
          // fit: BoxFit.cover,
          // color: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            height: 90,
            width: double.infinity,
            padding:
            const EdgeInsets.only(top: 10, right: 30, left: 30),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                      child: Image.asset(
                        'assets/images/app-logo.png',
                        color: Colors.red,
                      ),
                    ),
                    const Text(
                      'Generate',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                        height: 45,
                        child: Icon(
                          Icons.history,
                          size: 45,
                          color: Colors.white,
                        )),
                    Text(
                      'History',
                      style:
                      TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
