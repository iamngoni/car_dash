//
//  dash_summary_item
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class DashSummaryItem extends StatelessWidget {
  const DashSummaryItem({
    required this.value,
    required this.unit,
    required this.description,
    super.key,
  });

  final String value;
  final String unit;
  final String description;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: value,
                style: TextStyle(
                  color: DashColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: sy(25),
                ),
                children: [
                  TextSpan(
                    text: ' $unit',
                    style: TextStyle(
                      color: DashColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: sy(12),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: DashColors.activeControlChildColor,
                fontWeight: FontWeight.w400,
                fontSize: sy(12),
              ),
            )
          ],
        );
      },
    );
  }
}
