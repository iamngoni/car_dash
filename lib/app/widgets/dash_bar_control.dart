//
//  dash_bar_control
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class DashBarControl extends StatelessWidget {
  const DashBarControl({
    required this.value,
    super.key,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Stack(
          children: [
            Container(
              width: sx(20),
              decoration: BoxDecoration(
                color: DashColors.inactiveControlColor,
                border: Border.all(
                  color: DashColors.inactiveBorderColor,
                  width: sy(0.5),
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
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: sy(value),
                width: sx(20),
                decoration: BoxDecoration(
                  color: DashColors.activeControlChildColor.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
