//
//  navigation_bar
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import 'dash_navigation_item.dart';

class DashNavigationBar extends StatelessWidget {
  const DashNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        DashNavigationItem(
          icon: 'assets/icons/settings.png',
        ),
        DashNavigationItem(
          icon: 'assets/icons/home.png',
        ),
        DashNavigationItem(
          icon: 'assets/icons/home.png',
          isActive: true,
        ),
        DashNavigationItem(
          icon: 'assets/icons/music.png',
        ),
        DashNavigationItem(
          icon: 'assets/icons/send.png',
          rotate: true,
        ),
      ],
    );
  }
}
