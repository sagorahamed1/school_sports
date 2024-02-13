import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:school_sports/utils/app_images.dart';

import '../views/screens/NosSports/nos_sports_all_page/Cheerleading/cheerleading_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/Danse/danse_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/Fitness/fitness_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/Football/football_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/Futsallf/futsallf_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/HandballF/handballf_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/Natation/natation_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/RugbyM/rugby_m_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/basket_ball/basket_ball.dart';
import '../views/screens/NosSports/nos_sports_all_page/boxe/boxe_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/handball_m/handballm_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/street_workout/street_workout_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/tennis_f/tennis_f_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/volley_f/volley_f_screen.dart';
import '../views/screens/NosSports/nos_sports_all_page/volley_m/volley_m_screen.dart';

class NosSportsController extends GetxController {
  List nosSportsList = [
    {"sportsName": "Basketball", "sportsTitle": "Masculin", "sportsImage": AppImages.basketball, "page" : BasketBallScreen()},
    {"sportsName": "Boxe", "sportsTitle": "", "sportsImage": AppImages.boxe, "page" : BoxeScreen()},
    {"sportsName": "Cheerleading", "sportsTitle": "", "sportsImage": AppImages.cheerleading, "page" : CheerleadingScreen()},
    {"sportsName": "Danse", "sportsTitle": "", "sportsImage": AppImages.danse, "page" : DanseScreen()},
    {"sportsName": "Fitness", "sportsTitle": "", "sportsImage": AppImages.fitness, "page" : FitnessScreen()},
    {"sportsName": "Football", "sportsTitle": "", "sportsImage": AppImages.football, "page" : FootballScreen()},
    {"sportsName": "Futsal", "sportsTitle": "", "sportsImage": AppImages.futsal, "page" : FutsallFScreen()},
    {"sportsName": "Natation", "sportsTitle": "", "sportsImage": AppImages.natation, "page" : NatationScreen()},
    {"sportsName": "Handball", "sportsTitle": "Féminin", "sportsImage": AppImages.handball, "page" : HandballFScreen()},
    {"sportsName": "Handball", "sportsTitle": "Féminin", "sportsImage": AppImages.handball1, "page" : HandballMScreen()},
    {"sportsName": "Rugby", "sportsTitle": "", "sportsImage": AppImages.rugby, "page" : RugbyMScreen()},
    {"sportsName": "Street\n Workout", "sportsTitle": "", "sportsImage": AppImages.street, "page" : StreetWorkOutScreen()},
    {"sportsName": "Tennis", "sportsTitle": "Féminin", "sportsImage": AppImages.trennis, "page" : TennisFScreen()},
    {"sportsName": "Tennis", "sportsTitle": "Masculin", "sportsImage": AppImages.trennis, "page" : TennisFScreen()},
    {"sportsName": "Volleyball", "sportsTitle": "Féminin", "sportsImage": AppImages.volleyball, "page" : VolleyFScreen()},
    {"sportsName": "Volleyball", "sportsTitle": "Masculin", "sportsImage": AppImages.volleyball, "page" : VolleyMScreen()},
  ].obs;
}
