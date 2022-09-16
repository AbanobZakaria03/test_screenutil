import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        // splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            // useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: const HomePage(),
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
                  'test${index+1}',
                  style: TextStyle(fontSize: 50.sp,color: Colors.white),
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
            SizedBox(height: 43.h,),
            Row(children: [
              Container(
                height: 145.w,
                width: 145.w,
                color: Colors.red,
              ),
              Spacer(),
              Container(
                height: 145.w,
                width: 145.w,
                color: Colors.red,
              ),
            ],),
            SizedBox(height: 43.h,),
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