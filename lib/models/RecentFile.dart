import 'package:get/get.dart';

import '../language/all_string.dart';

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title:  AllStringApp.xd_file,
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: AllStringApp.figma_file,
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: AllStringApp.document,
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: AllStringApp.sound_file,
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: AllStringApp.media_file,
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: AllStringApp.sales_pDF,
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: AllStringApp.excel_file,
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
