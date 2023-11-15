import 'package:av_musa_ocal/controller/auth_controller.dart';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../helper/show_alert_dialog.dart';

part 'login_view_model.g.dart';

class LoginPageViewModel = _LoginPageViewModel with _$LoginPageViewModel;
// final AuthController controller = AuthController();

abstract class _LoginPageViewModel with Store {
  final TextEditingController phoneController = TextEditingController();
  sendCodeToPhone(String phone, BuildContext context) {
    if (!phone.startsWith("+90")) {
      if (!phone.startsWith("0")) {
        phone = "+90" + phone;
      } else {
        phone = "+9" + phone;
      }
    }
    if (phone.isEmpty) {
      showAlertDialog(
          context: context, message: "Lütfen telefon numaranızı giriniz.");
    } else if (phone.length < 13) {
      showAlertDialog(
          context: context,
          message:
              "Lütfen telefon numaranızı eksiksiz giriniz. \n (999) 999 99 99");
    } else if (phone.length > 13) {
      showAlertDialog(
          context: context,
          message:
              "Hatalı telefon numarası girişi yaptınız.\n Lütfen numaranızı kontrol ediniz.");
    } else {
      // controller.sendSmsCode(context: context, phoneNumber: phone);
    }
  }
}
