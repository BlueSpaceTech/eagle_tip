import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum UserRole { TA, TM, TU, SA, SM, SU }

class Users {
  late String uid;
  late String name;
  late String email;
  late UserRole userRole;

  late int phonenumber;
  late String employercode;
  late String dpUrl;

  Users({
    required this.uid,
    required this.name,
    required this.email,
    required this.userRole,
    required this.phonenumber,
    required this.employercode,
    required this.dpUrl,
  });
  Users.setEsssentialDetails(String _name, String _email, int _phoneno,
      String _employercode, UserRole _userRole,
      [String _dpUrl = "", String _uid = ""]) {
    this.name = _name;
    this.email = _email;
    this.dpUrl = _dpUrl;
    this.employercode = _employercode;
    this.phonenumber = _phoneno;
    this.uid = _uid;
    this.userRole = _userRole;
  }
  Map<String, dynamic> toJson() {
    String _userRole = enumToString(userRole);
    return {
      "name": name,
      "email": email,
      "dpUrl": dpUrl,
      "employercode": employercode,
      "uid": uid,
      "phonenumber": phonenumber,
      "gender": _userRole,
    };
  }
}

String enumToString(UserRole _userRole) {
  switch (_userRole) {
    case UserRole.TA:
      return "Terminal Admin";
      break;
    case UserRole.TM:
      return "Terminal Manager";
      break;
    case UserRole.TU:
      return "Terminal User";
      break;
    case UserRole.SA:
      return "Side Admin";
      break;
    case UserRole.SM:
      return "Site Manager";
      break;
    case UserRole.SU:
      return "Site User";
      break;
    default:
      return "Other";
      break;
  }
}
