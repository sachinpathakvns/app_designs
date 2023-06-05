import 'dart:typed_data';

import 'package:app_designs/Widget/bottomdesign.dart';
import 'package:app_designs/Widget/topdesign.dart';
import 'package:app_designs/overlayqr.dart';
import 'package:app_designs/resultui.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  MobileScannerController cameraController = MobileScannerController();
  bool _screenOpened = false;

  @override
  void initState() {
    // TODO: implement initState
    this._screenWasClosed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Stack(
          children: [
            MobileScanner(
                controller: MobileScannerController(
                  detectionSpeed: DetectionSpeed.normal,
                  facing: CameraFacing.back,
                  // torchEnabled: true,
                ),
                // allowDuplicates: false,
                // controller: cameraController,
                onDetect: (capture) {
                  final List<Barcode> barcodes = capture.barcodes;
                  final Uint8List? image = capture.image;
                  _foundBarcode;
                  for (final barcode in barcodes) {
                    debugPrint('Barcode found! ${barcode.rawValue}');
                  }
                }),
            QRScannerOverlay(overlayColour: Colors.black.withOpacity(0.5)),
            const Align(
                alignment: Alignment.bottomCenter,
                child: Bottomdesign()),
             Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Topdesign(flash: torch(context)),
                )),
          ],
        ));
  }

  MobileScannerController torch(BuildContext context){
    return MobileScannerController(
      torchEnabled: true,
    );
  }

  void _foundBarcode(Barcode barcode, MobileScannerArguments? args) {
    print(barcode);
    if (!_screenOpened) {
      final String code = barcode.rawValue ?? "___";
      _screenOpened = false;
      //here push navigation result page
      Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FoundScreen(value: code, screenClose: _screenWasClosed)))
          .then((value) => print(value));

      // builder: builder) => FoundScreen(value: code, screenClose: _screenWasClosed))
    }
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
