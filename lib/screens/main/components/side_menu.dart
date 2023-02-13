import 'package:admin/language/all_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../language/controller/app_language.dart';

class SideMenu extends StatelessWidget {
   SideMenu({
    Key? key,
  }) : super(key: key);
  final AppLanguage controller = Get.put(AppLanguage());
  @override
  Widget build(BuildContext context) {
    final isRtl = Localizations.localeOf(context).languageCode=='ar';
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).splashColor
            ),
            child: Image.asset("assets/images/fd_logo.png"),
          ),
          DrawerListTile(
            title: AllStringApp.dashboard.tr,
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: AllStringApp.transaction.tr,
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: AllStringApp.task.tr,
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title:AllStringApp.documents.tr,
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: AllStringApp.store.tr,
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title:AllStringApp.notification.tr,
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: AllStringApp.profile.tr,
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: AllStringApp.settings.tr,
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          !isRtl? DrawerListTile(
            title: AllStringApp.language.tr,
            svgSrc: "assets/icons/menu_lang.svg",
            press: () {
              controller.changeLanguage(arabic);

              Get.updateLocale(Locale(controller.appLocale.value));
            },
          ):DrawerListTile(
            title: AllStringApp.language.tr,
            svgSrc: "assets/icons/menu_lang.svg",
            press: () {

              controller.changeLanguage(english);

              Get.updateLocale(Locale(controller.appLocale.value));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Theme.of(context).indicatorColor,
        height: 16,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
