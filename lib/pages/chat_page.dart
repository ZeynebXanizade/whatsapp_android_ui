import 'package:flutter/material.dart';
import 'package:whatsapp_android/widgets/whatsapp_appbar.dart';
import 'package:whatsapp_android/widgets/whatsapp_calls.dart';
import 'package:whatsapp_android/widgets/whatsapp_community.dart';
import '../widgets/whatsapp_chats.dart';
import '../widgets/whatsapp_status.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: WhatsAppBar(),
        body: TabBarView(children: [
          WhatsappCommunity(),
          WhatsappChats(),
          WhatsappStatus(),
          WhatsappCalls()
        ]),
      ),
    );
  }
}
