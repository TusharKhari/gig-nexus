class CityStateModal {
  int? id;
  String? state;
  List<String>? cities;

  CityStateModal({this.id, this.state, this.cities});

  factory CityStateModal.fromJson(Map<String, dynamic> json) {
    return CityStateModal(
      id: json['Id'] as int?,
      state: json['state'] as String?,
      cities: json['cities'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'Id': id,
        'state': state,
        'cities': cities,
      };
}
