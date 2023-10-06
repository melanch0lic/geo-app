import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_desktop/tabs_page_desktop.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_mobile/tabs_page_mobile.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_tablet/tabs_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPage());

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const TabsPageDesktop();
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const TabsPageTablet();
      }
      return const TabsPageMobile();
    });
  }
}
