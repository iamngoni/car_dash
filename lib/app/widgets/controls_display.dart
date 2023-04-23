//
//  controls_display
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import 'dash_control.dart';
import 'dash_icon_bar_control.dart';
import 'dash_summary.dart';

class ControlsDisplay extends StatelessWidget {
  const ControlsDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          padding: EdgeInsets.only(
            top: sy(20),
            left: sx(30),
          ),
          child: Column(
            children: [
              const DashSummary(),
              SizedBox(
                height: sy(20),
              ),
              Expanded(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DashControl<IconData>(
                          icon: CupertinoIcons.bluetooth,
                          text: 'Bluetooth',
                        ),
                        DashControl<IconData>(
                          icon: Icons.radio,
                          text: 'Radio',
                        ),
                        DashControl<IconData>(
                          icon: Icons.ac_unit,
                          text: 'AC',
                          isActive: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: sx(15),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DashControl<String>(
                          icon: 'assets/icons/headlights.png',
                          text: 'Headlights',
                          isActive: true,
                        ),
                        DashControl<String>(
                          icon: 'assets/icons/park-lights.png',
                          text: 'Park Lights',
                        ),
                        DashControl<String>(
                          icon: 'assets/icons/windscreen-wiper.png',
                          text: 'W/Wipers',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: sx(15),
                    ),
                    Row(
                      children: [
                        const DashIconBarControl(
                          icon: CupertinoIcons.volume_up,
                          value: 170,
                        ),
                        SizedBox(
                          width: sx(15),
                        ),
                        const DashIconBarControl(
                          icon: CupertinoIcons.brightness_solid,
                          value: 70,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
