import 'package:device_mart/domain/core/colors/colors.dart';
import 'package:device_mart/domain/core/constants/const.dart';
import 'package:device_mart/application/presentation/settings/widgets/logout_dailogue.dart';
import 'package:device_mart/application/presentation/widgets/custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CustomAppbar(title: 'Screen Settings')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kHeightTen,
            InkWell(
              child: ListTile(
                leading: const Icon(Icons.policy_outlined),
                title: const Text(
                  'Privacy And Policies',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () => Navigator.of(context).pushNamed('/privacy'),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: const Icon(Icons.info),
                title: const Text(
                  'About Us',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () => Navigator.of(context).pushNamed('/about'),
              ),
            ),
            InkWell(
              child: ListTile(
                  leading: const Icon(
                    Iconsax.logout,
                    color: kRed,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 20, color: kRed),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: kRed,
                  ),
                  onTap: () => logoutDialoge(context)),
            ),
            const SizedBox(
              height: 430,
            ),
            const Text(
              'Version 1.0',
              style: TextStyle(color: Color.fromARGB(255, 162, 159, 159)),
            )
          ],
        ),
      ),
    );
  }
}
