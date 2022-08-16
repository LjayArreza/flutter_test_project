import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  RxBool isObscure = true.obs;
  RxBool isButtonActive = false.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;
  RxString loginToken = ''.obs;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isBtnEnable() {
    var isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text);
    var isPasswordValid = passwordController.text.isNotEmpty;

    return (isEmailValid && isPasswordValid);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  UserRepository userRepo;
  LoginController(this.userRepo);

  void loginUser() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        _validate()) {
      isLoading(true);

      var response = await userRepo.loginUser(
          email: emailController.text, password: passwordController.text);

      pageRoute(response.token);
    }
  }

  void pageRoute(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', token);
    loginToken.value = token;
    Get.toNamed(Routes.DASHBOARD);
  }

  bool _validate() {
    final form = loginFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
