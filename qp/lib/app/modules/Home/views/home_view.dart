import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qp/app/modules/Home/widget/homeIcon.dart';
import 'package:qp/app/modules/Login/views/login_view.dart';
import 'package:qp/gen/assets.gen.dart';
import 'package:qp/helper/divider.dart';
import 'package:qp/helper/rounded_container.dart';
import 'package:qp/helper/sizedbox_extension.dart';
import '../../../../gen/colors.gen.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.images.logoHome.path,
                    height: 30.h,
                    width: 30.w,
                  ),
                  const Spacer(),
                  roundedContainer(
                      icon: Icons.add, color: const Color(0xffDFFCFC)),
                  3.width,
                  roundedContainer(
                      icon: Icons.search_rounded,
                      color: const Color(0xffDFFCFC)),
                  3.width,
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffDFFCFC)),
                    child: Center(
                      child: Image.asset(
                        Assets.images.message.path,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                  )
                ],
              ),
              10.height,
              const HomeIcon(),
              10.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      Assets.images.chancal.path,
                      height: 60.h,
                      width: 55.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  10.width,
                  SizedBox(
                    height: 50.h,
                    width: 225.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'What’s on your mind, Shanto?',
                        filled: true,
                        fillColor: ColorName.gray70.withOpacity(0.5),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          // default border color
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: ColorName.primaryColor),
                          // primary color on focus
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (value) {
                        // Save it
                      },
                    ),
                  ),
                  10.width,
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: ColorName.gray70.withOpacity(0.5),
                    ),
                    child: Center(
                        child: Image.asset(
                      Assets.images.image.path,
                      height: 25.h,
                      width: 25.w,
                    )),
                  )
                ],
              ),
              10.height,
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, item) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25.r),
                              child: Image.asset(
                                Assets.images.chancal.path,
                                height: 150.h,
                                width: 120.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              left: 45.w,
                              // right: 60.w,
                              bottom: 20.h,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color: ColorName.primaryColor,
                                      border: Border.all(
                                        color: ColorName.white,
                                        width: 1.5.w
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 30,
                                      color: ColorName.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              customDivider(color: ColorName.black, paddingHorizontal: 0)
            ],
          ),
        ),
      ),
    );
  }
}
