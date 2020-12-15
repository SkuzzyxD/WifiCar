import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adobe_xd/page_link.dart';
import './Accelerometer.dart';
import './SetupSettings.dart';
import './TouchControl.dart';
import './Voice.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Set App Dimensions
    final double width = 412; // Width of App
    final double height = 870; // Height of App
    // Set ScreenUtil to auto scale size
    ScreenUtil.init(context,
        designSize: Size(width, height), allowFontScaling: true);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 412.w, 110.h),
            size: Size(412.w, 870.h),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'top-nav' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 412.w, 110.h),
                  size: Size(412.w, 110.h),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(168.0, 60.3, 77.0.w, 24.0.h),
                  size: Size(412.w, 110.h),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.sp,
                        color: const Color(0xff000000),
                        height: 1.5.h,
                      ),
                      children: [
                        TextSpan(
                          text: 'Wifi',
                        ),
                        TextSpan(
                          text: 'Car',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(23.0, 221.0, 367.0.w, 428.0.h),
            size: Size(412.w, 870.h),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Options' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 318.0, 367.0.w, 110.0.h),
                  size: Size(367.w, 428.h),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'VoiceOption' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => Voice(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 367.0.w, 110.0.h),
                          size: Size(367.w, 110.h),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.h, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.0, 5.0, 100.0.w, 100.0.h),
                          size: Size(367.w, 110.h),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'voice' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    const AssetImage('assets/images/Mic.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(200.0, 37.0, 80.0.w, 37.0.h),
                          size: Size(367.w, 110.h),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Voice',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.sp,
                              color: const Color(0xff000000),
                              height: 1.h,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 158.0, 367.0.w, 110.0.h),
                  size: Size(367.w, 428.h),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'AccelerometerOption' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => Accelerometer(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 367.0.w, 110.0.h),
                          size: Size(367.w, 110.h),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.h, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 5.5, 100.0.w, 100.0.h),
                          size: Size(367.w, 110.h),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'accelerometre' (shape)
                              Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/Accelerometer.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(129.0, 37.0, 222.0.w, 37.0.h),
                          size: Size(367.w, 110.h),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Accelerometer',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.sp,
                              color: const Color(0xff000000),
                              height: 1.h,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 367.0.w, 110.0.h),
                  size: Size(367.w, 428.h),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'ControllerOption' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => TouchControl(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 367.0.w, 110.0.h),
                          size: Size(367.w, 110.h),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: 1.h, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(10.0, 5.0, 100.0.w, 100.0.h),
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
                                image: const AssetImage(
                                    'assets/images/Controller.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(165.0, 37.0, 148.0.w, 37.0.h),
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
                              height: 1.h,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(73.0, 723.0, 267.0.w, 67.0.h),
            size: Size(412.w, 870.h),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'SetupIP' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SetupSettings(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 267.0.w, 67.0.h),
                    size: Size(267.w, 67.h),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: const Color(0xffff0000),
                        border: Border.all(
                            width: 1.h, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(58.0, 14.0, 152.0.w, 37.0.h),
                    size: Size(267.w, 67.h),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'Setup Car',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.sp,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        height: 1.h,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
