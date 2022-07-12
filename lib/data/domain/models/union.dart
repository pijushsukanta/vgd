class Union {
  String id;
  String creationDate;
  String? modificationDate;
  String isDeleted;
  String active;
  String parentType;
  String coverageArea;
  String coverageAreaClass;
  String code;
  String nameInBangla;
  String nameInEnglish;
  String createdBy;
  String? modifiedBy;
  String upazillaId;


  Union({
    required this.id,
    required this.creationDate,
    this.modificationDate,
    required this.isDeleted,
    required this.active,
    required this.parentType,
    required this.coverageArea,
    required this.coverageAreaClass,
    required this.code,
    required this.nameInBangla,
    required this.nameInEnglish,
    required this.createdBy,
    this.modifiedBy,
    required this.upazillaId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Union &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          creationDate == other.creationDate &&
          modificationDate == other.modificationDate &&
          isDeleted == other.isDeleted &&
          active == other.active &&
          parentType == other.parentType &&
          coverageArea == other.coverageArea &&
          coverageAreaClass == other.coverageAreaClass &&
          code == other.code &&
          nameInBangla == other.nameInBangla &&
          nameInEnglish == other.nameInEnglish &&
          createdBy == other.createdBy &&
          modifiedBy == other.modifiedBy &&
          upazillaId == other.upazillaId);

  @override
  int get hashCode =>
      id.hashCode ^
      creationDate.hashCode ^
      modificationDate.hashCode ^
      isDeleted.hashCode ^
      active.hashCode ^
      parentType.hashCode ^
      coverageArea.hashCode ^
      coverageAreaClass.hashCode ^
      code.hashCode ^
      nameInBangla.hashCode ^
      nameInEnglish.hashCode ^
      createdBy.hashCode ^
      modifiedBy.hashCode ^
      upazillaId.hashCode;

  @override
  String toString() {
    return 'Union{' +
        ' id: $id,' +
        ' creationDate: $creationDate,' +
        ' modificationDate: $modificationDate,' +
        ' isDeleted: $isDeleted,' +
        ' active: $active,' +
        ' parentType: $parentType,' +
        ' coverageArea: $coverageArea,' +
        ' coverageAreaClass: $coverageAreaClass,' +
        ' code: $code,' +
        ' nameInBangla: $nameInBangla,' +
        ' nameInEnglish: $nameInEnglish,' +
        ' createdBy: $createdBy,' +
        ' modifiedBy: $modifiedBy,' +
        ' upazillaId: $upazillaId,' +
        '}';
  }

  Union copyWith({
    String? id,
    String? creationDate,
    String? modificationDate,
    String? isDeleted,
    String? active,
    String? parentType,
    String? coverageArea,
    String? coverageAreaClass,
    String? code,
    String? nameInBangla,
    String? nameInEnglish,
    String? createdBy,
    String? modifiedBy,
    String? upazillaId,
  }) {
    return Union(
      id: id ?? this.id,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      isDeleted: isDeleted ?? this.isDeleted,
      active: active ?? this.active,
      parentType: parentType ?? this.parentType,
      coverageArea: coverageArea ?? this.coverageArea,
      coverageAreaClass: coverageAreaClass ?? this.coverageAreaClass,
      code: code ?? this.code,
      nameInBangla: nameInBangla ?? this.nameInBangla,
      nameInEnglish: nameInEnglish ?? this.nameInEnglish,
      createdBy: createdBy ?? this.createdBy,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      upazillaId: upazillaId ?? this.upazillaId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'creationDate': this.creationDate,
      'modificationDate': this.modificationDate,
      'isDeleted': this.isDeleted,
      'active': this.active,
      'parentType': this.parentType,
      'coverageArea': this.coverageArea,
      'coverageAreaClass': this.coverageAreaClass,
      'code': this.code,
      'nameInBangla': this.nameInBangla,
      'nameInEnglish': this.nameInEnglish,
      'createdBy': this.createdBy,
      'modifiedBy': this.modifiedBy,
      'upazillaId': this.upazillaId,
    };
  }

  factory Union.fromMap(Map<String, dynamic> map) {
    return Union(
      id: map['id'] as String,
      creationDate: map['creationDate'] as String,
      modificationDate: map['modificationDate'] as String,
      isDeleted: map['isDeleted'] as String,
      active: map['active'] as String,
      parentType: map['parentType'] as String,
      coverageArea: map['coverageArea'] as String,
      coverageAreaClass: map['coverageAreaClass'] as String,
      code: map['code'] as String,
      nameInBangla: map['nameInBangla'] as String,
      nameInEnglish: map['nameInEnglish'] as String,
      createdBy: map['createdBy'] as String,
      modifiedBy: map['modifiedBy'] as String,
      upazillaId: map['upazillaId'] as String,
    );
  }

}