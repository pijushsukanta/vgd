class Upazilla {
  String id;
  String creationDate;
  String? modificationDate;
  String isDeleted;
  String active;
  String type;
  String code;
  String nameInBangla;
  String nameInEnglish;
  String createdBy;
  String? modifiedBy;
  String districtId;
  String? unionCount;

//<editor-fold desc="Data Methods">

  Upazilla({
    required this.id,
    required this.creationDate,
    this.modificationDate,
    required this.isDeleted,
    required this.active,
    required this.type,
    required this.code,
    required this.nameInBangla,
    required this.nameInEnglish,
    required this.createdBy,
    this.modifiedBy,
    required this.districtId,
    this.unionCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Upazilla &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          creationDate == other.creationDate &&
          modificationDate == other.modificationDate &&
          isDeleted == other.isDeleted &&
          active == other.active &&
          type == other.type &&
          code == other.code &&
          nameInBangla == other.nameInBangla &&
          nameInEnglish == other.nameInEnglish &&
          createdBy == other.createdBy &&
          modifiedBy == other.modifiedBy &&
          districtId == other.districtId &&
          unionCount == other.unionCount);

  @override
  int get hashCode =>
      id.hashCode ^
      creationDate.hashCode ^
      modificationDate.hashCode ^
      isDeleted.hashCode ^
      active.hashCode ^
      type.hashCode ^
      code.hashCode ^
      nameInBangla.hashCode ^
      nameInEnglish.hashCode ^
      createdBy.hashCode ^
      modifiedBy.hashCode ^
      districtId.hashCode ^
      unionCount.hashCode;

  @override
  String toString() {
    return 'Upazilla{' +
        ' id: $id,' +
        ' creationDate: $creationDate,' +
        ' modificationDate: $modificationDate,' +
        ' isDeleted: $isDeleted,' +
        ' active: $active,' +
        ' type: $type,' +
        ' code: $code,' +
        ' nameInBangla: $nameInBangla,' +
        ' nameInEnglish: $nameInEnglish,' +
        ' createdBy: $createdBy,' +
        ' modifiedBy: $modifiedBy,' +
        ' districtId: $districtId,' +
        ' unionCount: $unionCount,' +
        '}';
  }

  Upazilla copyWith({
    String? id,
    String? creationDate,
    String? modificationDate,
    String? isDeleted,
    String? active,
    String? type,
    String? code,
    String? nameInBangla,
    String? nameInEnglish,
    String? createdBy,
    String? modifiedBy,
    String? districtId,
    String? unionCount,
  }) {
    return Upazilla(
      id: id ?? this.id,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      isDeleted: isDeleted ?? this.isDeleted,
      active: active ?? this.active,
      type: type ?? this.type,
      code: code ?? this.code,
      nameInBangla: nameInBangla ?? this.nameInBangla,
      nameInEnglish: nameInEnglish ?? this.nameInEnglish,
      createdBy: createdBy ?? this.createdBy,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      districtId: districtId ?? this.districtId,
      unionCount: unionCount ?? this.unionCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'creationDate': this.creationDate,
      'modificationDate': this.modificationDate,
      'isDeleted': this.isDeleted,
      'active': this.active,
      'type': this.type,
      'code': this.code,
      'nameInBangla': this.nameInBangla,
      'nameInEnglish': this.nameInEnglish,
      'createdBy': this.createdBy,
      'modifiedBy': this.modifiedBy,
      'districtId': this.districtId,
      'unionCount': this.unionCount,
    };
  }

  factory Upazilla.fromMap(Map<String, dynamic> map) {
    return Upazilla(
      id: map['id'] as String,
      creationDate: map['creationDate'] as String,
      modificationDate: map['modificationDate'] as String,
      isDeleted: map['isDeleted'] as String,
      active: map['active'] as String,
      type: map['type'] as String,
      code: map['code'] as String,
      nameInBangla: map['nameInBangla'] as String,
      nameInEnglish: map['nameInEnglish'] as String,
      createdBy: map['createdBy'] as String,
      modifiedBy: map['modifiedBy'] as String,
      districtId: map['districtId'] as String,
      unionCount: map['unionCount'] as String,
    );
  }

//</editor-fold>
}