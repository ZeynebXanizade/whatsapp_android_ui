import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_android/colors/colors.dart';
import 'package:whatsapp_android/widgets/whatsapp_tab.dart';

class WhatsAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _WhatsAppBarState createState() => _WhatsAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _WhatsAppBarState extends State<WhatsAppBar> {
  bool _showSearch = false;
  FocusNode? _focusNode;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: AppBar(
        backgroundColor: WhatsappColors.appBarColor,
        leading: _showSearch
            ? IconButton(
                onPressed: () {
                  _showSearch = false;
                  FocusScope.of(context).unfocus();
                },
                icon: const Icon(Icons.chevron_left))
            : null,
        title: _showSearch
            ? TextField(
                autofocus: true,
                focusNode: _focusNode,
                style: const TextStyle(color: WhatsappColors.white),
                decoration: const InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: WhatsappColors.white),
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              )
            : Text(
                "Whatsapp",
                style: TextStyle(color: WhatsappColors.white.withOpacity(0.8)),
              ),
        actions: _showSearch
            ? []
            : [
                IconButton(
                    onPressed: () {
                      _takePicture();
                    },
                    icon: const Icon(Icons.camera_alt_outlined)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _showSearch = true;
                        FocusScope.of(context).requestFocus(_focusNode);
                      });
                    },
                    icon: const Icon(Icons.search_rounded)),
                Theme(
                  data: Theme.of(context).copyWith(
                    popupMenuTheme: const PopupMenuThemeData(
                      color: WhatsappColors.backgroundColor,
                    ),
                    iconTheme: IconThemeData(
                      color: WhatsappColors.white.withOpacity(0.8),
                    ),
                  ),
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Text(
                            "New group",
                            style: TextStyle(
                              color: WhatsappColors.white,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "New broadcast",
                            style: TextStyle(color: WhatsappColors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Linked devices",
                            style: TextStyle(color: WhatsappColors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Starred messages",
                            style: TextStyle(color: WhatsappColors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Settings",
                            style: TextStyle(color: WhatsappColors.white),
                          ),
                        ),
                      ];
                    },
                  ),
                ),
              ],
        bottom: TabBar(
          indicatorColor: WhatsappColors.tabFocusedColor,
          indicatorWeight: 3.5,
          labelColor: WhatsappColors.tabFocusedColor,
          unselectedLabelColor: WhatsappColors.white.withOpacity(0.5),
          tabs: const [
            Icon(Icons.groups),
            WhatsappTabs(
              text: 'Chats',
            ),
            WhatsappTabs(
              text: 'Status',
            ),
            WhatsappTabs(
              text: 'Calls',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _takePicture() async {
    final XFile? picture = await _picker.pickImage(source: ImageSource.camera);
  }
}
