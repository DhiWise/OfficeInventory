import 'package:officeinventoryapp/presentation/add_device_screen/add_device_screen.dart';
import 'package:officeinventoryapp/presentation/add_device_screen/binding/add_device_binding.dart';
import 'package:officeinventoryapp/presentation/device_screen/device_screen.dart';
import 'package:officeinventoryapp/presentation/device_screen/binding/device_binding.dart';
import 'package:officeinventoryapp/presentation/add_furniture_screen/add_furniture_screen.dart';
import 'package:officeinventoryapp/presentation/add_furniture_screen/binding/add_furniture_binding.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/add_employee_screen.dart';
import 'package:officeinventoryapp/presentation/add_employee_screen/binding/add_employee_binding.dart';
import 'package:officeinventoryapp/presentation/all_furniture_screen/all_furniture_screen.dart';
import 'package:officeinventoryapp/presentation/all_furniture_screen/binding/all_furniture_binding.dart';
import 'package:officeinventoryapp/presentation/employee_screen/employee_screen.dart';
import 'package:officeinventoryapp/presentation/employee_screen/binding/employee_binding.dart';
import 'package:officeinventoryapp/presentation/profile_screen/profile_screen.dart';
import 'package:officeinventoryapp/presentation/profile_screen/binding/profile_binding.dart';
import 'package:officeinventoryapp/presentation/furniture_screen/furniture_screen.dart';
import 'package:officeinventoryapp/presentation/furniture_screen/binding/furniture_binding.dart';
import 'package:officeinventoryapp/presentation/edit_furniture_screen/edit_furniture_screen.dart';
import 'package:officeinventoryapp/presentation/edit_furniture_screen/binding/edit_furniture_binding.dart';
import 'package:officeinventoryapp/presentation/all_employee_screen/all_employee_screen.dart';
import 'package:officeinventoryapp/presentation/all_employee_screen/binding/all_employee_binding.dart';
import 'package:officeinventoryapp/presentation/category_screen/category_screen.dart';
import 'package:officeinventoryapp/presentation/category_screen/binding/category_binding.dart';
import 'package:officeinventoryapp/presentation/welcome_screen/welcome_screen.dart';
import 'package:officeinventoryapp/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/edit_employee_screen.dart';
import 'package:officeinventoryapp/presentation/edit_employee_screen/binding/edit_employee_binding.dart';
import 'package:officeinventoryapp/presentation/splash_screen/splash_screen.dart';
import 'package:officeinventoryapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:officeinventoryapp/presentation/edit_device_screen/edit_device_screen.dart';
import 'package:officeinventoryapp/presentation/edit_device_screen/binding/edit_device_binding.dart';
import 'package:officeinventoryapp/presentation/all_device_screen/all_device_screen.dart';
import 'package:officeinventoryapp/presentation/all_device_screen/binding/all_device_binding.dart';
import 'package:officeinventoryapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:officeinventoryapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String addDeviceScreen = '/add_device_screen';

  static String deviceScreen = '/device_screen';

  static String addFurnitureScreen = '/add_furniture_screen';

  static String addEmployeeScreen = '/add_employee_screen';

  static String allFurnitureScreen = '/all_furniture_screen';

  static String employeeScreen = '/employee_screen';

  static String profileScreen = '/profile_screen';

  static String furnitureScreen = '/furniture_screen';

  static String editFurnitureScreen = '/edit_furniture_screen';

  static String allEmployeeScreen = '/all_employee_screen';

  static String categoryScreen = '/category_screen';

  static String welcomeScreen = '/welcome_screen';

  static String editEmployeeScreen = '/edit_employee_screen';

  static String splashScreen = '/splash_screen';

  static String editDeviceScreen = '/edit_device_screen';

  static String allDeviceScreen = '/all_device_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: addDeviceScreen,
      page: () => AddDeviceScreen(),
      bindings: [
        AddDeviceBinding(),
      ],
    ),
    GetPage(
      name: deviceScreen,
      page: () => DeviceScreen(),
      bindings: [
        DeviceBinding(),
      ],
    ),
    GetPage(
      name: addFurnitureScreen,
      page: () => AddFurnitureScreen(),
      bindings: [
        AddFurnitureBinding(),
      ],
    ),
    GetPage(
      name: addEmployeeScreen,
      page: () => AddEmployeeScreen(),
      bindings: [
        AddEmployeeBinding(),
      ],
    ),
    GetPage(
      name: allFurnitureScreen,
      page: () => AllFurnitureScreen(),
      bindings: [
        AllFurnitureBinding(),
      ],
    ),
    GetPage(
      name: employeeScreen,
      page: () => EmployeeScreen(),
      bindings: [
        EmployeeBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: furnitureScreen,
      page: () => FurnitureScreen(),
      bindings: [
        FurnitureBinding(),
      ],
    ),
    GetPage(
      name: editFurnitureScreen,
      page: () => EditFurnitureScreen(),
      bindings: [
        EditFurnitureBinding(),
      ],
    ),
    GetPage(
      name: allEmployeeScreen,
      page: () => AllEmployeeScreen(),
      bindings: [
        AllEmployeeBinding(),
      ],
    ),
    GetPage(
      name: categoryScreen,
      page: () => CategoryScreen(),
      bindings: [
        CategoryBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: editEmployeeScreen,
      page: () => EditEmployeeScreen(),
      bindings: [
        EditEmployeeBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: editDeviceScreen,
      page: () => EditDeviceScreen(),
      bindings: [
        EditDeviceBinding(),
      ],
    ),
    GetPage(
      name: allDeviceScreen,
      page: () => AllDeviceScreen(),
      bindings: [
        AllDeviceBinding(),
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
