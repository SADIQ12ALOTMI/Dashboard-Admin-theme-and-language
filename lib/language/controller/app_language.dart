
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



import '../../constants.dart';
import '../utils/local_storage/local_storgae.dart';


class AppLanguage extends GetxController {
  var appLocale=''.obs ;
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    LocalStorage localStorage = LocalStorage();
    appLocale.value = await localStorage.languageSelected
        == null
        ? Get.deviceLocale!.languageCode
        : await localStorage.languageSelected;

    //update();

    Get.updateLocale(Locale(appLocale.value));

  }

  void changeLanguage(String type) async {
    LocalStorage localStorage = LocalStorage();
    GetStorage().write(language, type==null?Get.deviceLocale!.languageCode:type );
    if (appLocale.value == type) {
      return;
    }
    if (type == arabic) {
      appLocale.value = arabic;

      localStorage.saveLanguageToDisk(arabic);
    } else {
      appLocale.value = english;

      localStorage.saveLanguageToDisk(english);
    }
   // update();
  }

}

