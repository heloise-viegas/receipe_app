class Category {
  String? catId;
  String? catName;
  String? catImg;
  String? catDesc;

  Category({this.catId, this.catName, this.catImg, this.catDesc});
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        catId: json['idCategory'],
        catName: json['strCategory'],
        catImg: json['strCategoryThumb'],
        catDesc: json['strCategoryDescription']);
  }
}
