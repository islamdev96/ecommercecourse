import 'package:ecommercecourse/controller/settings_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imgaeasset.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return ListView(
      children: [
        Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
          Container(height: Get.width / 3, color: AppColor.primaryColor),
          Positioned(
              top: Get.width / 3.9,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: const AssetImage(AppImageAsset.avatar),
                ),
              )),
        ]),
        const SizedBox(height: 100),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                // onTap: () {},
                trailing: Switch(onChanged: (val) {}, value: true),
                title: const Text("Disable Notificatios"),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.orderspending);
                },
                trailing: const Icon(Icons.card_travel),
                title: const Text("Orders"),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.ordersarchive);
                },
                trailing: const Icon(Icons.card_travel),
                title: const Text("Archive"),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(AppRoute.addressview);
                },
                trailing: const Icon(Icons.location_on_outlined),
                title: const Text("Address"),
              ),
              ListTile(
                onTap: () {},
                trailing: const Icon(Icons.help_outline_rounded),
                title: const Text("About us"),
              ),
              ListTile(
                onTap: () {},
                trailing: const Icon(Icons.phone_callback_outlined),
                title: const Text("Contact us"),
              ),
              ListTile(
                onTap: () {
                  controller.logout();
                },
                title: const Text("Logout"),
                trailing: const Icon(Icons.exit_to_app),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
