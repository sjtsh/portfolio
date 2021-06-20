import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

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
                  ClipRRect(
                    borderRadius: MediaQuery.of(context).size.width > 800
                        ? BorderRadius.circular(30):BorderRadius.circular(10),
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
                          border: Border.all(
                            color: Colors.white.withOpacity(0.08),
                          ),
                        ),
                        child: Padding(
                          padding: MediaQuery.of(context).size.width > 800
                              ? const EdgeInsets.all(40.0)
                              : const EdgeInsets.all(10.0),
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
        itemWidth: MediaQuery.of(context).size.width > 800
            ? constraints.maxWidth
            : 300,
        itemHeight: MediaQuery.of(context).size.width > 800
            ? constraints.maxHeight
            : 200,
        layout: SwiperLayout.STACK,
        index: imgList.length,
        onIndexChanged: (int i) {
          _changeIndicator(i);
        },
      );
    });
  }
}
