import 'package:flutter/material.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;

// ignore: camel_case_types
class textFaild extends StatefulWidget {
  const textFaild({super.key});

  @override
  State<textFaild> createState() => _textFaildState();
}

// ignore: camel_case_types
class _textFaildState extends State<textFaild> {
  bool showEmoji = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  style: TextStyle(color: WhatsappColors.white),
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Message ',
                    hintStyle: TextStyle(color: WhatsappColors.white),
                    filled: true,
                    fillColor: WhatsappColors.appBarColor,
                    contentPadding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      top: 10,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60.0)),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showEmoji = !showEmoji;
                        });
                      },
                      icon: const Icon(
                        Icons.emoji_emotions,
                        color: WhatsappColors.white,
                      ),
                    ),
                    suffixIcon: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file,
                              color: WhatsappColors.white,
                            )),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            color: WhatsappColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Material(
              color: WhatsappColors.tabFocusedColor,
              borderRadius: BorderRadius.circular(60),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: WhatsappColors.white,
                  )),
            ),
          ],
        ),
        Offstage(
          offstage: !showEmoji,
          child: SizedBox(
              height: 250,
              child: EmojiPicker(
                textEditingController: _controller,
                onBackspacePressed: _onBackspacePressed,
                config: Config(
                  columns: 7,
                  // Issue: https://github.com/flutter/flutter/issues/28894
                  emojiSizeMax: 32 *
                      (foundation.defaultTargetPlatform == TargetPlatform.iOS
                          ? 1.30
                          : 1.0),
                  verticalSpacing: 0,
                  horizontalSpacing: 0,
                  gridPadding: EdgeInsets.zero,
                  initCategory: Category.RECENT,
                  bgColor: const Color(0xFFF2F2F2),
                  indicatorColor: Colors.blue,
                  iconColor: Colors.grey,
                  iconColorSelected: Colors.blue,
                  backspaceColor: Colors.blue,
                  skinToneDialogBgColor: Colors.white,
                  skinToneIndicatorColor: Colors.grey,
                  enableSkinTones: true,
                  recentTabBehavior: RecentTabBehavior.RECENT,
                  recentsLimit: 28,
                  replaceEmojiOnLimitExceed: false,
                  noRecents: const Text(
                    'No Recents',
                    style: TextStyle(fontSize: 20, color: Colors.black26),
                    textAlign: TextAlign.center,
                  ),
                  loadingIndicator: const SizedBox.shrink(),
                  tabIndicatorAnimDuration: kTabScrollDuration,
                  categoryIcons: const CategoryIcons(),
                  buttonMode: ButtonMode.MATERIAL,
                  checkPlatformCompatibility: true,
                ),
              )),
        ),
      ],
    );
  }
}
