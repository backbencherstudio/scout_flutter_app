import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/home_screen/widgets/tab_bar_design.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async  {
      context.read<HomeScreenProvider>().getEvent();
      await _requestLocationPermission();
    });
    super.initState();
  }

  Future<void> _requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();

    if (status.isGranted) {
      print("Location permission granted");
    } else if (status.isDenied) {
      print("Location permission denied");
    } else if (status.isPermanentlyDenied) {
      print("Location permission permanently denied. Open app settings.");
      openAppSettings(); // Opens app settings for manual permission change
    }
  }

  Widget categoryContainer({
    required BuildContext context,
    required Color color,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(2.r)),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Hello John",
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.w, left: 5.w),
            child: Icon(
              Icons.notifications_outlined,
              size: 24,
              color: Color(0xff111315),
            ),
          )
        ],
        centerTitle: false,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "For You", isSelected: true),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "Friends", isSelected: false),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "Today", isSelected: false),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Consumer<HomeScreenProvider>(
                builder: (_, homeScreenProvider, child) {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                        homeScreenProvider.eventModel?.eventList?.length ?? 0,
                    itemBuilder: (_, index) {
                      final event =
                          homeScreenProvider.eventModel?.eventList?[index];
                      return Column(
                        children: [
                          Card(
                            color:Colors.white,
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(5.r),
                            // ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    debugPrint("\nEvent image button pressed.\n");
                                    context.read<EventDetailsScreenProvider>().setEventDetails(event);
                                    Navigator.pushNamed(context, RouteName.eventDetailsScreen);
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Image.asset(
                                      event?.imagePath ?? "",
                                      width: 359.w,
                                      height: 340.h,
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      categoryContainer(
                                        context: context,
                                        color: Color(0xff1D4FFF).withOpacity(0.2),
                                        text: "Nightlife",
                                      ),
                                      categoryContainer(
                                        context: context,
                                        color: Color(0xffFB6012).withOpacity(0.2),
                                        text: "Music",
                                      ),
                                      if(event!.category!.length > 2)
                                      categoryContainer(
                                        context: context,
                                        color: Color(0xffF4F4F4),
                                        text: "+ more",
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    event.eventDate!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Color(0xff25282A),
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                GestureDetector(
                                  onTap : (){
                                    debugPrint("\nEvent title pressed\n");
                                    context.read<EventDetailsScreenProvider>().setEventDetails(event);
                                    Navigator.pushNamed(context, RouteName.eventDetailsScreen);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Text(
                                      event.eventTitle!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontSize: 20.sp,
                                          ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Row(
                                    crossAxisAlignment : CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 48.w,
                                        height: 30.h,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                               left : 0,
                                                child: ClipOval(child: Image.asset('assets/images/event/female.png',
                                                width: 30.w,
                                                height: 30.h,
                                                fit: BoxFit.cover,),),
                                            ),
                                            Positioned(
                                              left : 18,
                                              child: ClipOval(child: Image.asset('assets/images/event/male.png',
                                                width: 30.w,
                                                height: 30.h,
                                                fit: BoxFit.cover,),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 8.w,),
                                      Expanded(
                                        child: Text(
                                          "${event.interestedPeople!.length} friends are interested",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(color: Color(0xff25282A),fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                  //  spacing : 12.w,
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap:(){debugPrint("\nI'm interested button pressed\n");},
                                          child: Container(
                                          //  width: double.infinity,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 8),
                                            decoration: BoxDecoration(
                                              color: Color(0xffFFF5F0),
                                              borderRadius: BorderRadius.circular(4.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "I'm interested",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 12.w),
                                        child: IconButton(
                                          onPressed :(){debugPrint("\nBookmark icon button pressed!\n");},
                                          icon : Icon(Icons.bookmark_border_outlined, size: 24,),
                                          color: Color(0xff111315),

                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      )),
    );
  }
}
