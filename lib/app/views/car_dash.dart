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

class CarDash extends StatelessWidget {
  const CarDash({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    child: ImageIcon(
                      AssetImage('assets/icons/home.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
