

class DistrictItems{
  static  List<District> items = [];
}

class District {
  String id;
  String creationDate;
  String? modificationDate;
  String isDeleted;
  String active;
  String code;
  String nameInBangla;
  String nameInEnglish;
  String createdBy;
  String? modifiedBy;
  String divisionId;

  District({
    required this.id,
    required this.creationDate,
    this.modificationDate,
    required this.isDeleted,
    required this.active,
    required this.code,
    required this.nameInBangla,
    required this.nameInEnglish,
    required this.createdBy,
    this.modifiedBy,
    required this.divisionId,
  });



  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'creationDate': this.creationDate,
      'modificationDate': this.modificationDate,
      'isDeleted': this.isDeleted,
      'active': this.active,
      'code': this.code,
      'nameInBangla': this.nameInBangla,
      'nameInEnglish': this.nameInEnglish,
      'createdBy': this.createdBy,
      'modifiedBy': this.modifiedBy,
      'divisionId': this.divisionId,
    };
  }

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'],
      creationDate: map['creationDate'],
      modificationDate: map['modificationDate'],
      isDeleted: map['isDeleted'],
      active: map['active'],
      code: map['code'],
      nameInBangla: map['nameInBangla'],
      nameInEnglish: map['nameInEnglish'],
      createdBy: map['createdBy'],
      modifiedBy: map['modifiedBy'],
      divisionId: map['divisionId'],
    );
  }

}