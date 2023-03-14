import 'package:get/get.dart';

import '../modules/costumer/cs_chat/bindings/cs_chat_binding.dart';
import '../modules/costumer/cs_chat/views/cs_chat_view.dart';
import '../modules/costumer/cs_home/bindings/cs_home_binding.dart';
import '../modules/costumer/cs_home/views/cs_home_view.dart';
import '../modules/costumer/cs_main_navigation/bindings/cs_main_navigation_binding.dart';
import '../modules/costumer/cs_main_navigation/views/cs_main_navigation_view.dart';
import '../modules/costumer/cs_my_profile/bindings/cs_my_profile_binding.dart';
import '../modules/costumer/cs_my_profile/views/cs_my_profile_view.dart';
import '../modules/doctor/doc_chat/bindings/doc_chat_binding.dart';
import '../modules/doctor/doc_chat/views/doc_chat_view.dart';
import '../modules/doctor/doc_main_navigation/bindings/doc_main_navigation_binding.dart';
import '../modules/doctor/doc_main_navigation/views/doc_main_navigation_view.dart';
import '../modules/doctor/doc_profile/bindings/doc_profile_binding.dart';
import '../modules/doctor/doc_profile/views/doc_profile_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/select_doctor/bindings/select_doctor_binding.dart';
import '../modules/select_doctor/views/select_doctor_view.dart';
import '../modules/selectusers/bindings/selectusers_binding.dart';
import '../modules/selectusers/views/selectusers_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.SELECTUSERS,
      page: () => const SelectusersView(),
      binding: SelectusersBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(type: ''),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(type: ''),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.CS_HOME,
      page: () => const CsHomeView(),
      binding: CsHomeBinding(),
    ),
    GetPage(
      name: _Paths.CS_CHAT,
      page: () => const CsChatView(),
      binding: CsChatBinding(),
    ),
    GetPage(
      name: _Paths.CS_MAIN_NAVIGATION,
      page: () => CsMainNavigationView(),
      binding: CsMainNavigationBinding(),
    ),
    GetPage(
      name: _Paths.DOC_MAIN_NAVIGATION,
      page: () => DocMainNavigationView(),
      binding: DocMainNavigationBinding(),
    ),
    GetPage(
      name: _Paths.DOC_CHAT,
      page: () => const DocChatView(),
      binding: DocChatBinding(),
    ),
    GetPage(
      name: _Paths.DOC_PROFILE,
      page: () => const DocProfileView(),
      binding: DocProfileBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_DOCTOR,
      page: () => SelectDoctorView(doctorName: '', specialist: ''),
      binding: SelectDoctorBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.CS_MY_PROFILE,
      page: () => const CsMyProfileView(),
      binding: CsMyProfileBinding(),
    ),
  ];
}
