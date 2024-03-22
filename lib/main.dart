import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'ui/camera_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  runApp(MyApp(
    camera: cameras.last,
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({
    super.key,
    required this.camera,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFLite Camera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraScreen(camera: camera),
    );
  }
}
