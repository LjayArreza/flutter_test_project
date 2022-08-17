import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  UserRepository userRepo;
  RegisterController(this.userRepo);
}
