import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarStatus extends StatelessWidget {
  CarStatus({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 145.w, 29.h),
          size: Size(145.w, 58.h),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          fixedHeight: true,
          child: Text(
            'Car Status:',
            style: TextStyle(
              fontFamily: 'Roboto Mono',
              fontSize: 22.sp,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(13.0, 29.0, 119.w, 29.h),
          size: Size(145.w, 58.h),
          pinLeft: true,
          pinRight: true,
          pinBottom: true,
          fixedHeight: true,
          child: Text(
            'Setup Car',
            style: TextStyle(
              fontFamily: 'Roboto Mono',
              fontSize: 22.sp,
              color: const Color(0x66000000),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
