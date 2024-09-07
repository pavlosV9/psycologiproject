class Category {
  String categoryName;
  String imgUrl;
  int index;

  // Constructor with a default value for imgUrl if not provided
  Category(this.categoryName, {this.imgUrl = "assets/klinikos.jpg", required this.index});
}

class CategoryList {
  List<Category> categories = [
    Category("ΣΧΟΛΙΚΟΣ ΨΥΧΟΛΟΓΟΣ", imgUrl: "proffesionalsImages/school_pcycho.jpg", index: 0),
    Category("ΚΛΙΝΙΚΟΣ ΨΥΧΟΛΟΓΟΣ", imgUrl: "proffesionalsImages/klinikos.jpg", index: 1),
    Category("ΣΥΜΒΟΥΛΕΥΤΙΚΟΣ ΨΥΧΟΛΟΓΟΣ", imgUrl: "proffesionalsImages/symvuleftikos.png", index: 2),
    Category("ΛΟΓΟΘΕΡΑΠΕΥΤΗΣ", imgUrl: "proffesionalsImages/speech.jpg", index: 3),
    Category("ΕΡΓΟΘΕΡΑΠΕΥΤΗΣ",imgUrl: "proffesionalsImages/ergother.png", index: 4),
    Category("ΕΙΔΙΚΗ ΕΚΠΑΙΔΕΥΣΗ",imgUrl: "proffesionalsImages/special_ekpedefsi.jpg", index: 5),
    Category("ΨΥΧΟΘΕΡΑΠΕΥΤΗΣ", index: 6, imgUrl: "proffesionalsImages/psyxotherapia.jpg"),
  ];
}
