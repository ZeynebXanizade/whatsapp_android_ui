import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:whatsapp_android/widgets/community_child.dart';

class WhatsappCommunity extends StatefulWidget {
  const WhatsappCommunity({super.key});

  @override
  State<WhatsappCommunity> createState() => _WhatsappCommunityState();
}

class _WhatsappCommunityState extends State<WhatsappCommunity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: WhatsappColors.backgroundColor,
      child: Wrap(
        children: [
          Material(
            color: WhatsappColors.backgroundColor,
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => comChild()));
                });
              },
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(
                                Icons.people_alt,
                                color: WhatsappColors.white.withOpacity(0.5),
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: WhatsappColors.tabFocusedColor,
                                borderRadius: BorderRadius.circular(60)),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                child: Icon(
                                  Icons.add,
                                  color: WhatsappColors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "New community",
                      style: TextStyle(
                          color: WhatsappColors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: WhatsappColors.backgroundColor,
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: WhatsappColors.white,
                      ),
                      child: Icon(
                        Icons.museum_rounded,
                        color: Colors.pinkAccent[200],
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Museum",
                        style: TextStyle(
                            color: WhatsappColors.white.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: WhatsappColors.white.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: WhatsappColors.backgroundColor,
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: WhatsappColors.tabFocusedColor,
                      ),
                      child: Icon(
                        Icons.record_voice_over,
                        color: WhatsappColors.white.withOpacity(0.6),
                        size: 25,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Announcements",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Yesterday",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.7),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Removed the group ......................",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.volume_mute_rounded,
                                color: WhatsappColors.white.withOpacity(0.5),
                              ),
                              Text(
                                "Archived",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: WhatsappColors.backgroundColor,
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: WhatsappColors.white,
                      ),
                      child: Icon(
                        Icons.museum_rounded,
                        color: Colors.pinkAccent[200],
                        size: 30,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Museum chats",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 95,
                              ),
                              Text(
                                "Yesterday",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.7),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "The group ......................................",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.volume_mute_rounded,
                                color: WhatsappColors.white.withOpacity(0.5),
                              ),
                              Text(
                                "Archived",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            color: WhatsappColors.backgroundColor,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_right,
                      color: WhatsappColors.white.withOpacity(0.5),
                      size: 30,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                          color: WhatsappColors.white.withOpacity(0.5),
                          fontSize: 20),
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
