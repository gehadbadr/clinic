//import 'package:clinic/error_screen.dart';

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/views/screens/Home.dart';
import 'package:clinic/views/screens/auth/forgetpassword.dart';
import 'package:clinic/views/screens/auth/verifycodesignup.dart';
import 'package:clinic/views/screens/file/campany_file.dart';
import 'package:clinic/views/screens/file/fileCategory.dart';
import 'package:clinic/views/screens/auth/login.dart';
import 'package:clinic/views/screens/auth/signUp.dart';
import 'package:clinic/views/screens/clinic/clinic_profile.screens.dart';
import 'package:clinic/views/screens/clinic/search/Search.screens.dart';
import 'package:clinic/views/screens/file/person_file.dart';
import 'package:clinic/views/screens/file/person_file2.dart';
import 'package:clinic/views/screens/onBoarding/onBoarding.dart';
import 'package:clinic/views/screens/products/product_details.screen.dart';
import 'package:clinic/views/screens/products/products.screen.dart';
import 'package:clinic/views/screens/splash/splash.dart';
import 'package:clinic/views/screens/videos/video_details.screen.dart';
import 'package:clinic/views/screens/videos/video_details_list.screens.dart';
import 'package:flutter/material.dart';

class AppRouter{
  
  static final Map<String, Widget Function(BuildContext)> router = {
    '/': (context) =>   SplashScreen(),
   // '/': (context) =>   SplashScreen(),
     "/Homepage": (context) =>  const Home(),
    AppRoutes.splash: (context) =>  SplashScreen(),
    AppRoutes.onBoarding: (context) => const OnBoarding(),
    AppRoutes.signupScreen: (context) => const SignUp(),
    AppRoutes.loginScreen: (context) => const Login(),
    AppRoutes.forgetScreen: (context) =>  const ForgetPassword(),
    AppRoutes.verfiyCodeSignUpScreen: (context) =>  const VerifyCodeSignup(),

    AppRoutes.fileCategory: (context) => const FileCategory(),
    AppRoutes.companyFile: (context) => const CompanyFile(),
    AppRoutes.personFile: (context) =>  PersonFile(),
    AppRoutes.personFile2: (context) => const PersonFile2(),

    AppRoutes.clinicProfileScreen: (context) => const ClinicProfile(),
    AppRoutes.products: (context) => const Products(),
    AppRoutes.productDetails: (context) =>  ProductDetails(),
    AppRoutes.videoDetails: (context) =>  const VideoDetails(),
    AppRoutes.videoDetailsList: (context) => const VideoDetailsList(),
    AppRoutes.searchScreen: (context) => const SearchWidget(),
    // AppRoutes.introScreen: (context) => const IntroScreen(),
    // AppRoutes.languageScreen: (context) => const LanguageScreen(),
    // AppRoutes.loginScreen: (context) => const LoginScreen(),
    // AppRoutes.signupScreen: (context) => const SignupScreen(),
    // AppRoutes.forgetScreen: (context) => const ForgetPasswordScreen(),
   //AppRoutes.homepageScreen: (context) => const HomepageScreen(),
    
  //  AppRoutes.settingsScreen: (context) => const SettingsScreen(),
  //  AppRoutes.profileScreen: (context) => ProfileScreen(profileDetails:profileDetails),
  //  AppRoutes.editprofileScreen: (context) => const EditProfileScreen(),

  };
}