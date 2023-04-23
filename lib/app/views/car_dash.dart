//
//  car_dash
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';
import '../widgets/dash_controls_area.dart';
import '../widgets/dash_map.dart';
import '../widgets/dash_navigation_bar.dart';

class CarDash extends StatelessWidget {
  const CarDash({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(10),
              vertical: sy(10),
            ),
            decoration: const BoxDecoration(
              color: DashColors.backgroundColor,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                        child: DashControlsArea(),
                      ),
                      SizedBox(
                        width: sx(7),
                      ),
                      const DashMap(),
                    ],
                  ),
                ),
                SizedBox(
                  height: sy(15),
                ),
                const DashNavigationBar(),
              ],
            ),
          ),
        );
      },
    );
  }
}
