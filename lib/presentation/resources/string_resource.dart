

class StringResource{

  /// Label Text
  static const String ageBetween = "বয়স 20-50 এর মধ্যে";
  static const String otherBenificiaries = "সরকারের অন্যান্য প্রকল্পের সুবিধাভোগী";


  /// Routes Strings
  static const String routeNotFound = "No Route Found";

  static const String motSokrioVatavogi = "মোট সক্রিয় ভাতাভোগী";
  static const String religeon = "ধর্ম*";
  static const String abedon = "আবেদন";
  static const String dashboardSuparish = "কমিটি কর্তৃক সুপারিশকৃত";
  static const String mohilaOdhidoptar = "মহিলা বিষয়ক অধিদপ্তর";
  static const String union = "ইউনিয়ন";
  static const String talika = "তালিকা";
  static const String shongshodhon = "সংশোধন";
  static const String birthDate = "জন্ম তারিখ*";
  static const String nameInBangla = "নাম (বাংলা)*";
  static const String nameInEnglish= "নাম (ইংরেজি)*";
  static const String fatherName = "পিতার নাম*";
  static const String motherName = "মাতার নাম*";
  static const String husbandName = "স্বামীর নাম*";
  static const String nickName = "স্বামীর নাম*";
  static const String birthPlace = "জন্মস্থান*";
  static const String mobileNo = "মোবাইল নং";
  static const String education = "শিক্ষাগত যোগ্যতা";  
  static const String blood = "রক্তের গ্রুপ";
  
  
  


  // আর্থ-সামাজিক তথ্য
  static const String financialAndSocialState = "আর্থ-সামাজিক তথ্য";
  static const String maritialStatusHint = "বৈবাহিক অবস্থা";
  static const String assetAmount = "আপনার গৃহস্থালীর মালিকাধীন ব্যবহৃত জমির পরিমান কত?*";
  static const String headOccupation = "খানা প্রধানের পেশা*";
  static const String husbandMonthlyIncome = "আপনার স্বামীর মাসিক আয় কত ?*";
  static const String sanitaryState = "আপনার বাড়ীতে কি নিজস্ব পায়খানা আছে?*";
  static const String electricityState = "আপনার বাড়িতে কি বিদ্যুৎ সুবিধা আছে?*";
  static const String electricFan = "আপনার বাড়িতে কি একটি বৈদ্যুতিক পাখা আছে?*";
  static const String tubewel = "আপনার বাড়ীতে কি নিজস্ব টিউব ওয়েল আছে?*";
  static const String livingRoomSate = "আপনার বাড়ীর প্রধান শোয়ার ঘরের দেয়াল গুলো কিসের তৈরী?*";
  static const String disablePerson = "প্রতিবন্ধী*";

  static const List<String> disablePersonList = ["--বেছে নিন--","নিজে","পরিবারের সদস্য","কেউ না"];
  static const List<String> livingRoomStateList = ["--বেছে নিন--","পাট/স্টিক/বাঁশ/কাদা","অন্যান্য"];
  static const List<String> husbandMonthlyIncomeList = ["--বেছে নিন--","৮০০০ টাকার নীচে অথবা সমান","৮০০০ টাকার ঊর্ধ্বে"];
  static const List<String> headOccupationList = ["--বেছে নিন--","দিন মজুর","কৃষি শ্রমিক","রিকশা চালনা","ভ্যান চালনা","নরসুন্দর","কামার","কুমার","ধোপা","কুলি","জেলে","বেকার","প্রযোজ্য নয়","অন্যান্য"];
  static const List<String> assetAmountList = ["--বেছে নিন--","১৫ শতকের নীচে","৫ শতকের নীচে","১৫ শতকের ঊর্ধ্বে"];
  static const List<String> yesOrNo = ["--বেছে নিন--","হ্যাঁ","না"];

  // স্বাস্থ্যগত তথ্য
  static const String healthState = "স্বাস্থ্যগত তথ্য";
  static const String conceptionTerm = "গর্ভধারণ ক্রম*";
  static const String conceptionWeek = "গর্ভধারণ সময়কাল(সপ্তাহ) *";

  static const List<String> conceptionTermList = ["--বেছে নিন--","প্রথম গর্ভধারণ","দ্বিতীয় গর্ভধারণ"];

  // পেমেন্টের তথ্য
  static const String paymentType = "গর্ভধারণ ক্রম*";
  static const String accountName = "হিসাবের নাম*";
  static const String accountNo = "হিসাব নং*";

  static const List<String> paymentTypeList = ["--বেছে নিন--","ব্যাংকিং","মোবাইল ব্যাংকিং","পোস্ট অফিস"];

  // ছবি/স্বাক্ষর
  static const String image = "ছবি*";
  static const String signature = "স্বাক্ষর/টিপসই*";

  // ছবি/স্বাক্ষর
  static const String attachment = "এ এন সি কার্ড/ গর্ভাবস্থার প্রমান সনদ*";



  static const String initialSelect = "--বেছে নিন--";
  static const List<String> religeonList = ['ধর্ম বেছে নিন','ইসলাম','হিন্দুধর্ম','বৌদ্ধধর্ম','খ্রিস্টানধর্ম','অন্যান্য'];
  static const List<String> bloodGroup = ['--রক্তের গ্রুপ বেছে নিন--','এ+','এ-','বি+','বি-','এবি+','এবি-','ও+','ও-'];
  static const List<String> maritialStatus = ['--বৈবাহিক অবস্থা বেছে নিন--','বিবাহিতা','বিধবা','তালাকপ্রাপ্ত','স্বামী পরিত্যক্তা','অন্যান্য'];
}