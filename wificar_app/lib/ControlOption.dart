import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ControlOption extends StatelessWidget {
  ControlOption({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 367.w, 110.h),
          size: Size(367.w, 110.h),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.w, color: const Color(0xff707070)),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(10.0, 5.0, 100.w, 100.h),
          size: Size(367.w, 110.h),
          pinLeft: true,
          pinTop: true,
          pinBottom: true,
          fixedWidth: true,
          child:
              // Adobe XD layer: 'controller' (shape)
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/Controller.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(165.0, 37.0, 148.w, 37.h),
          size: Size(367.w, 110.h),
          pinRight: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Controller',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 30.sp,
              color: const Color(0xff000000),
              height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
