
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set device orientation to portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Ensure ScreenUtil is ready
  // await ScreenUtil.ensureScreenSize();

  runApp(MyApp(),);
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

                //  setting-up textTheme globally according to figma and use screen_util feature for responsiveness
                textTheme: TextTheme(
                  headlineLarge: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineMedium: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineSmall: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  titleLarge: GoogleFonts.inter(
                    fontSize: 18.sp,
                    //height: 30.h,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  bodyLarge: GoogleFonts.inter(
                    fontSize: 16.sp,
                    //height: 22.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  bodyMedium: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  bodySmall: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  labelLarge: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                '/': (context) => SplashScreen(),
                RouteName.homeScreen : (context) => HomeScreen(),
                RouteName.profileScreen : (context) => ProfileScreen(),
                RouteName.profileSettingScreen : (context) => ProfileSettingScreen(),
                RouteName.loginScreen : (context) => LoginScreen(),
                RouteName.signUpScreen : (context) => SignUpScreen(),
              }
            // home: HomeScreen(),
          );
        },
      ),
    );
  }
}
