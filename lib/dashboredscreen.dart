import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_app/dammyData.dart';
import 'package:responsive_app/widgets/dashboreditem.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50.r),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50.h),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30.w),
                  title: Text(
                    'Hello sarah',
                    style: TextStyle(
                      fontSize: 40.sp,
                    ),
                    textScaleFactor: 1,
                  ),
                ),
                SizedBox(height: 30.h)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200.r))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40.w,
                mainAxisSpacing: 30.h,
                children: [
                  ...dashboreditems.map((e) => DashboardItem(dashboreditem: e)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h)
        ],
      ),
    );
  }
}
