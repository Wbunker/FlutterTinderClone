import 'dart:core';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  //personal info
  String? imageProfile;
  String? email;
  String? password;
  String? name;
  String? age;
  String? phoneNumber;
  String? city;
  String? country;
  String? profileHeading;
  String? lookingFor;
  int? publishedDateTime;

  //appearance
  String? height;
  String? weight;
  String? bodyType;

  // life style
  String? drink;
  String? smoke;
  String? maritalStatus;
  String? haveChildren;
  String? numberOfChildren;
  String? profession;
  String? employmentStatus;
  String? income;
  String? livingSituation;
  String? willingToRelocate;
  String? relationshipDesired;

  //background
  String? nationality;
  String? education;
  String? languageSpoken;
  String? religion;
  String? ethnicity;

  Person({
    //personal info
    this.imageProfile,
    this.email,
    this.password,
    this.name,
    this.age,
    this.phoneNumber,
    this.city,
    this.country,
    this.profileHeading,
    this.lookingFor,
    this.publishedDateTime,

    //appearance
    this.height,
    this.weight,
    this.bodyType,

    // life style
    this.drink,
    this.smoke,
    this.maritalStatus,
    this.haveChildren,
    this.numberOfChildren,
    this.profession,
    this.employmentStatus,
    this.income,
    this.livingSituation,
    this.willingToRelocate,
    this.relationshipDesired,

    //background
    this.nationality,
    this.education,
    this.languageSpoken,
    this.religion,
    this.ethnicity,
  });

  static Person fromdataSnapshot(DocumentSnapshot snapshot) {
    var dataSnapshot = snapshot.data() as Map<String, dynamic>;

    return Person(
      //personal info
      imageProfile: dataSnapshot['imageProfile'],
      email: dataSnapshot['email'],
      password: dataSnapshot['password'],
      name: dataSnapshot['name'],
      age: dataSnapshot['age'],
      phoneNumber: dataSnapshot['phoneNumber'],
      city: dataSnapshot['city'],
      country: dataSnapshot['country'],
      profileHeading: dataSnapshot['profileHeading'],
      lookingFor: dataSnapshot['lookingFor'],
      publishedDateTime: dataSnapshot['publishedDateTime'],
      //appearance
      height: dataSnapshot['height'],
      weight: dataSnapshot['weight'],
      bodyType: dataSnapshot['bodyType'],
      // life style
      drink: dataSnapshot['drink'],
      smoke: dataSnapshot['smoke'],
      maritalStatus: dataSnapshot['maritalStatus'],
      haveChildren: dataSnapshot['haveChildren'],
      numberOfChildren: dataSnapshot['numberOfChildren'],
      profession: dataSnapshot['profession'],
      employmentStatus: dataSnapshot['employmentStatus'],
      income: dataSnapshot['income'],
      livingSituation: dataSnapshot['livingSituation'],
      willingToRelocate: dataSnapshot['willingToRelocate'],
      relationshipDesired: dataSnapshot['relationshipDesired'],
      //background
      nationality: dataSnapshot['nationality'],
      education: dataSnapshot['education'],
      languageSpoken: dataSnapshot['languageSpoken'],
      religion: dataSnapshot['religion'],
      ethnicity: dataSnapshot['ethnicity'],
    );
  }

  // convert data to json
  Map<String, dynamic> toJson() {
    return {
      //personal info
      'imageProfile': imageProfile,
      'email': email,
      'password': password,
      'name': name,
      'age': age,
      'phoneNumber': phoneNumber,
      'city': city,
      'country': country,
      'profileHeading': profileHeading,
      'lookingFor': lookingFor,
      'publishedDateTime': publishedDateTime,
      //appearance
      'height': height,
      'weight': weight,
      'bodyType': bodyType,
      // life style
      'drink': drink,
      'smoke': smoke,
      'maritalStatus': maritalStatus,
      'haveChildren': haveChildren,
      'numberOfChildren': numberOfChildren,
      'profession': profession,
      'employmentStatus': employmentStatus,
      'income': income,
      'livingSituation': livingSituation,
      'willingToRelocate': willingToRelocate,
      'relationshipDesired': relationshipDesired,
      //background
      'nationality': nationality,
      'education': education,
      'languageSpoken': languageSpoken,
      'religion': religion,
      'ethnicity': ethnicity
    };
  }
}
