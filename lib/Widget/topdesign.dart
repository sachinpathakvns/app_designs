import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Topdesign extends StatefulWidget {
  final dynamic gallery;
  final dynamic camera;
  final dynamic flash;

  const Topdesign(
      {Key? key,
        this.camera,
        this.gallery,
        this.flash})
      : super(key: key);

  @override
  State<Topdesign> createState() => _TopdesignState();
}

class _TopdesignState extends State<Topdesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 60,
                width: double.infinity,
                padding: EdgeInsets.only(left: 20,right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: widget.gallery,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'assets/images/gallery_icon.png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.flash,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'assets/images/flashlight.png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.camera,
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'assets/images/camera.png',
                          fit: BoxFit.cover,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
