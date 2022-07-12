class Division {
  String id;
  String creationDate;
  String modificationDate;
  String isDeleted;
  String active;
  String code;
  String nameInBangla;
  String nameInEnglish;
  String createdBy;
  String modifiedBy;


  Division({
    required this.id,
    required this.creationDate,
    required this.modificationDate,
    required this.isDeleted,
    required this.active,
    required this.code,
    required this.nameInBangla,
    required this.nameInEnglish,
    required this.createdBy,
    required this.modifiedBy,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Division &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          creationDate == other.creationDate &&
          modificationDate == other.modificationDate &&
          isDeleted == other.isDeleted &&
          active == other.active &&
          code == other.code &&
          nameInBangla == other.nameInBangla &&
          nameInEnglish == other.nameInEnglish &&
          createdBy == other.createdBy &&
          modifiedBy == other.modifiedBy);

  @override
  int get hashCode =>
      id.hashCode ^
      creationDate.hashCode ^
      modificationDate.hashCode ^
      isDeleted.hashCode ^
      active.hashCode ^
      code.hashCode ^
      nameInBangla.hashCode ^
      nameInEnglish.hashCode ^
      createdBy.hashCode ^
      modifiedBy.hashCode;

  @override
  String toString() {
    return 'Division{' +
        ' id: $id,' +
        ' creationDate: $creationDate,' +
        ' modificationDate: $modificationDate,' +
        ' isDeleted: $isDeleted,' +
        ' active: $active,' +
        ' code: $code,' +
        ' nameInBangla: $nameInBangla,' +
        ' nameInEnglish: $nameInEnglish,' +
        ' createdBy: $createdBy,' +
        ' modifiedBy: $modifiedBy,' +
        '}';
  }

  Division copyWith({
    String? id,
    String? creationDate,
    String? modificationDate,
    String? isDeleted,
    String? active,
    String? code,
    String? nameInBangla,
    String? nameInEnglish,
    String? createdBy,
    String? modifiedBy,
  }) {
    return Division(
      id: id ?? this.id,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      isDeleted: isDeleted ?? this.isDeleted,
      active: active ?? this.active,
      code: code ?? this.code,
      nameInBangla: nameInBangla ?? this.nameInBangla,
      nameInEnglish: nameInEnglish ?? this.nameInEnglish,
      createdBy: createdBy ?? this.createdBy,
      modifiedBy: modifiedBy ?? this.modifiedBy,
    );
  }

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
    };
  }

  factory Division.fromMap(Map<String, dynamic> map) {
    return Division(
      id: map['id'] as String,
      creationDate: map['creationDate'] as String,
      modificationDate: map['modificationDate'] as String,
      isDeleted: map['isDeleted'] as String,
      active: map['active'] as String,
      code: map['code'] as String,
      nameInBangla: map['nameInBangla'] as String,
      nameInEnglish: map['nameInEnglish'] as String,
      createdBy: map['createdBy'] as String,
      modifiedBy: map['modifiedBy'] as String,
    );
  }

}