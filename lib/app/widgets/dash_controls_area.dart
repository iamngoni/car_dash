//
//  dash_controls_area
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:car_dash/app/widgets/player_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';
import 'car_area.dart';
import 'controls_display.dart';

class DashControlsArea extends StatelessWidget {
  const DashControlsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: context.height,
          width: context.width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                DashColors.dashBackgroundColor1,
                DashColors.dashBackgroundColor2,
              ],
            ),
            borderRadius: BorderRadius.circular(7),
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
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Expanded(
                      child: ControlsDisplay(),
                    ),
                    SizedBox(
                      width: sx(20),
                    ),
                    const CarArea(),
                    SizedBox(
                      width: sx(10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sy(20),
              ),
              const PlayerArea(),
            ],
          ),
        );
      },
    );
  }
}
