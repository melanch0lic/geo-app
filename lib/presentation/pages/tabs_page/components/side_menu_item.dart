import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({super.key, required this.title, required this.press, required this.icon});

  final String title;
  final VoidCallback press;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: press,
      leading: icon,
      title: Text(title,
          style: theme.textTheme.titleSmall!
              .copyWith(fontWeight: FontWeight.w500, color: const Color.fromRGBO(26, 26, 26, 1), fontSize: 20)),
    );
  }
}
