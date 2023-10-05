import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_bloc.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                minRadius: 100,
                backgroundImage:
                    NetworkImage('https://i.pinimg.com/564x/80/98/fa/8098fa73e3c4f917c1f052a32630f505.jpg'),
              ),
            ),
            const SizedBox(height: 32),
            // DrawerListTile(
            //     title: 'Все объекты', press: () => controller.jumpToPage(0), icon: const Icon(Icons.folder_special)),
            DrawerListTile(title: 'Музеи', press: () {}, icon: const Icon(Icons.museum_outlined)),
            DrawerListTile(title: 'Здания', press: () {}, icon: const Icon(Icons.build_outlined)),
            DrawerListTile(title: 'Памятники', press: () {}, icon: const Icon(Icons.memory_outlined)),
            DrawerListTile(title: 'Личности', press: () {}, icon: const Icon(Icons.person_2_outlined)),
            DrawerListTile(title: 'Места', press: () {}, icon: const Icon(Icons.place_outlined)),
            DrawerListTile(title: 'Афиша', press: () {}, icon: const Icon(Icons.local_movies)),
            DrawerListTile(title: 'Реклама', press: () {}, icon: const Icon(Icons.monochrome_photos)),
            DrawerListTile(title: 'История', press: () {}, icon: const Icon(Icons.account_balance)),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 32, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<AppBloc>().add(const AppLogoutRequested());
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(width: 2, color: Color.fromRGBO(255, 88, 11, 1)),
                        backgroundColor: const Color.fromRGBO(242, 242, 247, 1),
                        foregroundColor: const Color.fromRGBO(255, 108, 11, 0.9),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        elevation: 0,
                      ),
                      child: Center(
                          child: Text(
                        'Выйти',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600, color: const Color.fromRGBO(255, 88, 11, 1)),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
