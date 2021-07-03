class Receipe {
  String? receipeId;
  String? receipeName;
  String? receipeDrinkAlternate;
  String? receipeCategory;
  String? receipeArea;
  String? receipeInstructions;
  String? receipeImg;
  String? receipeTags;
  String? receipeYoutube;
  String? receipeIngredient1;
  String? receipeIngredient2;
  String? receipeIngredient3;
  String? receipeIngredient4;
  String? receipeIngredient5;
  String? receipeIngredient6;
  String? receipeIngredient7;
  String? receipeIngredient8;
  String? receipeIngredient9;
  String? receipeIngredient10;
  String? receipeIngredient11;
  String? receipeIngredient12;
  String? receipeIngredient13;
  String? receipeIngredient14;
  String? receipeIngredient15;
  String? receipeIngredient16;
  String? receipeIngredient17;
  String? receipeIngredient18;
  String? receipeIngredient19;
  String? receipeIngredient20;
  String? receipeMeasure1;
  String? receipeMeasure2;
  String? receipeMeasure3;
  String? receipeMeasure4;
  String? receipeMeasure5;
  String? receipeMeasure6;
  String? receipeMeasure7;
  String? receipeMeasure8;
  String? receipeMeasure9;
  String? receipeMeasure10;
  String? receipeMeasure11;
  String? receipeMeasure12;
  String? receipeMeasure13;
  String? receipeMeasure14;
  String? receipeMeasure15;
  String? receipeMeasure16;
  String? receipeMeasure17;
  String? receipeMeasure18;
  String? receipeMeasure19;
  String? receipeMeasure20;
  String? receipSource;
  String? receipeImageSource;
  String? receipeCreativeCommonsConfirmed;
  String? receipeDateModified;

  Receipe({
    this.receipeId,
    this.receipeName,
    this.receipeDrinkAlternate,
    this.receipeCategory,
    this.receipeArea,
    this.receipeInstructions,
    this.receipeImg,
    this.receipeTags,
    this.receipeYoutube,
    this.receipeIngredient1,
    this.receipeIngredient2,
    this.receipeIngredient3,
    this.receipeIngredient4,
    this.receipeIngredient5,
    this.receipeIngredient6,
    this.receipeIngredient7,
    this.receipeIngredient8,
    this.receipeIngredient9,
    this.receipeIngredient10,
    this.receipeIngredient11,
    this.receipeIngredient12,
    this.receipeIngredient13,
    this.receipeIngredient14,
    this.receipeIngredient15,
    this.receipeIngredient16,
    this.receipeIngredient17,
    this.receipeIngredient18,
    this.receipeIngredient19,
    this.receipeIngredient20,
    this.receipeMeasure1,
    this.receipeMeasure2,
    this.receipeMeasure3,
    this.receipeMeasure4,
    this.receipeMeasure5,
    this.receipeMeasure6,
    this.receipeMeasure7,
    this.receipeMeasure8,
    this.receipeMeasure9,
    this.receipeMeasure10,
    this.receipeMeasure11,
    this.receipeMeasure12,
    this.receipeMeasure13,
    this.receipeMeasure14,
    this.receipeMeasure15,
    this.receipeMeasure16,
    this.receipeMeasure17,
    this.receipeMeasure18,
    this.receipeMeasure19,
    this.receipeMeasure20,
    this.receipSource,
    this.receipeImageSource,
    this.receipeCreativeCommonsConfirmed,
    this.receipeDateModified,
  });

  factory Receipe.fromJson(Map<String, dynamic> json) {
    return Receipe(
      receipeId: json['idMeal'],
      receipeName: json['strMeal'],
      receipeDrinkAlternate: json['strDrinkAlternate'],
      receipeCategory: json['strCategory'],
      receipeArea: json['strArea'],
      receipeInstructions: json['strInstructions'],
      receipeImg: json['strMealThumb'],
      receipeTags: json['strTags'],
      receipeYoutube: json['strYoutube'],
      receipeIngredient1: json['strIngredient1'],
      receipeIngredient2: json['strIngredient2'],
      receipeIngredient3: json['strIngredient3'],
      receipeIngredient4: json['strIngredient4'],
      receipeIngredient5: json['strIngredient5'],
      receipeIngredient6: json['strIngredient6'],
      receipeIngredient7: json['strIngredient7'],
      receipeIngredient8: json['strIngredient8'],
      receipeIngredient9: json['strIngredient9'],
      receipeIngredient10: json['strIngredient10'],
      receipeIngredient11: json['strIngredient11'],
      receipeIngredient12: json['strIngredient12'],
      receipeIngredient13: json['strIngredient13'],
      receipeIngredient14: json['strIngredient14'],
      receipeIngredient15: json['strIngredient15'],
      receipeIngredient16: json['strIngredient16'],
      receipeIngredient17: json['strIngredient17'],
      receipeIngredient18: json['strIngredient18'],
      receipeIngredient19: json['strIngredient19'],
      receipeIngredient20: json['strIngredient20'],
      receipeMeasure1: json['strMeasure1'],
      receipeMeasure2: json['strMeasure2'],
      receipeMeasure3: json['strMeasure3'],
      receipeMeasure4: json['strMeasure4'],
      receipeMeasure5: json['strMeasure5'],
      receipeMeasure6: json['strMeasure6'],
      receipeMeasure7: json['strMeasure7'],
      receipeMeasure8: json['strMeasure8'],
      receipeMeasure9: json['strMeasure9'],
      receipeMeasure10: json['strMeasure10'],
      receipeMeasure11: json['strMeasure11'],
      receipeMeasure12: json['strMeasure12'],
      receipeMeasure13: json['strMeasure13'],
      receipeMeasure14: json['strMeasure14'],
      receipeMeasure15: json['strMeasure15'],
      receipeMeasure16: json['strMeasure16'],
      receipeMeasure17: json['strMeasure17'],
      receipeMeasure18: json['strMeasure18'],
      receipeMeasure19: json['strMeasure19'],
      receipeMeasure20: json['strMeasure20'],
      receipSource: json['strSource'],
      receipeImageSource: json['strImageSource'],
      receipeCreativeCommonsConfirmed: json['strCreativeCommonsConfirmed'],
      receipeDateModified: json['dateModified'],
    );
  }
}
