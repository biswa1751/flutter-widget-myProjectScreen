import 'package:flutter/material.dart';

import '../routes/nav_route.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accountName = 'Adam';
    const email = 'adam@somemail.com';
    const fullname = 'S. Adam';

    return ListView(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              NavRoutes.myprojects,
              // NavRoutes.profile,
            );
          },
          child: UserAccountsDrawerHeader(
            accountName: const Text(accountName),
            accountEmail: const Text(email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                fullname[0].toUpperCase(),
                style: const TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
        ),
        ListTile(
          title: const Text("My Projects"),
          leading: const Icon(Icons.collections),
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              NavRoutes.myprojects,
            );
          },
        ),
        ListTile(
          title: const Text("About Us"),
          leading: const Icon(Icons.contact_mail),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushReplacementNamed(
              context,
              NavRoutes.myprojects,
              // NavRoutes.about,
            );
          },
        ),
      ],
    );
  }
}
