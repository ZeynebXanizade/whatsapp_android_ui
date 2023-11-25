import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class userWidget extends StatefulWidget {
  const userWidget({super.key});

  @override
  State<userWidget> createState() => _userWidgetState();
}

class _userWidgetState extends State<userWidget> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhatsappColors.backgroundColor,
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
            child: Text(
              "Mix",
              style: TextStyle(color: WhatsappColors.white, fontSize: 19),
            ),
          ),
        ),
        actions: [
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
                  PopupMenuItem(child: Text("Share")),
                  PopupMenuItem(child: Text("Edit")),
                  PopupMenuItem(child: Text("View in address book")),
                  PopupMenuItem(child: Text("Verify security code")),
                ];
              },
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Wrap(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(children: [
                  Text(
                    "Mix",
                    style: TextStyle(color: WhatsappColors.white, fontSize: 27),
                  ),
                  Text(
                    "+994**7*9*3",
                    style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                        fontSize: 22),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call,
                                  color: WhatsappColors.tabFocusedColor,
                                  size: 30,
                                )),
                            Text(
                              "Audio",
                              style: TextStyle(
                                  color: WhatsappColors.tabFocusedColor,
                                  fontSize: 18),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.missed_video_call_outlined,
                                    color: WhatsappColors.tabFocusedColor,
                                    size: 30,
                                  )),
                              Text(
                                "Video",
                                style: TextStyle(
                                    color: WhatsappColors.tabFocusedColor,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: WhatsappColors.tabFocusedColor,
                                  size: 30,
                                )),
                            Text(
                              "Search",
                              style: TextStyle(
                                  color: WhatsappColors.tabFocusedColor,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Can't talk, Whatsapp only",
                    style: TextStyle(color: WhatsappColors.white, fontSize: 18),
                  ),
                  Text(
                    "Yesterday",
                    style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Media, links and docs",
                      style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                      )),
                  Row(
                    children: [
                      Text("702",
                          style: TextStyle(
                            color: WhatsappColors.white.withOpacity(0.5),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: WhatsappColors.white.withOpacity(0.5),
                            size: 25,
                          ))
                    ],
                  )
                ],
              ),
            ),
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     Image.asset("assets/images/img1.jpg"),
            //     Image.asset("assets/images/img1.jpg"),
            //     Image.asset("assets/images/img1.jpg"),
            //     Image.asset("assets/images/img1.jpg"),
            //   ],
            // ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_active,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Mute notifications",
                            style: TextStyle(
                                color: WhatsappColors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          FlutterSwitch(
                            activeColor: WhatsappColors.tabFocusedColor,
                            inactiveColor: WhatsappColors.appBarColor,
                            width: 60.0,
                            height: 30.0,
                            toggleSize: 10.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 3.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.music_note,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Custom notification",
                                style: TextStyle(
                                    color: WhatsappColors.white, fontSize: 16),
                              ),
                              Text(
                                "Enabled",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.photo,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Media visibility",
                            style: TextStyle(
                                color: WhatsappColors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Starred messages",
                            style: TextStyle(
                                color: WhatsappColors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Encryption",
                                style: TextStyle(
                                    color: WhatsappColors.white, fontSize: 16),
                              ),
                              Text(
                                "Messages and calls are end-to-end"
                                "\n"
                                "encrypted. Tap to verify.",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Disapperaring messages",
                                style: TextStyle(
                                    color: WhatsappColors.white, fontSize: 16),
                              ),
                              Text(
                                "Off",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline_rounded,
                            color: WhatsappColors.white.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Chat lock",
                            style: TextStyle(
                                color: WhatsappColors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "No groups in common",
                      style: TextStyle(
                          color: WhatsappColors.white.withOpacity(0.5)),
                    ),
                  ),
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: WhatsappColors.tabFocusedColor),
                            child: Icon(
                              Icons.people,
                              color: WhatsappColors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Create group with Mix",
                            style: TextStyle(
                                color: WhatsappColors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: WhatsappColors.borderColor, width: 6))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.block,
                            color: Colors.red[800],
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Block Mix",
                            style:
                                TextStyle(color: Colors.red[800], fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.do_not_touch,
                            color: Colors.red[800],
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "Report Mix",
                            style:
                                TextStyle(color: Colors.red[800], fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
