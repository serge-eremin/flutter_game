import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
 
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .whenComplete(() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text("Game"),
      ),
    ));
  });
}
