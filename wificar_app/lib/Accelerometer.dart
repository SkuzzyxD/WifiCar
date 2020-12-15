import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './CarStatus.dart';
import './NavigationBar.dart';
import './ControlArrow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accelerometer extends StatelessWidget {
  Accelerometer({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(134.0, 145.0, 145.w, 58.h),
            size: Size(412.w, 870.h),
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Car Status' (component)
                CarStatus(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 412.w, 84.h),
            size: Size(412.w, 870.h),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Navigation Bar' (component)
                NavigationBar(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(48.0, 264.0, 317.w, 307.h),
            size: Size(412.w, 870.h),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Control Arrow' (component)
                ControlArrow(),
          ),
        ],
      ),
    );
  }
}
