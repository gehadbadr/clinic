//import 'package:clinic/error_screen.dart';

import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/middleware/mymiddleware.dart';
import 'package:clinic/views/screens/Home.dart';
import 'package:clinic/views/screens/auth/forgetpassword.dart';
import 'package:clinic/views/screens/auth/verifycodesignup.dart';
import 'package:clinic/views/screens/cart/cart.screen.dart';
import 'package:clinic/views/screens/file/campany_file.dart';
import 'package:clinic/views/screens/file/fileCategory.dart';
import 'package:clinic/views/screens/auth/login.dart';
import 'package:clinic/views/screens/auth/signUp.dart';
import 'package:clinic/views/screens/clinic/clinic_profile.screens.dart';
import 'package:clinic/views/screens/clinic/search/Search.screens.dart';
import 'package:clinic/views/screens/file/person_file.dart';
import 'package:clinic/views/screens/file/person_file2.dart';
import 'package:clinic/views/screens/language/language.dart';
import 'package:clinic/views/screens/onBoarding/onBoarding.dart';
import 'package:clinic/views/screens/products/product_details.screen.dart';
import 'package:clinic/views/screens/products/products.screen.dart';
import 'package:clinic/views/screens/splash/splash.dart';
import 'package:clinic/views/screens/videos/video_details.screen.dart';
import 'package:clinic/views/screens/videos/video_details_list.screens.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter{
  
  static List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
   // GetPage(name: AppRoute.login, page: () => const Login()),

    //  "/Homepage", page: () =>  const Home(),
    GetPage(name: AppRoutes.languageScreen, page: () => const Language()),
    GetPage(name: AppRoutes.splash, page: () =>  SplashScreen()),
    GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
    GetPage(name: AppRoutes.signupScreen, page: () => const SignUp()),
    GetPage(name: AppRoutes.loginScreen, page: () => const Login()),
    GetPage(name: AppRoutes.forgetScreen, page: () =>  const ForgetPassword()),
    GetPage(name: AppRoutes.verfiyCodeSignUpScreen, page: () =>  const VerifyCodeSignup()),

    GetPage(name: AppRoutes.fileCategory, page: () => const FileCategory()),
    GetPage(name: AppRoutes.companyFile, page: () => const CompanyFile()),
    GetPage(name: AppRoutes.personFile, page: () =>  PersonFile()),
    GetPage(name: AppRoutes.personFile2, page: () => const PersonFile2()),
    GetPage(name: AppRoutes.homepageScreen, page: () => const Home()),

    GetPage(name: AppRoutes.clinicProfileScreen, page: () => const ClinicProfile()),
    GetPage(name: AppRoutes.products, page: () => const Products()),
    GetPage(name: AppRoutes.productDetails, page: () =>  const ProductDetails()),
    GetPage(name: AppRoutes.videoDetails, page: () =>  const VideoDetails()),
    GetPage(name: AppRoutes.videoDetailsList, page: () => const VideoDetailsList()),
    GetPage(name: AppRoutes.searchScreen, page: () => const SearchWidget()),
    GetPage(name: AppRoutes.cart, page: () => const Cart()),
    // GetPage(name: AppRoutes.introScreen, page: () => const IntroScreen()),
    // GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    // GetPage(name: AppRoutes.signupScreen, page: () => const SignupScreen()),
    // GetPage(name: AppRoutes.forgetScreen, page: () => const ForgetPasswordScreen()),
   //GetPage(name: AppRoutes.homepageScreen, page: () => const HomepageScreen()),
    
  //  GetPage(name: AppRoutes.settingsScreen, page: () => const SettingsScreen()),
  //  GetPage(name: AppRoutes.profileScreen, page: () => ProfileScreen(profileDetails:profileDetails)),
  //  GetPage(name: AppRoutes.editprofileScreen, page: () => const EditProfileScreen()),
  ];
  }
