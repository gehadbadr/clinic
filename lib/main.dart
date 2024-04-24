import 'package:clinic/app_router.dart';
import 'package:clinic/core/bindings/mybindings.dart';
import 'package:clinic/core/localization/changelocal.dart';
import 'package:clinic/core/localization/translation.dart';
import 'package:clinic/core/services/prefrences.services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:overlay_kit/overlay_kit.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OverlayKit(
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
          LocaleController controller = Get.put(LocaleController());
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialBinding: Mybinding(),
              locale: controller.language,
              theme: controller.appTheme,
              translations: MyTranslation(),
              getPages: AppRouter.routes );
          }),
    );
  }
}

