//
//  dash_icon_bar_control
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';
import 'dash_bar_control.dart';

class DashIconBarControl extends StatelessWidget {
  const DashIconBarControl({
    required this.icon,
    required this.value,
    super.key,
  });

  final IconData icon;
  final double value;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          children: [
            Expanded(
              child: DashBarControl(
                value: value,
              ),
            ),
            SizedBox(
              height: sy(10),
            ),
            Icon(
              icon,
              color: DashColors.activeControlChildColor,
              size: sy(15),
            ),
          ],
        );
      },
    );
  }
}
