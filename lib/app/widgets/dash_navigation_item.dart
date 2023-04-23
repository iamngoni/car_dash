//
//  navigation_item
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class DashNavigationItem extends StatelessWidget {
  const DashNavigationItem({
    required this.icon,
    this.isActive = false,
    this.rotate = false,
    super.key,
  });

  final String icon;
  final bool isActive;
  final bool rotate;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: sx(40),
            vertical: sy(15),
          ),
          decoration: BoxDecoration(
            color: isActive
                ? DashColors.dashBackgroundColor1
                : DashColors.inactiveControlColor,
            border: Border.all(
              color: isActive
                  ? DashColors.activeBorderColor
                  : DashColors.inactiveBorderColor,
              width: sy(2),
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: DashColors.white.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0.5, 0.5),
              ),
              BoxShadow(
                color: DashColors.white.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(-0.5, -0.5),
              ),
            ],
          ),
          child: rotate
              ? Transform.rotate(
                  angle: -7,
                  child: ImageIcon(
                    AssetImage(icon),
                    color: isActive
                        ? DashColors.activeControlChildColor
                        : DashColors.inactiveControlChildColor,
                    size: sy(25),
                  ),
                )
              : ImageIcon(
                  AssetImage(icon),
                  color: isActive
                      ? DashColors.activeControlChildColor
                      : DashColors.inactiveControlChildColor,
                  size: sy(25),
                ),
        );
      },
    );
  }
}
