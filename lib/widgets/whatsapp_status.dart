import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_android/colors/colors.dart';

class WhatsappStatus extends StatelessWidget {
  WhatsappStatus({
    super.key,
  });
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: WhatsappColors.backgroundColor,
      body: Container(
        width: width,
        height: 75,
        color: WhatsappColors.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(color: WhatsappColors.white, fontSize: 20),
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                        popupMenuTheme: PopupMenuThemeData(
                            color: WhatsappColors.backgroundColor),
                        iconTheme: IconThemeData(
                            color: WhatsappColors.white.withOpacity(0.5))),
                    child: PopupMenuButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(20)),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: Text(
                              "Muted updates",
                              style: TextStyle(color: WhatsappColors.white),
                            )),
                            PopupMenuItem(
                                child: Text(
                              "Status Privacy",
                              style: TextStyle(color: WhatsappColors.white),
                            ))
                          ];
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/img6.jpg",
                                width: 58,
                                height: 58,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: WhatsappColors.tabFocusedColor,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: WhatsappColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Status",
                                style: TextStyle(
                                    color: WhatsappColors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Tap to add status update",
                                style: TextStyle(
                                    color:
                                        WhatsappColors.white.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Recent updates",
                  style:
                      TextStyle(color: WhatsappColors.white.withOpacity(0.5)),
                ),
              ),
              Column(
                children: [
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.asset(
                                        'assets/images/img3.jpg',
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Baby",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "9:11 am",
                                        style: TextStyle(
                                          color: WhatsappColors.white
                                              .withOpacity(0.5),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.asset(
                                        'assets/images/img6.jpg',
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Alex",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "9:11 am",
                                        style: TextStyle(
                                          color: WhatsappColors.white
                                              .withOpacity(0.5),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.asset(
                                        'assets/images/img1.jpg',
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mix",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "Yesterday",
                                        style: TextStyle(
                                          color: WhatsappColors.white
                                              .withOpacity(0.5),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: WhatsappColors.backgroundColor,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: Image.asset(
                                        'assets/images/img2.jpeg',
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Alexsa",
                                        style: TextStyle(
                                            color: WhatsappColors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "10:11 am",
                                        style: TextStyle(
                                          color: WhatsappColors.white
                                              .withOpacity(0.5),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            onPressed: () {
              _takeGalerry();
            },
            child: Icon(
              Icons.edit,
              color: WhatsappColors.white,
            ),
            backgroundColor: Colors.grey[800],
          ),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            onPressed: () {
              _takePicture();
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            backgroundColor: WhatsappColors.tabFocusedColor,
          ),
        ],
      ),
    );
  }

  Future<void> _takePicture() async {
    final XFile? picture = await _picker.pickImage(source: ImageSource.camera);
  }
  Future<void> _takeGalerry() async{
    final XFile? galery = await _picker.pickImage(source: ImageSource.gallery);
  }
}
