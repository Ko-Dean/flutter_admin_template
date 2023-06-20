import 'package:butler_admin/common/constants.dart';
import 'package:butler_admin/widgets/side_menu_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key});

  get i => null;

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(SideMenuViewmodel());

    return Drawer(
      width: 250,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Style.primaryColor,
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 100,
                ),
                const Text(
                  'KoDean님 환영합니다.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              for (var data in viewModel.list)
                data.children!.isEmpty
                    ? ListTile(
                        leading: data.icon,
                        title: Text(data.title),
                        onTap: () {},
                      )
                    : ExpansionTile(
                        leading: data.icon,
                        title: Text(data.title),
                        children: [
                          if (data.children != null)
                            for (var item in data.children!)
                              ListTile(
                                leading: item.icon,
                                title: Text(item.title),
                                onTap: () {},
                              ),
                        ],
                      ),
            ],
          )
        ],
      ),
    );
  }
}
