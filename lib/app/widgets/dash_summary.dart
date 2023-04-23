//
//  dash_summary
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';
import 'dash_summary_item.dart';

class DashSummary extends StatelessWidget {
  const DashSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, widht, sy, sx) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const DashSummaryItem(
              value: '216',
              unit: 'km',
              description: 'Total Distance',
            ),
            SizedBox(
              width: sx(10),
            ),
            Container(
              height: sy(50),
              width: sx(0.7),
              color: DashColors.inactiveControlColor,
            ),
            SizedBox(
              width: sx(10),
            ),
            const DashSummaryItem(
              value: '82',
              unit: 'km/h',
              description: 'Average Speed',
            ),
            SizedBox(
              width: sx(10),
            ),
            Container(
              height: sy(50),
              width: sx(0.7),
              color: DashColors.inactiveControlColor,
            ),
            SizedBox(
              width: sx(10),
            ),
            const DashSummaryItem(
              value: '6.2',
              unit: 'litre',
              description: 'Fuel Consumption',
            ),
          ],
        );
      },
    );
  }
}
