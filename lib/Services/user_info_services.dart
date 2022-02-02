import 'package:eagle_tip/Models/users.dart';

import 'package:eagle_tip/Services/user_db_services.dart';
import 'package:flutter/material.dart';

class UserInfoServices extends ChangeNotifier {
  Users? _user;
  bool hasData = false;

  Users get user => _user!;
  /*
  Future<bool> fetchUserDetailsFromDatabase(context) async {
    // Write the code to fetch from Firestore Collection `users`
    bool isUserExists = await UserDBServices.fetchUserData(context);
    if (!isUserExists) {
      print("user details not present in firestore");
    }
    notifyListeners();
    return isUserExists;
  }
*/
  Future<void> addUserToDatabase() async {
    await UserDBServices.addit(_user!);

    notifyListeners();
  }

  void setUser(Users _usr) {
    this._user = _usr;
    this.hasData = true;
    notifyListeners();
  }

  void setEssentialDetailsOfUser(String name, String email, String dpUrl,
      String employercode, int phoneno, UserRole userRole, String uid) {
    this._user = Users.setEsssentialDetails(
      name,
      email,
      phoneno,
      employercode,
      userRole,
    );
  }
}
