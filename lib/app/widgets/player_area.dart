//
//  player_area
//  car_dash
//
//  Created by Ngonidzashe Mangudya on 23/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../configs/colors.dart';

class PlayerArea extends StatelessWidget {
  const PlayerArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: sy(90),
          width: context.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: sy(5),
                  ),
                  decoration: const BoxDecoration(
                    color: DashColors.mediaPlayerBackgroundColor,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: sx(7),
                      ),
                      Container(
                        height: sy(62),
                        width: sy(62),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/music.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sx(10),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'King Kunta',
                              style: TextStyle(
                                color: DashColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: sy(14),
                              ),
                            ),
                            Text(
                              'Kendrick Lamar - To Pimp a Butterfly',
                              style: TextStyle(
                                color: DashColors.activeControlChildColor,
                                fontWeight: FontWeight.w400,
                                fontSize: sy(12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.backward_end_fill,
                            color: DashColors.white,
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          Container(
                            height: sy(50),
                            width: sy(50),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: DashColors.white,
                              shape: BoxShape.circle,
                            ),
                            child: ImageIcon(
                              const AssetImage('assets/icons/play.png'),
                              color: DashColors.backgroundColor,
                              size: sy(30),
                            ),
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          const Icon(
                            CupertinoIcons.forward_end_fill,
                            color: DashColors.white,
                          ),
                          SizedBox(
                            width: sx(20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              LinearProgressIndicator(
                value: 0.45,
                valueColor: const AlwaysStoppedAnimation(
                  DashColors.mediaDurationBarColor2,
                ),
                backgroundColor: DashColors.mediaDurationBarColor1,
                minHeight: sy(5),
              ),
            ],
          ),
        );
      },
    );
  }
}
