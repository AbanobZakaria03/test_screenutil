import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        // splitScreenMode: false,
        // splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            // useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: const HomePage3(),
          );
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(1.sh);
    print(812.h);
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          width: 300.w,
          height: 700.h,
          // height: 1.sh,
          // height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) => Center(
              child: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Text(
                  'test${index + 1}',
                  style: TextStyle(fontSize: 50.sp, color: Colors.white),
                ),
              ),
            ),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(1.sh);
    print(812.h);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 300.h,
              width: 260.w,
              color: Colors.red,
            ),
            SizedBox(
              height: 43.h,
            ),
            Row(
              children: [
                Container(
                  height: 145.w,
                  width: 145.w,
                  color: Colors.red,
                ),
                const Spacer(),
                Container(
                  height: 145.w,
                  width: 145.w,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
            Container(
              height: 145.h,
              width: 1.sw,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    for most devices the height is greater than width
    so if you specified .h to container's width overflow
    example for device (360 * 900)
    //max 375.w (if you specified 376 this mean 376*(360/375) = 360.960 which mean overflow by 0.960 pixels)


    .r mean the smallest between the scaled width ration and scaled heith ratio
    for examble (small dveice 360 * 900) => min(360/375, 900/812) = min(0.96,1.1) = 0.96
    for examble (tab dveice 900 * 768) => min(768/375, 900/812) = min(2.048,1.1) = 1.1




    */
    print('width: ${1.sw}, scale width = ${1.sw / 375}'); //360
    print('height: ${1.sh}, scale height = ${1.sh / 812}'); //900
    print('text scale: ${1.sp}');
    print('text scale: ${1.r}');
    print('text scale max: ${1.spMax}');
    print('text scale min: ${1.spMin}');
    print('text scale min deprecated: ${1.sm}');

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.r,
              height: 100.r,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(0.r)),
            ),
            8.verticalSpace,
            Container(
              width: 300.dm,
              height: 100.dm,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(0.r),
                  border: Border.all()),
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 24.sp, color: Colors.black),
              ),
            ),
            8.verticalSpace,
            SizedBox(
              width: 52.dm,
              height: 20.dm,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  foregroundColor: const Color(0xFF121212),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: const Color(0xFF2C262C),
                      width: 1.dm,
                    ),
                    borderRadius: BorderRadius.circular(16.dm),
                  ),
                ),
                child: Text(
                  'تفاصيل',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: const Color(0xFF121212),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            8.verticalSpace,
            SizedBox(
              width: 52.r,
              height: 20.r,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  foregroundColor: const Color(0xFF121212),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: const Color(0xFF2C262C),
                      width: 1.r,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Text(
                  'تفاصيل',
                  style: TextStyle(
                    fontSize: 11.r,
                    color: const Color(0xFF121212),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
