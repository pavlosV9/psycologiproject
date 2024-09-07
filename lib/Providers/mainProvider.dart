import 'package:flutter/cupertino.dart';
import 'package:psycologi/models/Categories.dart';
import 'package:psycologi/models/Cities.dart';
class MainProvider extends ChangeNotifier{

   List<Category> getCategoriesList(){
    return CategoryList().categories;
  }
  List<City> getCitiesList(){
     return CityList().citiesList;
  }
}