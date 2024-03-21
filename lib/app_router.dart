//import 'package:clinic/error_screen.dart';

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/Home.dart';
import 'package:clinic/views/screens/clinic/clinic_profile.screens.dart';
import 'package:clinic/views/screens/products/products.screen.dart';
import 'package:clinic/views/screens/videos/video_details.screen.dart';
import 'package:clinic/views/screens/videos/video_details_list.screens.dart';
import 'package:clinic/views/screens/videos/videos.list.screens.dart';
//import 'package:clinic/views/screens/clinic/clinic_profile.screens.dart';

class AppRouter{
  
  static final router = {
    '/': (context) =>  const Home(),
     "/Homepage": (context) =>  const Home(),
     AppRoutes.clinicProfileScreen: (context) => const ClinicProfile(),
     AppRoutes.products: (context) => const Products(),
     AppRoutes.videoDetails: (context) => const VideoDetails(),
     AppRoutes.videoDetailsList: (context) => const VideoDetailsList(),
    // AppRoutes.introScreen: (context) => const IntroScreen(),
    // AppRoutes.languageScreen: (context) => const LanguageScreen(),
    // AppRoutes.loginScreen: (context) => const LoginScreen(),
    // AppRoutes.signupScreen: (context) => const SignupScreen(),
    // AppRoutes.forgetScreen: (context) => const ForgetPasswordScreen(),
  //  AppRoutes.homepageScreen: (context) => const HomepageScreen(),
    
  //  AppRoutes.settingsScreen: (context) => const SettingsScreen(),
  //  AppRoutes.profileScreen: (context) => ProfileScreen(profileDetails:profileDetails),
  //  AppRoutes.editprofileScreen: (context) => const EditProfileScreen(),

  };
}