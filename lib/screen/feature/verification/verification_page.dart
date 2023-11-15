import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/extension/context_extensions.dart';
import 'package:av_musa_ocal/screen/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../utils copy/app_router/app_router.dart';
import '../../../utils/gen/colors.gen.dart';

@RoutePage()
class VerificationPage extends StatefulWidget {
  final String verificationId;
  final String phoneNumber;
  const VerificationPage(
      {super.key, required this.verificationId, required this.phoneNumber});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController codeController;

  @override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lütfen telefon numaranızı doğrulayınız'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: CustomTextField(
              controller: codeController,
              onChanged: (value) {},
              hintText: '_  _  _  _  _  _',
              fontSize: 30,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Lütfen telefonunuza gelen 6 haneli \ndoğrulama kodunu giriniz.",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.gold),
            onPressed: () {
              context.router.push(UserInfoRoute());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 4, horizontal: context.width * .25),
              child: Text("Doğrula"),
            ),
          ),
        ]),
      ),
    );
  }
}
