//
//  car_area
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import 'lock_control.dart';

class CarArea extends StatelessWidget {
  const CarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return SizedBox(
          height: context.height,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              RotatedBox(
                quarterTurns: 2,
                child: Image(
                  image: const AssetImage('assets/images/car.png'),
                  height: context.height * 0.7,
                ),
              ),
              Positioned(
                top: sy(150),
                left: sx(-5),
                child: const LockControl(
                  locked: true,
                ),
              ),
              Positioned(
                top: sy(150),
                right: 0,
                child: const LockControl(),
              ),
              Positioned(
                top: sy(220),
                left: sx(-5),
                child: const LockControl(),
              ),
              Positioned(
                top: sy(220),
                right: 0,
                child: const LockControl(),
              ),
              Positioned(
                top: sy(300),
                right: 0,
                left: 0,
                child: const LockControl(
                  showBackground: true,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
