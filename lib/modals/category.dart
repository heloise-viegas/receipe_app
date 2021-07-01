class Category {
  String? catName;
  String? catImg;
  String? catDesc;

  Category({this.catName, this.catImg, this.catDesc});
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        catName: json['strCategory'],
        catImg: json['strCategoryThumb'],
        catDesc: json['strCategoryDescription']);
  }
}
