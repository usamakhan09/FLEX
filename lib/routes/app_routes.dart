import 'package:flex2/presentation/marks_screen/marks_screen.dart';
import 'package:flex2/presentation/registration_one_page/registration_one_page.dart';
import 'package:flex2/presentation/splash_screen/splash_screen.dart';
import 'package:flex2/presentation/splash_screen/binding/splash_binding.dart';
import 'package:flex2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:flex2/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:flex2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flex2/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:flex2/presentation/home_container_screen/home_container_screen.dart';
import 'package:flex2/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:flex2/presentation/attendance_screen/attendance_screen.dart';
import 'package:flex2/presentation/attendance_screen/binding/attendance_binding.dart';
import 'package:flex2/presentation/profile_screen/profile_screen.dart';
import 'package:flex2/presentation/profile_screen/binding/profile_binding.dart';
import 'package:flex2/presentation/change_password_screen/change_password_screen.dart';
import 'package:flex2/presentation/change_password_screen/binding/change_password_binding.dart';

import 'package:flex2/presentation/coursefeedback_one_screen/coursefeedback_one_screen.dart';
import 'package:flex2/presentation/coursefeedback_one_screen/binding/coursefeedback_one_binding.dart';
import 'package:flex2/presentation/registration_two_screen/registration_two_screen.dart';
import 'package:flex2/presentation/registration_two_screen/binding/registration_two_binding.dart';
import 'package:flex2/presentation/feechallan_one_screen/feechallan_one_screen.dart';
import 'package:flex2/presentation/feechallan_one_screen/binding/feechallan_one_binding.dart';
import 'package:flex2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flex2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/marks_screen/binding/marks_binding.dart';
import '../presentation/registration_one_container_screen/binding/registration_one_container_binding.dart';
import '../presentation/registration_one_container_screen/registration_one_container_screen.dart';

class AppRoutes {
  static const String registrationOneContainerScreen =
      '/registrationOneContainerScreen';
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String marksPage = '/marks_page';

  static const String attendanceScreen = '/attendance_screen';

  static const String registrationOneScreen = '/registration_one_screen';

  static const String transcriptPage = '/transcript_page';

  static const String feechallanPage = '/feechallan_page';

  static const String tentativeStudyPlanPage = '/tentative_study_plan_page';

  static const String coursefeedbackPage = '/coursefeedback_page';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String registrationScreen = '/registration_screen';

  static const String coursefeedbackOneScreen = '/coursefeedback_one_screen';

  static const String registrationTwoScreen = '/registration_two_screen';

  static const String feechallanOneScreen = '/feechallan_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: marksPage,
      page: () => MarksScreen(),
      bindings: [
        MarksBinding(),
      ],
    ),
    //    GetPage(
    //   name: marksPage,
    //   page: () => MarksPage(),

    // ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: attendanceScreen,
      page: () => AttendanceScreen(),
      bindings: [
        AttendanceBinding(),
      ],
    ),
    GetPage(
      name: registrationOneContainerScreen,
      page: () => RegistrationOneContainerScreen(),
      bindings: [
        RegistrationOneContainerBinding(),
      ],
    ),
    GetPage(
      name: registrationOneScreen,
      page: () => RegistrationOnePage(),
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationOneContainerScreen(),
      bindings: [
        RegistrationOneContainerBinding(),
      ],
    ),
    GetPage(
      name: coursefeedbackOneScreen,
      page: () => CoursefeedbackOneScreen(),
      bindings: [
        CoursefeedbackOneBinding(),
      ],
    ),
    GetPage(
      name: registrationTwoScreen,
      page: () => RegistrationTwoScreen(),
      bindings: [
        RegistrationTwoBinding(),
      ],
    ),
    GetPage(
      name: feechallanOneScreen,
      page: () => FeechallanOneScreen(),
      bindings: [
        FeechallanOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
