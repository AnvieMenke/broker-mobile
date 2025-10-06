import 'package:flutter/material.dart';
import 'package:jwt_decode/jwt_decode.dart';

class PiiAccess {
  final bool view;
  final bool edit;
  final bool add;

  PiiAccess({
    required this.view,
    required this.edit,
    required this.add,
  });

  factory PiiAccess.fromJson(Map<String, dynamic> json) {
    return PiiAccess(
      view: json['View'] == true,
      edit: json['Edit'] == true,
      add: json['Add'] == true,
    );
  }
}

class SessionUser {
  final String email;
  final String name;
  final String userType;
  final String correspondent;
  final String accountNo;
  final String status;
  final String accountStatus;
  final String language;
  String mobileNo;
  final String roleName;
  String authenticationMode;
  final int userId;
  final int accountId;
  final int roleId;
  final bool isAdmin;
  final bool isMultipleCorrespondent;
  final bool isMultipleAccount;
  final bool isMultipleActiveCorrespondent;
  final bool isMultipleActiveAccount;
  final PiiAccess piiAccess;
  final DateTime? tokenExpiry;

  SessionUser({
    required this.email,
    required this.name,
    required this.userType,
    required this.correspondent,
    required this.accountNo,
    required this.status,
    required this.accountStatus,
    required this.language,
    required this.mobileNo,
    required this.roleName,
    required this.authenticationMode,
    required this.userId,
    required this.accountId,
    required this.roleId,
    required this.isAdmin,
    required this.isMultipleCorrespondent,
    required this.isMultipleAccount,
    required this.isMultipleActiveCorrespondent,
    required this.isMultipleActiveAccount,
    required this.piiAccess,
    required this.tokenExpiry,
  });

  factory SessionUser.fromToken(String token) {
    try {
      final payload = Jwt.parseJwt(token);
      final piiAccess = payload['PiiAccess'] as Map<String, dynamic>;

      debugPrint("JWT :\n$payload");
      final exp = payload['exp'];
      DateTime? expiry;
      if (exp is int) {
        expiry = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      }

      return SessionUser(
        email: payload["Username"] as String,
        name: payload["Name"] as String,
        userType: payload["UserType"] as String,
        correspondent: payload["Correspondent"] as String,
        accountNo: payload["AccountNo"] as String,
        status: payload["Status"] as String,
        accountStatus: payload["AccountStatus"] as String,
        language: payload["Language"] as String,
        mobileNo: payload["MobileNo"] as String,
        roleName: payload["Role"] as String,
        authenticationMode: payload["AuthenticationMode"] as String,
        userId: payload["UserId"] as int,
        accountId: payload["AccountId"] as int,
        roleId: payload["RoleId"] as int,
        isAdmin: payload["IsAdmin"] as bool,
        isMultipleCorrespondent: payload["IsMultipleCorrespondent"] as bool,
        isMultipleAccount: payload["IsMultipleAccount"] as bool,
        isMultipleActiveCorrespondent:
            payload["IsMultipleActiveCorrespondent"] as bool,
        isMultipleActiveAccount: payload["IsMultipleActiveAccount"] as bool,
        piiAccess: PiiAccess.fromJson(piiAccess),
        tokenExpiry: expiry,
      );
    } catch (err, stack) {
      debugPrint("JWT parse error: $err\n$stack");

      // return a friendly error to the user
      throw Exception("Unable to parse user details.");
    }
  }
}
