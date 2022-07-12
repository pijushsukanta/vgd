class Village {
  String id;
  String creationDate;
  String modificationDate;
  String active;
  String code;
  String nameInBangla;
  String nameInEnglish;
  String wardNo;
  String createdBy;
  String modifiedBy;
  String unionId;
  String upazilaId;
  String divisionId;
  String districtId;

  Village({
    required this.id,
    required this.creationDate,
    required this.modificationDate,
    required this.active,
    required this.code,
    required this.nameInBangla,
    required this.nameInEnglish,
    required this.wardNo,
    required this.createdBy,
    required this.modifiedBy,
    required this.unionId,
    required this.upazilaId,
    required this.divisionId,
    required this.districtId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Village &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          creationDate == other.creationDate &&
          modificationDate == other.modificationDate &&
          active == other.active &&
          code == other.code &&
          nameInBangla == other.nameInBangla &&
          nameInEnglish == other.nameInEnglish &&
          wardNo == other.wardNo &&
          createdBy == other.createdBy &&
          modifiedBy == other.modifiedBy &&
          unionId == other.unionId &&
          upazilaId == other.upazilaId &&
          divisionId == other.divisionId &&
          districtId == other.districtId);

  @override
  int get hashCode =>
      id.hashCode ^
      creationDate.hashCode ^
      modificationDate.hashCode ^
      active.hashCode ^
      code.hashCode ^
      nameInBangla.hashCode ^
      nameInEnglish.hashCode ^
      wardNo.hashCode ^
      createdBy.hashCode ^
      modifiedBy.hashCode ^
      unionId.hashCode ^
      upazilaId.hashCode ^
      divisionId.hashCode ^
      districtId.hashCode;

  @override
  String toString() {
    return 'Village{' +
        ' id: $id,' +
        ' creationDate: $creationDate,' +
        ' modificationDate: $modificationDate,' +
        ' active: $active,' +
        ' code: $code,' +
        ' nameInBangla: $nameInBangla,' +
        ' nameInEnglish: $nameInEnglish,' +
        ' wardNo: $wardNo,' +
        ' createdBy: $createdBy,' +
        ' modifiedBy: $modifiedBy,' +
        ' unionId: $unionId,' +
        ' upazilaId: $upazilaId,' +
        ' divisionId: $divisionId,' +
        ' districtId: $districtId,' +
        '}';
  }

  Village copyWith({
    String? id,
    String? creationDate,
    Null? modificationDate,
    String? active,
    String? code,
    String? nameInBangla,
    String? nameInEnglish,
    String? wardNo,
    String? createdBy,
    Null? modifiedBy,
    String? unionId,
    String? upazilaId,
    String? divisionId,
    String? districtId,
  }) {
    return Village(
      id: id ?? this.id,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      active: active ?? this.active,
      code: code ?? this.code,
      nameInBangla: nameInBangla ?? this.nameInBangla,
      nameInEnglish: nameInEnglish ?? this.nameInEnglish,
      wardNo: wardNo ?? this.wardNo,
      createdBy: createdBy ?? this.createdBy,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      unionId: unionId ?? this.unionId,
      upazilaId: upazilaId ?? this.upazilaId,
      divisionId: divisionId ?? this.divisionId,
      districtId: districtId ?? this.districtId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'creationDate': this.creationDate,
      'modificationDate': this.modificationDate,
      'active': this.active,
      'code': this.code,
      'nameInBangla': this.nameInBangla,
      'nameInEnglish': this.nameInEnglish,
      'wardNo': this.wardNo,
      'createdBy': this.createdBy,
      'modifiedBy': this.modifiedBy,
      'unionId': this.unionId,
      'upazilaId': this.upazilaId,
      'divisionId': this.divisionId,
      'districtId': this.districtId,
    };
  }

  factory Village.fromMap(Map<String, dynamic> map) {
    return Village(
      id: map['id'] as String,
      creationDate: map['creationDate'] as String,
      modificationDate: map['modificationDate'] as String,
      active: map['active'] as String,
      code: map['code'] as String,
      nameInBangla: map['nameInBangla'] as String,
      nameInEnglish: map['nameInEnglish'] as String,
      wardNo: map['wardNo'] as String,
      createdBy: map['createdBy'] as String,
      modifiedBy: map['modifiedBy'] as String,
      unionId: map['unionId'] as String,
      upazilaId: map['upazilaId'] as String,
      divisionId: map['divisionId'] as String,
      districtId: map['districtId'] as String,
    );
  }

}