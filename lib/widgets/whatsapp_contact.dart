import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';


class WhatsappContact extends StatefulWidget {
  final String imageUrl, user, briefChat, date ;
  final VoidCallback onPressed;

  const WhatsappContact({
    super.key,
    required this.briefChat,
    required this.date,
    required this.imageUrl,
    required this.user,
    required this.onPressed,

    
  });

  @override
  State<WhatsappContact> createState() => _WhatsappContactState();
}

class _WhatsappContactState extends State<WhatsappContact> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 75,
      width: width,
      color: WhatsappColors.backgroundColor,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            widget.onPressed();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    widget.imageUrl,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              widget.user,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            widget.briefChat,
                            style: TextStyle(
                              color: WhatsappColors.white.withOpacity(0.5),
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
                    Text(
                      widget.date,
                      style: TextStyle(
                        color: WhatsappColors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

    );

  }
}
