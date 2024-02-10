import 'package:get/get.dart';
import 'package:school_sports/utils/app_images.dart';

class NosSportsController extends GetxController {
  List nosSportsList = [
    {"sportsName": "Basketball", "sportsTitle": "Masculin", "sportsImage": AppImages.basketball},
    {"sportsName": "Boxe", "sportsTitle": "", "sportsImage": AppImages.boxe},
    {"sportsName": "Cheerleading", "sportsTitle": "", "sportsImage": AppImages.cheerleading},
    {"sportsName": "Danse", "sportsTitle": "", "sportsImage": AppImages.danse},
    {"sportsName": "Fitness", "sportsTitle": "", "sportsImage": AppImages.fitness},
    {"sportsName": "Football", "sportsTitle": "", "sportsImage": AppImages.football},
    {"sportsName": "Futsal", "sportsTitle": "", "sportsImage": AppImages.futsal},
    {"sportsName": "Natation", "sportsTitle": "", "sportsImage": AppImages.natation},
    {"sportsName": "Handball", "sportsTitle": "Féminin", "sportsImage": AppImages.handball},
  ].obs;
}
