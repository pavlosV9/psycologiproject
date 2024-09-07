class City {
  String nameCity;
  String imageUrl;

  // Constructor for the City class
  City(this.nameCity, this.imageUrl);
}

class CityList {
  List<City> citiesList = [
    City("Nicosia", "cityImages/City0.jpg" ),
    City("Limassol", "cityImages/City1.jpg"),
    City("Larnaca", "cityImages/City4.jpg"),
    City("Paphos", "cityImages/City3.jpg"),
    City("Ayia Napa/Protaras", "cityImages/City2.jpg")
  ];
}
