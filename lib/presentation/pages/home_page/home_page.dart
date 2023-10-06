import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_page_desktop/home_page_desktop.dart';
import 'home_page_mobile/home_page_mobile.dart';
import 'home_page_tablet/home_page_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const HomePageDesktop();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const HomePageTablet();
      }
      return const HomePageMobile();
    });
  }
}
