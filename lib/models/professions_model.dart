class ProfessionsModel {
  int? id;
  String? category;
  List<String>? subCategories;

  ProfessionsModel({this.id, this.category, this.subCategories});

  factory ProfessionsModel.fromJson(Map<String, dynamic> json) {
    return ProfessionsModel(
      id: json['Id'] as int?,
      category: json['category'] as String?,
      subCategories: json['subCategories'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'Id': id,
        'category': category,
        'subCategories': subCategories,
      };
}
