//
//  dash_map
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:latlong2/latlong.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class DashMap extends StatelessWidget {
  const DashMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: context.height,
          width: context.width * 0.33,
          decoration: BoxDecoration(
            border: Border.all(
              color: DashColors.inactiveBorderColor,
              width: sy(2),
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
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                  ),
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(-17.834701, 31.001470),
                      zoom: 10,
                      maxZoom: 22,
                      interactiveFlags: InteractiveFlag.drag |
                          InteractiveFlag.flingAnimation |
                          InteractiveFlag.pinchMove |
                          InteractiveFlag.pinchZoom |
                          InteractiveFlag.doubleTapZoom,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: sy(60),
                width: context.width,
                padding: EdgeInsets.symmetric(
                  horizontal: sx(10),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.arrow_turn_up_right,
                          color: DashColors.white,
                        ),
                        SizedBox(
                          width: sx(5),
                        ),
                        Text(
                          'Turn Right',
                          style: TextStyle(
                            color: DashColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: sy(12),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '550m',
                      style: TextStyle(
                        color: DashColors.activeControlChildColor,
                        fontWeight: FontWeight.w500,
                        fontSize: sy(12),
                      ),
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
