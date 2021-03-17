import 'package:appkinsonFront/views/HomeDifferentUsers/Carer/CarerHomePage.dart';
import 'package:appkinsonFront/views/Relations/interactionCarerPatient.dart';
import 'package:appkinsonFront/views/profiles/Carer/CarerProfle.dart';
import 'package:appkinsonFront/views/profiles/Carer/profileEdition/ProfileEditionCarer.dart';
import 'package:flutter/material.dart';

class RoutesCarer {
  toCarerHome(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => CarerHomePage()));
  }

  toCarerProfile(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => MyHomePage3()));
  }

  toCarerEditProfile(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => ProfileEditionCarer()));
  }

  toInteractionCarerPatient(BuildContext context, int idPatient) {
    print('patient pantalla intermedia ${idPatient.toString()}');
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => InteractionCarerPatient(
              idPatient: idPatient,
            )));
  }

}
