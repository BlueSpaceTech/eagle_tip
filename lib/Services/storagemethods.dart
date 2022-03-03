import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//import 'package:firebase/firebase.dart' as fb;
//import 'package:firebase_storage/firebase_storage.dart';

class StorageMethods {
  //final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  /*
  Future<Uri> uploadImageFile(Uint8List image) async {
    
    fb.StorageReference storageRef =
        fb.storage().ref('images/dpUrl').child("name1");
    fb.UploadTaskSnapshot uploadTaskSnapshot =
        await storageRef.put(image).future;
    print("success");
    
    Uri imageUri = await uploadTaskSnapshot.ref.getDownloadURL();
    return imageUri;
  }
  */
/*
  //add image to firebase storage
  final FirebaseStorage _storage = FirebaseStorage.instance;
  Future<String> uploadImageToStoragefinal(
      String childName, Uint8List file, bool issiteimage) async {
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);
    UploadTask uploadtask = ref.putData(file);
    TaskSnapshot snap = await uploadtask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
*/
  //UPLOADS IMAGE TO FIREBASE
  /*
  fb.UploadTask? _uploadTask;

  Future<void> uploadStorageImage(Uint8List imageFile, String filePath) async {
    _uploadTask = _storage.ref().child("userDp").put(imageFile);
    return;
  }
*/
/*
  //DELETES IMAGE IN FIREBASE
  Future<void> deleteStorageImage(String filePath) async {
    try {
      await _storage.ref().child(filePath).delete();
    } catch (e) {
      print(e.toString());
    }

    return;
  }
  */
}
