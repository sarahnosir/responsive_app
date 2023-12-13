import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/dashborditem_model.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key, required this.dashboreditem});
  final DashboardItemModel dashboreditem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: dashboreditem.backgroundcolor,
                shape: BoxShape.circle,
              ),
              child: Icon(dashboreditem.dashicondata, color: Colors.white)),
          SizedBox(height: 8.h),
          Text(dashboreditem.dashtitle.toUpperCase(),
              style: TextStyle(
                fontSize: 14.sp,
              ))
        ],
      ),
    );
  }
}
