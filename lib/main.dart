
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_android/pages/chat_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid || Platform.isIOS) {
    runApp(MyApps());
  }
  else{
    exit(0);
  }
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: ChatPage(),
    );
  }


}