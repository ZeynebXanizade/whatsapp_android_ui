import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:whatsapp_android/widgets/text_filed.dart';
import 'package:whatsapp_android/widgets/user_chat.dart';

class ChildChats extends StatefulWidget {
  const ChildChats({super.key});

  @override
  State<ChildChats> createState() => _ChildChatsState();
}

class _ChildChatsState extends State<ChildChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: WhatsappColors.appBarColor,
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
              ClipRRect(
                child: Image.asset(
                  "assets/images/img1.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ],
          ),
          title: Material(
            color: WhatsappColors.appBarColor,
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => userWidget()));
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mix",
                    style: TextStyle(color: WhatsappColors.white, fontSize: 19),
                  ),
                  Text(
                    "last seen today at 12:03 pm",
                    style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                        fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_rounded,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                )),
            Theme(
              data: Theme.of(context).copyWith(
                  popupMenuTheme: PopupMenuThemeData(
                    color: WhatsappColors.appBarColor,
                  ),
                  textTheme: TextTheme(
                    bodySmall: TextStyle(color: WhatsappColors.white),
                  ),
                  iconTheme: IconThemeData(
                    color: WhatsappColors.white,
                  )),
              child: PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("View contact")),
                    PopupMenuItem(child: Text("Media, links and docs ")),
                    PopupMenuItem(child: Text("Search")),
                    PopupMenuItem(child: Text("Mute notifications")),
                    PopupMenuItem(child: Text("Disappearing messages")),
                    PopupMenuItem(child: Text("Wallpaper")),
                    PopupMenuItem(child: Text("More"))
                  ];
                },
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/dark.jpg"),
                    fit: BoxFit.cover),
              ),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            color: WhatsappColors.appBarColor,
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      "Hi",
                                      style: TextStyle(
                                          color: WhatsappColors.white,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "2:49 pm",
                                      style: TextStyle(
                                          color: WhatsappColors.white
                                              .withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              color: WhatsappColors.tabFocusedColor,
                            ),
                            child: Column(
                              children: [
                                const Wrap(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                        " ad minim veniam, quis nostrud  cupidatat non "
                                        "proident, sunt in culpa qui officia deserunt mollit "
                                        "anim id est laborum",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              color: WhatsappColors.appBarColor,
                            ),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Hello , what's up?",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              color: WhatsappColors.tabFocusedColor,
                            ),
                            child: Column(
                              children: [
                                const Wrap(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Proident, sunt in culpa qui officia deserunt mollit "
                                        "anim id est laborum",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              color: WhatsappColors.appBarColor,
                            ),
                            child: Column(
                              children: [
                                const Wrap(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                        " ad minim veniam, quis nostrud  cupidatat non "
                                        "proident, sunt in culpa qui officia deserunt mollit "
                                        "anim id est laborum",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              color: WhatsappColors.tabFocusedColor,
                            ),
                            child: Column(
                              children: [
                                const Wrap(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                        "anim id est laborum",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topLeft: Radius.circular(12)),
                              color: WhatsappColors.tabFocusedColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Wrap(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text(
                                        "Okay",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2:49 pm",
                                        style: TextStyle(
                                            color: WhatsappColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ), // Container(
            const textFaild(),
          ],
        ));
  }
}
