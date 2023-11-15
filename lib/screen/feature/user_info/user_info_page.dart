import 'package:auto_route/auto_route.dart';
import 'package:av_musa_ocal/extension/context_extensions.dart';
import 'package:av_musa_ocal/screen/widgets/custom_text_field.dart';
import 'package:av_musa_ocal/utils/gen/colors.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: context.width * .7,
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "İleri",
            style: TextStyle(color: context.colorScheme.primary),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondary),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil Bilgileri'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          width: context.width,
          height: context.height,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Lütfen isim ve isteğe bağlı profil resmi bilgilerini giriniz.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(26),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.secondary),
              child: Padding(
                padding: EdgeInsets.only(bottom: 3, right: 3),
                child: Icon(
                  Icons.add_a_photo_rounded,
                  size: 48,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            _name(context)
          ]),
        ),
      )),
    );
  }

  Row _name(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: CustomTextField(
            hintText: "İsim",
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.edit,
          color: context.colorScheme.onPrimary,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
