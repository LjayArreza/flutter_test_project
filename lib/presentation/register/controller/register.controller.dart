import 'package:flutter_test_project/data/repository/user.repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  UserRepository userRepo;
  RegisterController(this.userRepo);
}
