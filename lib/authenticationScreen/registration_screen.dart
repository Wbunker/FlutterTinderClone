import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  // personal info
  TextEditingController  emailTextEditingController = TextEditingController();
  TextEditingController  passwordTextEditingController = TextEditingController();
  TextEditingController  nameTextEditingController = TextEditingController();
  TextEditingController  ageTextEditingController = TextEditingController();
  TextEditingController  phoneTextEditingController = TextEditingController();
  TextEditingController  cityTextEditingController = TextEditingController();
  TextEditingController  countryTextEditingController = TextEditingController();
  TextEditingController  profileHeadingTextEditingController = TextEditingController();
  TextEditingController  lookingForTextEditingController = TextEditingController();

  //Appearance
  TextEditingController  heightTextEditingController = TextEditingController();
  TextEditingController  weightTextEditingController = TextEditingController();
  TextEditingController  bodyTypeTextEditingController = TextEditingController();

  // Life style
  TextEditingController  drinkTextEditingController = TextEditingController();
  TextEditingController  smokeTextEditingController = TextEditingController();
  TextEditingController  maritalStatusTextEditingController = TextEditingController();
  TextEditingController  haveChildrenTextEditingController = TextEditingController();
  TextEditingController  numberOfChildrenTextEditingController = TextEditingController();
  TextEditingController  professionTextEditingController = TextEditingController();
  TextEditingController  employmentStatusTextEditingController = TextEditingController();
  TextEditingController  incomeTextEditingController = TextEditingController();
  TextEditingController  livingSituationTextEditingController = TextEditingController();
  TextEditingController  willingToRelocateTextEditingController = TextEditingController();
  TextEditingController  relationshipDesiredTextEditingController = TextEditingController();

  // Background - Cultural values
  TextEditingController  nationalityTextEditingController = TextEditingController();
  TextEditingController  educationTextEditingController = TextEditingController();
  TextEditingController  languageTextEditingController = TextEditingController();
  TextEditingController  religionTextEditingController = TextEditingController();
  TextEditingController  ethnicityTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "to get Started Now",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: ()
                {

                },
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/profile_avatar.jpg"
                  ),
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
