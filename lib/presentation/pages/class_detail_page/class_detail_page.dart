import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/class_detail_page/class_detail_page_desktop/class_detail_page_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'class_detail_page_mobile/class_detail_page_mobile.dart';
import 'class_detail_tablet/class_detail_page_tablet.dart';

class ClassDetailPage extends StatelessWidget {
  const ClassDetailPage({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return ClassDetailPageDesktop(id: id);
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return ClassDetailPageTablet(id: id);
      }
      return ClassDetailPageMobile(id: id);
    });
  }
}
