import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';

class WhatsappCalls extends StatefulWidget {
  const WhatsappCalls({super.key});

  @override
  State<WhatsappCalls> createState() => _WhatsappCallsState();
}

class _WhatsappCallsState extends State<WhatsappCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhatsappColors.backgroundColor,
      body: Container(
        height: 60,
        color: WhatsappColors.backgroundColor,
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: WhatsappColors.backgroundColor,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: FractionalOffset.center,
                          children: [
                            Container(
                              width: 58,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: WhatsappColors.tabFocusedColor,
                                  shape: BoxShape.circle),
                            ),
                            ClipRRect(
                              // borderRadius: BorderRadius.circular(60),
                              child: Icon(
                                Icons.link,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create call link",
                                style: TextStyle(
                                    color: WhatsappColors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Share a link for your WhatsApp call",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ////////////////////////////////////////////////////////////////////////Recent
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                        color: WhatsappColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                  //////////////////////////////////////////////////////////////////////////////
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: WhatsappColors.backgroundColor,
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    "assets/images/img1.jpg",
                                    width: 58,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "Mix",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Yesterday 2:19 pm",
                                            style: TextStyle(
                                              color: WhatsappColors.white
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.videocam_rounded,
                                      color: WhatsappColors.tabFocusedColor,
                                    )
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    "assets/images/img2.jpeg",
                                    width: 58,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "Alexsa",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Yesterday 2:19 pm",
                                            style: TextStyle(
                                              color: WhatsappColors.white
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: WhatsappColors.tabFocusedColor,
                                    )
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    "assets/images/img3.jpg",
                                    width: 58,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "Baby",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Yesterday 2:19 pm",
                                            style: TextStyle(
                                              color: WhatsappColors.white
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: WhatsappColors.tabFocusedColor,
                                    )
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    "assets/images/img6.jpg",
                                    width: 58,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "Alex",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Yesterday 2:19 pm",
                                            style: TextStyle(
                                              color: WhatsappColors.white
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: WhatsappColors.tabFocusedColor,
                                    )
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    "assets/images/img2.jpeg",
                                    width: 58,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              "Alexsa",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Yesterday 2:19 pm",
                                            style: TextStyle(
                                              color: WhatsappColors.white
                                                  .withOpacity(0.5),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 30),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.videocam_rounded,
                                      color: WhatsappColors.tabFocusedColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15)),
        onPressed: () {},
        child: Icon(Icons.call , color: Colors.black,),
        backgroundColor: WhatsappColors.tabFocusedColor,
      ),
    );
  }
}
