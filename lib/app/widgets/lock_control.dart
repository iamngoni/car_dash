//
//  lock_control
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class LockControl extends StatelessWidget {
  const LockControl({
    this.locked = false,
    this.showBackground = false,
    super.key,
  });

  final bool locked;
  final bool showBackground;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(30),
          width: sy(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: showBackground
                ? DashColors.backgroundColor
                : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(
            !locked ? CupertinoIcons.lock_fill : Icons.lock_open_outlined,
            color: locked
                ? DashColors.lockedDoorColor
                : DashColors.unlockedDoorColor,
            size: sy(15),
          ),
        );
      },
    );
  }
}
