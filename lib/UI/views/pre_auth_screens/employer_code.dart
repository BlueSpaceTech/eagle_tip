/*
DocumentReference dbRef = FirebaseFirestore.instance
                        .collection('users')
                        .doc("ABC121");

                    dbRef.get().then((data) {
                      if (data.exists) {
                        setState(() {
                          name.text = data.get("name");
                          email.text = data.get("email");
                          password.text = data.get("password");
                          url.text = data.get("dpurl");
                        });
                      } else {
                        print("not");

                        SnackBar(content: Text("f"));
                      }
                    });
                     FirebaseFirestore.instance
                        .collection("users")
                        .doc("df")
                        .set({"name": "f"}, SetOptions(merge: true));
*/