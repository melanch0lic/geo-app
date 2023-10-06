import 'package:flutter/material.dart';
import 'package:geo_app/presentation/pages/tabs_page/tabs_page_mobile/components/drawer_list_tile_mobile.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        width: 240,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 32),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  minRadius: 50,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
              SizedBox(height: 12),
              Text('Заур Кудзаев',
                  style: TextStyle(color: Color.fromRGBO(26, 29, 31, 1), fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Ученик', style: TextStyle(color: Color.fromRGBO(107, 78, 255, 1), fontSize: 16)),
              SizedBox(height: 24),
              DrawerListTileMobile(title: 'Главная', index: 0, icon: Icon(Icons.home)),
              DrawerListTileMobile(title: 'Мои классы', index: 1, icon: Icon(Icons.play_lesson)),
              DrawerListTileMobile(title: 'Темы', index: 2, icon: Icon(Icons.topic)),
            ],
          ),
        ));
  }
}
