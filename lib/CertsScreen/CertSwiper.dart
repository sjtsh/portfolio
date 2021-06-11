import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

class CertSwiper extends StatelessWidget {
  final List imgList;
  final Function _changeIndicator;

  CertSwiper(this.imgList, this._changeIndicator);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.2),
                              Colors.white.withOpacity(0.05),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.08),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset(
                            imgList[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          );
        },
        itemCount: imgList.length,
        itemWidth: constraints.maxWidth,
        itemHeight: constraints.maxHeight,
        layout: SwiperLayout.STACK,
        index: imgList.length,
        onIndexChanged: (int i) {
          _changeIndicator(i);
        },
      );
    });
  }
}
