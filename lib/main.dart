import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/event_details_screen/event_details_screen.dart';
import 'package:scout_app/view/home_screen/home_screen.dart';
import 'package:scout_app/view/profile_setting_ui/profile_setting_screen.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set device orientation to portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Ensure ScreenUtil is ready
  // await ScreenUtil.ensureScreenSize();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  static const deviceWidth = 375.0;
  static const deviceHeight = 812.0;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenProvider>(
          create: (_) => HomeScreenProvider(),
        ),

        ChangeNotifierProvider<EventDetailsScreenProvider>(
          create: (_) => EventDetailsScreenProvider(),
        ),


      ],
      child: ScreenUtilInit(
        designSize: const Size(deviceWidth, deviceHeight),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  backgroundColor: Colors.white,
                  selectedItemColor: Color(0xFFE11E1B),
                  unselectedItemColor: Colors.grey,
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  // Dark background color
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors
                        .grey, // Explicitly set grey for unselected labels
                  ),
                ),

                appBarTheme: AppBarTheme(
                    surfaceTintColor: Colors.transparent,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  titleTextStyle: GoogleFonts.poppins(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                ),
                //  setting-up textTheme globally according to figma and use screen_util feature for responsiveness
                textTheme: TextTheme(
                  headlineLarge: GoogleFonts.poppins(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineMedium: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineSmall: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  titleLarge: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    //height: 30.h,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  bodyLarge: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    //height: 22.h,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  bodyMedium: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  bodySmall: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  labelLarge: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: RouteName.homeScreen,
              routes: {

                 //'/': (context) => SplashScreen(),
                //RouteName.loginScreen : (context) => LoginScreen(),
                RouteName.homeScreen : (context) => HomeScreen(),
                RouteName.eventDetailsScreen : (context) => EventDetailsScreen(),
                // RouteName.profileScreen : (context) => ProfileScreen(),
                RouteName.profileSettingScreen : (context) => ProfileSettingScreen(),
                // RouteName.signUpScreen : (context) => SignUpScreen(),
              }
              );
        },
      ),
    );
  }
}
