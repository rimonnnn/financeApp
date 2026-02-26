import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtomBlackWidget extends StatelessWidget {
  const BackButtomBlackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 48.w,
                      height: 48.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffE8ECF4)),
                      ),
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  );
  }
}