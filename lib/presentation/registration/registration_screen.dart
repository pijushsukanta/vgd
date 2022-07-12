import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/domain/models/district.dart';
import '../../data/domain/models/division.dart';
import '../../data/domain/models/union.dart';
import '../../data/domain/models/upazilla.dart';
import '../../data/domain/models/village.dart';
import '../resources/string_resource.dart';
import 'package:intl/intl.dart';

import '../resources/theme.dart';
import '../route/routes_manager.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

enum SingingCharacter { lafayette, jefferson }

class _RegistrationScreenState extends State<RegistrationScreen> {

  String selectedTubewel = StringResource.yesOrNo[0];

  var matritialStatus = StringResource.maritialStatus;
  var selectedMaritialStatus = StringResource.maritialStatus[0];

  final _birthDate = TextEditingController();

  final _nid = TextEditingController();
  final _nameInBangla = TextEditingController();
  final _nameInEnglish = TextEditingController();
  final _fatherName = TextEditingController();
  final _motherName = TextEditingController();
  final _husbandName = TextEditingController();
  final _nickName = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _education = TextEditingController();

  final _postCode = TextEditingController();
  final _street = TextEditingController();

  var items = StringResource.religeonList;
  var religion = StringResource.religeonList[0];

  Division? selectedDivision;
  District? selectedDistrict;
  Upazilla? selectedUpazilla;
  Union? selectedUnion;
  Village? selectedVillage;

  List<Division> divisionList = [];
  List<District> districtList = [];
  List<Upazilla> upazillaList = [];
  List<Union> unionList = [];
  List<Village> villageList = [];

  List<District> queryDistrictList = [];
  List<Upazilla> queryUpazillaList = [];
  List<Union> queryUnionList = [];
  List<Village> queryVillageList = [];

  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  void initState(){
    super.initState();
    // db = McbpDatabase.instance;
    loadData();
  }

  loadData() async{

    //loading Division Data
    var divisionJson = await rootBundle.loadString("assets/jsons/division.json");

    var decodedDivision = jsonDecode(divisionJson);

    var divisionData = decodedDivision["division"];
    divisionList = List.from(divisionData).
    map<Division>((division) => Division.fromMap(division)).
    toList();


    //Loading District Data
    var districtJson = await rootBundle.loadString("assets/jsons/district.json");

    var decodedDistrict = jsonDecode(districtJson);


    var districtData = decodedDistrict["district"];
    districtList = List.from(districtData).
    map<District>((district) =>  District.fromMap(district)).
    toList();


    //Loading Upazilla Data
    var upazillaJson = await rootBundle.loadString("assets/jsons/upazilla.json");

    var decodedUpazilla = jsonDecode(upazillaJson);


    var upazillaData = decodedUpazilla["upazilla"];
    upazillaList = List.from(upazillaData).
    map<Upazilla>((upazilla) =>  Upazilla.fromMap(upazilla)).
    toList();

    //Loading Union Data
    var unionJson = await rootBundle.loadString("assets/jsons/union.json");

    var decodedUnion = jsonDecode(unionJson);


    var unionData = decodedUnion["unions"];
    unionList = List.from(unionData).
    map<Union>((union) =>  Union.fromMap(union)).
    toList();


    //Loading Village Data
    var villageJson = await rootBundle.loadString("assets/jsons/village.json");

    var decodedVillage = jsonDecode(villageJson);


    var villageData = decodedVillage["village"];
    villageList = List.from(villageData).
    map<Village>((village) =>  Village.fromMap(village)).
    toList();

    selectedDivision = divisionList[0];

    setState(() {});

  }

  //Change District List According to Division
  changeDistrist(division){
    queryDistrictList = [];
    districtList.forEach((district) {

      if(district.divisionId == division.id || district.divisionId == "-1"){
        queryDistrictList.add(district);
      }
    });
    selectedDistrict = queryDistrictList[0];
  }

  //Change Upazilla List According to Division
  changeUpazilla(district){
    queryUpazillaList = [];
    upazillaList.forEach((upazilla) {
      if(upazilla.districtId == district.id || upazilla.districtId == "-1"){
        queryUpazillaList.add(upazilla);
      }
    });
    selectedUpazilla = queryUpazillaList[0];
  }

  //Change Union List According to Division
  changeUnion(upazilla){
    queryUnionList = [];
    unionList.forEach((union) {
      if(upazilla.id == union.upazillaId || upazilla.id == "-1"){
        queryUnionList.add(union);
      }
    });
    selectedUnion = queryUnionList[0];
  }

  //Change Village List According to Division
  changeVillage(union){
    queryVillageList = [];

    villageList.forEach((village) {
      if(union.id == village.unionId || village.upazilaId==union.upazillaId || village.upazilaId=="-1"){
        queryVillageList.add(village);
      }
    });
    print(queryVillageList);
    selectedVillage = queryVillageList[0];
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      await Navigator.pushReplacementNamed(context, Routes.login);
      return true;
    },
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: getApplicationTheme(),
    home: Scaffold(
    // drawer: NavigationDrawerWidget(),
    appBar: AppBar(
    title: Text(StringResource.abedon),
    ),
    body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.zero,
                child:Form(
                  // key: personalFromKey,
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    title: Text("ব্যক্তিগত তথ্য"),
                    childrenPadding: EdgeInsets.all(8.0),
                    children: [
                      TextFormField(
                        controller: _nid,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: "জাতীয় পরিচয় পত্র নং*",
                          labelText: "জাতীয় পরিচয় পত্র নং*",

                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'জাতীয় শনাক্তকরণ নম্বর প্রয়োজন';
                          }
                          else if(value.length != 14 && value.length != 10){
                            return 'জাতীয় শনাক্তকরণ নম্বর সঠিক ফরম্যাট নয়';
                          }

                          else if(!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'NID is Invalid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: _birthDate,
                        readOnly: true,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.date_range),
                          hintText: "জন্ম তারিখ*",
                          labelText: "জন্ম তারিখ*",
                        ),
                        // onChanged: (value){
                        // setState(() {
                        //   _birthDateData = value;
                        // });
                        // },
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(1930), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2500)
                          );

                          if(pickedDate != null ){

                            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);

                            setState(() {
                              _birthDate.text = formattedDate; //set output date to TextField value.
                            });
                          }else{
                            print("Date is not selected");
                          }
                        },
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Birthdate Required';
                        //   }

                        //   return null;
                        // }
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _nameInBangla,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "নাম (বাংলা)*",
                            labelText: "নাম (বাংলা)",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'নিজের বাংলা নাম প্রয়োজন';
                            }

                            if(RegExp(r'^[a-z]+$').hasMatch(value)) {
                              return 'নিজের বাংলা নাম সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _nameInEnglish,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "নাম (ইংরেজি)*",
                            labelText: "নাম (ইংরেজি)",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'নিজের ইংরেজি নাম প্রয়োজন';
                            }

                            if(!RegExp(r'^[a-z]+$').hasMatch(value)) {
                              return 'নিজের ইংরেজি নাম সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _fatherName,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "পিতার নাম*",
                            labelText: "পিতার নাম",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'পিতার নাম প্রয়োজন';
                            }

                            if(!RegExp(r'^[a-z]+$').hasMatch(value)) {
                              return 'পিতার নাম সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _motherName,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "মাতার নাম*",
                            labelText: "মাতার নাম",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'মায়ের নাম প্রয়োজন';
                            }

                            if(!RegExp(r'^[a-z]+$').hasMatch(value)) {
                              return 'মায়ের নাম সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _husbandName,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "স্বামীর নাম*",
                            labelText: "স্বামীর নাম",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'স্বামীর নাম প্রয়োজন';
                            }

                            if(!RegExp(r'^[a-z]+$').hasMatch(value)) {
                              return 'স্বামীর নাম সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      DropdownButtonFormField(

                        // Initial Value
                        value: religion,
                        isExpanded: true,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            religion = newValue!;
                          });
                        },
                        validator: (value) => value == null || value == items[0]
                            ? 'ধর্ম নির্বাচন করুন' : null,
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: _mobileNumber,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            hintText: "মোবাইল নং",
                            labelText: "মোবাইল নং",
                          ),
                          validator: (value) {

                            if (value == null || value.isEmpty) {
                              return 'মোবাইল নং প্রয়োজন';
                            }

                            if(!RegExp(r'^(?:(?:\+|00)88|01)?\d{11}\r?$').hasMatch(value)) {
                              return 'মোবাইল নং সঠিক ফরম্যাট নয়';
                            }

                            return null;
                          }
                      ),
                      SizedBox(
                        height: 20.0,
                      ),


                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.zero,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("যোগাযোগের তথ্য"),
                  childrenPadding: EdgeInsets.all(8.0),
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("বিভাগ"),
                    ),

                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedDivision,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: divisionList.map((items) {
                        return DropdownMenuItem(
                          value: items,
                          child:  Text(items.nameInBangla),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (Division? newValue){

                        setState(() {
                          changeDistrist(newValue);
                          selectedDivision = newValue!;
                        });

                      },

                      validator: (Division? value) => value == null || value.nameInBangla==divisionList[0].nameInBangla
                          ? 'বর্তমান ঠিকানার বিভাগ নির্বাচন করুন' : null,

                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("জেলা"),
                    ),

                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedDistrict,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: queryDistrictList.map((items) {

                        return DropdownMenuItem(
                          value:  items,
                          child:  Text(items.nameInBangla),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (District? newValue){
                        setState(() {
                          changeUpazilla(newValue);
                          selectedDistrict = newValue!;
                        });
                      },
                      validator: (value) => value == null || value == "--জেলা বেছে নিন--"
                          ? 'বর্তমান ঠিকানার বিভাগ নির্বাচন করুন' : null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("উপজেলা"),
                    ),

                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedUpazilla,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: queryUpazillaList.map((items) {

                        return DropdownMenuItem(
                          value:  items,
                          child:  Text(items.nameInBangla),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (Upazilla? newValue){
                        setState(() {
                          changeUnion(newValue);
                          selectedUpazilla = newValue!;
                        });
                      },

                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("ইউনিয়ন"),
                    ),

                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedUnion,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: queryUnionList.map((items) {

                        return DropdownMenuItem(
                          value:  items,
                          child:  Text(items.nameInBangla),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (Union? newValue){
                        setState(() {
                          changeVillage(newValue);
                          selectedUnion = newValue!;
                        });
                      },

                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("গ্রাম"),
                    ),

                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedVillage,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: queryVillageList.map((items) {

                        return DropdownMenuItem(
                          value:  items,
                          child:  Text(items.nameInBangla),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (Village? newValue){
                        setState(() {
                          selectedVillage = newValue!;
                        });
                      },

                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        controller: _postCode,
                        decoration: const InputDecoration(

                          suffixIcon: Icon(Icons.person),
                          hintText: "পোস্ট কোড",
                          labelText: "পোস্ট কোড",
                        ),
                        validator: (value) {

                          if (value == null || value.isEmpty) {
                            return 'পোস্ট কোড প্রয়োজন';
                          }

                          return null;
                        }
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        controller: _street,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: "রাস্তা/ব্লক/সেক্টর",
                          labelText: "রাস্তা/ব্লক/সেক্টর",
                        ),
                        validator: (value) {

                          if (value == null || value.isEmpty) {
                            return 'রাস্তা/ব্লক/সেক্টর প্রয়োজন';
                          }
                          return null;
                        }
                    )

                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.zero,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text("অন্যান্য তথ্য"),
                  childrenPadding: EdgeInsets.all(8.0),
                  children: [
                    TextFormField(
                        controller: _street,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: "",
                          labelText: StringResource.ageBetween,
                        ),
                        validator: (value) {

                          if (value == null || value.isEmpty) {
                            return 'রাস্তা/ব্লক/সেক্টর প্রয়োজন';
                          }
                          return null;
                        }
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(StringResource.otherBenificiaries),
                    ),
                    DropdownButtonFormField(

                      // Initial Value
                      value: selectedTubewel,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: StringResource.yesOrNo.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child:  Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue){

                        setState(() {
                          selectedTubewel = newValue!;
                        });

                      },
                      validator: (value) => value == null || value == StringResource.yesOrNo[0]
                          ? 'নির্বাচন করুন': null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    DropdownButtonFormField(
                      // Initial Value
                      value: selectedMaritialStatus,
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: matritialStatus.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedMaritialStatus = newValue!;
                        });
                      },
                      validator: (value) => value == null || value == matritialStatus[0]
                          ? 'বৈবাহিক অবস্থা নির্বাচন করুন' : null,
                    ),

                  ],
              )
              )

            ],
          ),
        )
    )

    )
    )
    );
  }
}
