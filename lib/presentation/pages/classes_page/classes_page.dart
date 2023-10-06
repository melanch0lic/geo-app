import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'classes_page_desktop/classes_page_desktop.dart';
import 'classes_page_mobile/classes_page_mobile.dart';
import 'classes_page_tablet/classes_page_tablet.dart';

class ClassesPage extends StatelessWidget {
  const ClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const ClassesPageDesktop();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const ClassesPageTablet();
      }
      return const ClassesPageMobile();
    });
  }
}
