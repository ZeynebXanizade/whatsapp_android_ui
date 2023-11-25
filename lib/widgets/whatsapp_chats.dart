import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:whatsapp_android/widgets/ChildChats.dart';
import 'package:whatsapp_android/widgets/text_filed.dart';
import 'package:whatsapp_android/widgets/whatsapp_contact.dart';

class WhatsappChats extends StatefulWidget {
  const WhatsappChats({super.key});

  @override
  State<WhatsappChats> createState() => _WhatsappChatsState();
}

class _WhatsappChatsState extends State<WhatsappChats> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: WhatsappColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          height: double.infinity,
          color: WhatsappColors.backgroundColor,
          child: ListView(
            primary: false,
            children: [
              WhatsappContact(
                imageUrl: "assets/images/img1.jpg",
                user: "Mix",
                briefChat: "Helloi",
                date: "11/09/2023",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChildChats()),
                  );
                },
              ),
              WhatsappContact(
                briefChat: "Hi",
                date: "12/09/2023",
                imageUrl: "assets/images/img3.jpg",
                user: "Baby",
                onPressed: () {},
              ),
              WhatsappContact(
                briefChat: "Okay,bye.",
                date: "13/09/2023",
                imageUrl: "assets/images/img2.jpeg",
                user: "Alexsa",
                onPressed: () {},
              ),
              WhatsappContact(
                briefChat: "What's up",
                date: "12/09/2023",
                imageUrl: "assets/images/img4.webp",
                user: "Manu",
                onPressed: () {},
              ),
              WhatsappContact(
                briefChat: "Like",
                date: "12/09/2023",
                imageUrl: "assets/images/img5.webp",
                user: "Mina",
                onPressed: () {},
              ),
              WhatsappContact(
                briefChat: "Woow",
                date: "13/09/2023",
                imageUrl: "assets/images/img6.jpg",
                user: "Alex",
                onPressed: () {},
              ),
              WhatsappContact(
                imageUrl: "assets/images/img1.jpg",
                user: "Mix",
                briefChat: "Helloi",
                date: "11/09/2023",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15)),
        onPressed: () {},
        child: const Icon(
          Icons.chat,
          color: Colors.black,
        ),
        backgroundColor: WhatsappColors.tabFocusedColor,
      ),
    );
  }
}
