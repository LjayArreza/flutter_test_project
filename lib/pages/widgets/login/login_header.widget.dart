import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginHeader extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image(
        image: AssetImage('assets/images/theora_logo.png'),
        height: 100,
        width: 200,
      ),
    );
  }
}
