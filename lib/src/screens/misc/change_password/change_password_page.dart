import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/misc/change_password/change_password_form.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/service/user_service.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sessionManager.user!;

    return PageContainer(
      title: "Change Password",
      page: ChangePasswordForm(
        email: user.email,
        onSubmit: ({
          required String oldPassword,
          required String newPassword,
        }) async {
          await UserService().changePassword(oldPassword, newPassword);
        },
      ),
    );
  }
}
