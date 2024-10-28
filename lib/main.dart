import 'package:flutter/material.dart';
import 'package:retrofit_network_call/views/post_view.dart';

import 'di/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM with Retrofit',
      home: PostView(),
    );
  }
}
