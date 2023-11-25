import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';

class comChild extends StatefulWidget {
  const comChild({super.key});

  @override
  State<comChild> createState() => _comChildState();
}

class _comChildState extends State<comChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: WhatsappColors.backgroundColor,
      child: Wrap(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: WhatsappColors.backgroundColor,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.exit_to_app_sharp,
                  color: WhatsappColors.white.withOpacity(0.5),
                )),
          ),
        ),
        Center(
          child: Column(
            children: [
              Image.asset("assets/images/WhatsApp-communitie.webp"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Create a new community',
                  style: TextStyle(
                      color: WhatsappColors.white,
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bring together a neighbourhood,school or\n more.Create topic-based groups for members,\n and easily send them admin announcements.',
                  style: TextStyle(
                      color: WhatsappColors.white.withOpacity(0.5),
                      decoration: TextDecoration.none,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      fontFamily: AutofillHints.addressCity),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("See example communities"),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_right))
                    ],
                  )),
              SizedBox(
                height: 180,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 350),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          WhatsappColors.tabFocusedColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  onPressed: () {},
                  child: Text(
                    "Get started",
                    style: TextStyle(color: WhatsappColors.backgroundColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
