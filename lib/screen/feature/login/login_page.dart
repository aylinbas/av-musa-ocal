import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/extension/context_extensions.dart';
import 'package:av_musa_ocal/screen/feature/login/view_model/login_view_model.dart';
import 'package:av_musa_ocal/screen/widgets/custom_text_field.dart';
import 'package:av_musa_ocal/utils/gen/colors.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginPageViewModel _viewModel;

  @override
  void initState() {
    _viewModel = LoginPageViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lütfen telefon numaranızı giriniz',
          style: TextStyle(color: context.colorScheme.onPrimary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: Column(children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Telefon numaranızı doğrulamalısınız.",
                  style: TextStyle(color: context.colorScheme.onPrimary),
                  children: [TextSpan(text: "Numaranızı giriniz")]),
            ),
            CustomTextField(
              controller: _viewModel.phoneController,
              readOnly: false,
            ),
            SizedBox.fromSize(
              size: Size(0, 24),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.gold),
              onPressed: () {
                _viewModel.sendCodeToPhone(
                    _viewModel.phoneController.text, context);
                // context.router.push(
                //     VerificationRoute(verificationId: '', phoneNumber: ''));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 4, horizontal: context.width * .25),
                child: Text("Doğrula"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
