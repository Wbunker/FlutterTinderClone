import 'dart:io';

import 'package:dating_app/controllers/authentication_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showProgressBar = false;
  var authenticationController = AuthenticationController();

  // personal info
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController countryTextEditingController = TextEditingController();
  TextEditingController profileHeadingTextEditingController =
      TextEditingController();
  TextEditingController lookingForTextEditingController =
      TextEditingController();

  //Appearance
  TextEditingController heightTextEditingController = TextEditingController();
  TextEditingController weightTextEditingController = TextEditingController();
  TextEditingController bodyTypeTextEditingController = TextEditingController();

  // Life style
  TextEditingController drinkTextEditingController = TextEditingController();
  TextEditingController smokeTextEditingController = TextEditingController();
  TextEditingController maritalStatusTextEditingController =
      TextEditingController();
  TextEditingController haveChildrenTextEditingController =
      TextEditingController();
  TextEditingController numberOfChildrenTextEditingController =
      TextEditingController();
  TextEditingController professionTextEditingController =
      TextEditingController();
  TextEditingController employmentStatusTextEditingController =
      TextEditingController();
  TextEditingController incomeTextEditingController = TextEditingController();
  TextEditingController livingSituationTextEditingController =
      TextEditingController();
  TextEditingController willingToRelocateTextEditingController =
      TextEditingController();
  TextEditingController relationshipDesiredTextEditingController =
      TextEditingController();

  // Background - Cultural values
  TextEditingController nationalityTextEditingController =
      TextEditingController();
  TextEditingController educationTextEditingController =
      TextEditingController();
  TextEditingController languageTextEditingController = TextEditingController();
  TextEditingController religionTextEditingController = TextEditingController();
  TextEditingController ethnicityTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "to get Started Now",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            // choose image circle avatar
            authenticationController.imageFile == null ?
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("images/profile_avatar.jpg"),
              backgroundColor: Colors.black,
            )
            :
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: FileImage(
                    File(
                      authenticationController.imageFile!.path
                    )
                  )
                )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      await authenticationController.pickImageFileFromGallery();
                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(Icons.image_outlined, color: Colors.grey, size: 30,)),
                const SizedBox(width: 20,),
                IconButton(
                    onPressed: () async {
                      await authenticationController.captureImageFromPhoneCamera();
                      setState(() {
                        authenticationController.imageFile;
                      });
                    },
                    icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey, size: 30,))
              ],
            ),

            const SizedBox(height: 20,),
            //************************************
            // personal info
            //************************************
            const Text(
              "Personal Info",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // name
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: nameTextEditingController,
                labelText: "Name",
                iconData: Icons.person_outline,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // email
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: emailTextEditingController,
                labelText: "Email",
                iconData: Icons.email_outlined,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // password
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: passwordTextEditingController,
                labelText: "Password",
                iconData: Icons.lock_outline,
                isObscure: true,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // age
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: ageTextEditingController,
                labelText: "Age",
                iconData: Icons.numbers,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //phone number
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: phoneTextEditingController,
                labelText: "Phone",
                iconData: Icons.phone,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // city
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: cityTextEditingController,
                labelText: "City",
                iconData: Icons.location_city,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //country
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: countryTextEditingController,
                labelText: "Country",
                iconData: Icons.location_city,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // profile heading
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: profileHeadingTextEditingController,
                labelText: "Profile Heading",
                iconData: Icons.text_fields,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //looking for
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: lookingForTextEditingController,
                labelText: "What are you looking for in partner?",
                iconData: Icons.face,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //************************************
            // Appearance
            //************************************
            const Text(
              "Appearance",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // height
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: heightTextEditingController,
                labelText: "Height",
                iconData: Icons.insert_chart,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // weight
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: weightTextEditingController,
                labelText: "Weight",
                iconData: Icons.table_chart,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // body type
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: bodyTypeTextEditingController,
                labelText: "Body type",
                iconData: Icons.type_specimen,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //************************************
            // Life style
            //************************************
            const Text(
              "Life Style",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // drink
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: drinkTextEditingController,
                labelText: "Drink",
                iconData: Icons.local_drink_outlined,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // smoke
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: smokeTextEditingController,
                labelText: "Smoke",
                iconData: Icons.smoking_rooms,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // marital status
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: maritalStatusTextEditingController,
                labelText: "Marital status",
                iconData: CupertinoIcons.person_2,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // have children
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: haveChildrenTextEditingController,
                labelText: "Do you have children?",
                iconData: CupertinoIcons.person_3_fill,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // number of children
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: numberOfChildrenTextEditingController,
                labelText: "Number of children",
                iconData: CupertinoIcons.person_3_fill,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // profession
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: professionTextEditingController,
                labelText: "Profession",
                iconData: Icons.business_center,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // employment status
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: employmentStatusTextEditingController,
                labelText: "Employment status",
                iconData: CupertinoIcons.rectangle_stack_person_crop_fill,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // income
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: incomeTextEditingController,
                labelText: "Income",
                iconData: CupertinoIcons.money_dollar_circle,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // living situation
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: livingSituationTextEditingController,
                labelText: "Living situation",
                iconData: CupertinoIcons.person_2_square_stack,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // willing to relocate
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: willingToRelocateTextEditingController,
                labelText: "Are you willing to relocate?",
                iconData: CupertinoIcons.person_2,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // relationship desired
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: relationshipDesiredTextEditingController,
                labelText: "Kind of relationship you are looking for?",
                iconData: CupertinoIcons.person,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //************************************
            // Background
            //************************************
            const Text(
              "Background",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // nationality
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: nationalityTextEditingController,
                labelText: "Nationality",
                iconData: Icons.flag_circle_outlined,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // education
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: educationTextEditingController,
                labelText: "Education",
                iconData: Icons.history_edu,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // language
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: languageTextEditingController,
                labelText: "Language spoken",
                iconData: CupertinoIcons.person_badge_plus_fill,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // religion
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: religionTextEditingController,
                labelText: "Religion",
                iconData: Icons.church,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // Ethnicity
            SizedBox(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              child: CustomTextFieldWidget(
                editingController: ethnicityTextEditingController,
                labelText: "Ethnicity",
                iconData: CupertinoIcons.eye,
                isObscure: false,
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // create account button
            Container(
              width: MediaQuery.of(context).size.width - 36,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: InkWell(
                onTap: () {},
                child: const Center(
                    child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            // already have an account/ login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    "Login Here",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            showProgressBar == true
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                  )
                : Container(),
            const SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}
