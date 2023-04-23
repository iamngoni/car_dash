//
//  dash_control
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class DashControl<T> extends StatelessWidget {
  const DashControl({
    required this.icon,
    required this.text,
    this.isActive = false,
    super.key,
  });

  final T icon;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(70),
          width: sy(70),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon is IconData)
                Icon(
                  icon as IconData,
                  color: isActive
                      ? DashColors.activeControlChildColor
                      : DashColors.inactiveControlChildColor,
                  size: sy(25),
                )
              else
                ImageIcon(
                  AssetImage(icon as String),
                  color: isActive
                      ? DashColors.activeControlChildColor
                      : DashColors.inactiveControlChildColor,
                  size: sy(25),
                ),
              SizedBox(
                height: sy(5),
              ),
              Text(
                text,
                style: TextStyle(
                  color: isActive
                      ? DashColors.activeControlChildColor
                      : DashColors.inactiveControlChildColor,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(10),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
