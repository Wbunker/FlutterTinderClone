import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dating_app/models/person.dart' as personModel;

class AuthenticationController extends GetxController {
  static AuthenticationController authController = Get.find();

  late Rx<File?> pickedFile;
  File? get profileImage => pickedFile.value;
  XFile? imageFile;

  pickImageFileFromGallery() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Get.snackbar(
          "Profile Image", "you have successfully picked your profile image.");
      pickedFile = Rx<File?>(File(imageFile!.path));
    }
  }

  captureImageFromPhoneCamera() async {
    imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      Get.snackbar("Profile Image",
          "you have captured your profile image using camera.");
      pickedFile = Rx<File?>(File(imageFile!.path));
    }
  }

  Future<String> uploadImageToStorage(File imageFile) async {
    try {
      Reference storageReference = FirebaseStorage.instance
          .ref()
          .child('profileImages/${FirebaseAuth.instance.currentUser!.uid}');

      UploadTask uploadTask = storageReference.putFile(imageFile);

      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
      String downloadUrlOfImage = await taskSnapshot.ref.getDownloadURL()

      return downloadUrlOfImage;

    } catch (errorMsg) {
      Get.snackbar(
          "Image upload unsuccessful", "Error occured: $errorMsg.toString()");
      return "";
    }
  }

  // create a new Firebase user account
  // it takes same parameters a Person class
  // and returns a Future<String> which is the user id
  createNewUserAccount(
      {
      //personal info
      required File imageProfile,
      required String email,
      required String password,
      required String name,
      required String age,
      required String phoneNumber,
      required String city,
      required String country,
      required String profileHeading,
      required String lookingFor,

      //appearance
      required String height,
      required String weight,
      required String bodyType,
      // life style
      required String drink,
      required String smoke,
      required String maritalStatus,
      required String haveChildren,
      required String numberOfChildren,
      required String profession,
      required String employmentStatus,
      required String income,
      required String livingSituation,
      required String willingToRelocate,
      required String relationshipDesired,
      //background
      required String nationality,
      required String education,
      required String languageSpoken,
      required String religion,
      required String ethnicity}) async {
    try {
      // create user with email and password
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // upload image to firebase storage
      String urlOfDownloadedImage = await uploadImageToStorage(imageProfile);

      // create a new user document in firestore
      personModel.Person personInstance = personModel.Person(
          //personal info
          imageProfile: urlOfDownloadedImage,
          email: email,
          password: password,
          name: name,
          age: age,
          phoneNumber: phoneNumber,
          city: city,
          country: country,
          profileHeading: profileHeading,
          lookingFor: lookingFor,
          publishedDateTime: DateTime.now().millisecondsSinceEpoch,

          //appearance
          height: height,
          weight: weight,
          bodyType: bodyType,

          // life style
          drink: drink,
          smoke: smoke,
          maritalStatus: maritalStatus,
          haveChildren: haveChildren,
          numberOfChildren: numberOfChildren,
          profession: profession,
          employmentStatus: employmentStatus,
          income: income,
          livingSituation: livingSituation,
          willingToRelocate: willingToRelocate,
          relationshipDesired: relationshipDesired,

          //background
          nationality: nationality,
          education: education,
          languageSpoken: languageSpoken,
          religion: religion,
          ethnicity: ethnicity
      );

      await FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential.user!.uid)
          .set(personInstance.toJson());

      Get.snackbar("Account created successfully",
          "You have successfully created your account.");

    } catch (errorMsg) {
      Get.snackbar("Account creation unsuccessful",
          "Error occured: $errorMsg.toString()");
    }
  }
}
