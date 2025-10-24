import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/session/session_user.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/service/user_service.dart';
import 'package:broker_mobile/src/screens/misc/user-settings/user_settings_form.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sessionManager.user!;

    return PageContainer(
      title: "User Settings",
      page: UserSettingsForm(
        name: user.name,
        email: user.email,
        role: user.roleName,
        mobileNo: user.mobileNo,
        authenticationMode: user.authenticationMode,
        onSubmit: ({
          required String mobileNo,
          required AuthenticationMode authMethods,
        }) async {
          await UserService().updateUserSettings(mobileNo, authMethods);
        },
      ),
    );
  }
}
