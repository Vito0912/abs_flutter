// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ta locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ta';

  static String m0(num) => "அத்தியாயங்கள் (${num})";

  static String m1(position) => "தற்போதைய நிலை: ${position}";

  static String m2(days, hours, minutes) =>
      "{நாட்கள், பன்மை, ஒன்று {${days} நாள்} மற்ற {${days} நாட்கள்}} {மணிநேரம், பன்மை, ஒன்று {${hours} மணிநேரம்} மற்ற {${hours} மணிநேரம்}} {நிமிடங்கள், பன்மை, ஒன்று {${minutes} நிமிடம்} பிற {${minutes} நிமிடங்கள்}}";

  static String m3(days, hours, minutes, seconds) =>
      "{நாட்கள், பன்மை, ஒன்று {${days} நாள்} மற்ற {${days} நாட்கள்}} {மணிநேரம், பன்மை, ஒன்று {${hours} மணிநேரம்} மற்ற {${hours} மணிநேரம்}} {நிமிடங்கள், பன்மை, ஒன்று {${minutes} நிமிடம்} பிற {${minutes} நிமிடங்கள்}} {விநாடிகள், பன்மை, ஒரு {${seconds} இரண்டாவது} பிற {${seconds} விநாடிகள்}}";

  static String m4(days, hours, minutes, seconds) =>
      "${days} டி ${hours} h ${minutes} m ${seconds} s";

  static String m5(days, hours, minutes) =>
      "${days} டி ${hours} h ${minutes} மீ";

  static String m6(hours, minutes) =>
      "{மணிநேரம், பன்மை, ஒன்று {${hours} மணிநேரம்} மற்ற {${hours} மணிநேரம்}} {நிமிடங்கள், பன்மை, ஒன்று {${minutes} நிமிடம்} பிற {${minutes} நிமிடங்கள்}}";

  static String m7(hours, minutes, seconds) =>
      "{மணிநேரம், பன்மை, ஒன்று {${hours} மணிநேரம்} மற்ற {${hours} மணிநேரம்}} {நிமிடங்கள், பன்மை, ஒன்று {${minutes} நிமிடம்} பிற {${minutes} நிமிடங்கள்}} {வினாடிகள், பன்மை, ஒன்று {${seconds} இரண்டாவது} பிற {${seconds} விநாடிகள்}}";

  static String m8(hours, minutes, seconds) =>
      "${hours} h ${minutes} m ${seconds} கள்";

  static String m9(hours, minutes) => "${hours} h ${minutes} மீ";

  static String m10(count) =>
      "{எண்ணிக்கை, பன்மை, ஒன்று {${count} நிமிடம்} மற்ற {${count} நிமிடங்கள்}}";

  static String m11(minutes, seconds) =>
      "{நிமிடங்கள், பன்மை, ஒன்று {${minutes} நிமிடம்} மற்ற {${minutes} நிமிடங்கள்}} {விநாடிகள், பன்மை, ஒன்று {${seconds} இரண்டாவது} பிற {${seconds} விநாடிகள்}}";

  static String m12(minutes, seconds) => "${minutes} m ${seconds} கள்";

  static String m13(count) => "${count} மீ";

  static String m14(count) =>
      "{எண்ணிக்கை, பன்மை, ஒன்று {${count} இரண்டாவது} மற்ற {${count} விநாடிகள்}}";

  static String m15(count) => "${count} கள்";

  static String m16(device, os, version) =>
      "சாதனம்: ${device}\n OS: ${os}\n பயன்பாட்டு பதிப்பு: ${version}";

  static String m17(displayName) => "${displayName} முழுமையான பதிவிறக்க";

  static String m18(displayName) => "பதிவிறக்கம் ${displayName}";

  static String m19(displayName) =>
      "பதிவிறக்கும்போது பிழை ஏற்பட்டது ${displayName}";

  static String m20(length) => "நீளம்: ${length}";

  static String m21(numChapters) => "அத்தியாயங்களின் எண்ணிக்கை: ${numChapters}";

  static String m22(year) => "வெளியிடப்பட்ட ஆண்டு: ${year}";

  static String m23(numBooks) =>
      "{numbooks, பன்மை, = 0 {No Books} = 1 {1 Book} பிற {${numBooks} புத்தகங்கள்}}";

  static String m24(progress) => "தற்போதைய முன்னேற்றம்: ${progress} %";

  static String m25(time) => "மீதமுள்ள நேரம்: ${time}";

  static String m26(time) => "${time} மணித்துளி";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "புதிய பயனரைச் சேர்க்கவும்",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("பயனரைச் சேர்க்கவும்"),
    "added": MessageLookupByLibrary.simpleMessage("சேர்க்கப்பட்டது"),
    "advanced": MessageLookupByLibrary.simpleMessage("மேம்பட்ட"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "வன்கவர்வு கேச்சிங்",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "இயக்கப்பட்டால், பயன்பாடு மிகவும் ஆக்ரோசமான தற்காலிக சேமிப்பிற்கு உதவும். எல்லா பொருட்களின் முன்னேற்றத்தையும் பெறுவது போன்ற வழக்கமான புதுப்பிப்புகள் தேவைப்படும் தரவைக் கொண்டிருக்கக்கூடிய கேச்சிங் வழிகள் இதில் அடங்கும். இந்த சந்தர்ப்பங்களில், நீங்கள் குறிப்பாக ஒரு உருப்படியைத் திறந்து கோராவிட்டால் கடைசியாக அறியப்பட்ட நிலை பயன்படுத்தப்படும். இந்த வழிகளில் குறுகிய கேச் காலம் இருக்கும்.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage(
      "அனைத்து பதிவிறக்கங்களும்",
    ),
    "amoledMode": MessageLookupByLibrary.simpleMessage("Amoled பயன்முறை"),
    "ascending": MessageLookupByLibrary.simpleMessage("ஏறுதல்"),
    "attribution": MessageLookupByLibrary.simpleMessage("பண்புக்கூறு"),
    "author": MessageLookupByLibrary.simpleMessage("நூலாசிரியர்"),
    "authors": MessageLookupByLibrary.simpleMessage("ஆசிரியர்கள்"),
    "back": MessageLookupByLibrary.simpleMessage("பின்"),
    "boostLoading": MessageLookupByLibrary.simpleMessage(
      "ஏற்றுதல் அதிகரிக்கும்",
    ),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "இந்த நற்பொருத்தம் இயக்கப்பட்டால், பயன்பாடு நிகழ்நேர கேச்சிங்கை திறம்பட புறக்கணிக்கிறது. உள்ளடக்கத்தை உடனடியாக ஏற்றுவதற்கு தற்காலிக சேமிப்பு தரவைப் பயன்படுத்தும் போது சேவையகத்திலிருந்து அண்மைக் கால தரவைப் பெற இது எப்போதும் முயற்சிக்கும். புதுப்பிக்கப்பட்ட தரவு மீட்டெடுக்கப்பட்டதும், இது பழைய தற்காலிக சேமிப்பை மாற்றுகிறது, அடுத்த முறை நீங்கள் பயன்பாட்டை ஏற்றும்போது மிக அண்மைக் கால தரவு காட்டப்படும் என்பதை உறுதி செய்கிறது. இதன் விளைவாக, சேவையகத்தின் தற்போதைய தரவின் பின்னால் ஒரு பெறும் சுழற்சியில் இருந்து தரவை நீங்கள் எப்போதும் காண்பீர்கள்.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("கேச்சிங்"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("கேச்சிங்"),
    "cancel": MessageLookupByLibrary.simpleMessage("ரத்துசெய்"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("கார் பிளேயர்"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("நூலகத்தை மாற்றவும்"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage(
      "தெளிவான தற்காலிக சேமிப்பு",
    ),
    "close": MessageLookupByLibrary.simpleMessage("மூடு"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("சரிவு தொடர்"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "தொடர்ச்சியான நாட்கள்",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "தொடர்ந்து கேட்பது",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("தொடரைத் தொடரவும்"),
    "copy": MessageLookupByLibrary.simpleMessage("நகலெடு"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "நகலெடு (அகற்றப்பட்ட தனிப்பட்ட தரவை முயற்சிக்கவும்)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("பதிவுகளை நகலெடுக்கவும்"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "முக்கியமானது:\n \'நகல்\' என்பதைக் சொடுக்கு செய்தால், தற்போது காட்டப்படும் அனைத்து பதிவுகளையும் உங்கள் கிளிப்போர்டுக்கு மாற்றும், இதில் பயன்பாடு தொடங்கப்பட்டதிலிருந்து பதிவுசெய்யப்பட்ட தரவு உட்பட அல்லது கடைசியாக அழிக்கப்பட்டது. இந்த பதிவுகளில் டோக்கன்கள், பயனர்பெயர்கள், மின்னஞ்சல்கள் மற்றும் சேவையக முகவரி கள் போன்ற முக்கியமான தகவல்கள் இருக்கலாம். இந்த தகவலை நீங்கள் எங்கு ஒட்டுகிறீர்கள் என்பதில் எச்சரிக்கையாக இருங்கள்! \\n நீங்கள் \'நகலெடுத்து முக்கியமான தகவல்களை மறைக்க முயற்சிக்கிறீர்கள்\' என்பதைத் தேர்வுசெய்தால், பயன்பாடு டோக்கன்கள், பயனர்பெயர்கள், மின்னஞ்சல்கள் மற்றும் சேவையக முகவரி கள் போன்ற உருப்படிகளை மறைக்க முயற்சிக்கும். இருப்பினும், அனைத்து தனிப்பட்ட தரவுகளும் முழுமையாக அகற்றப்படுவதை உறுதிசெய்ய பதிவுகளை மதிப்பாய்வு செய்வதற்கு நீங்கள் பொறுப்பு.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("உருவாக்கு"),
    "createBookmark": MessageLookupByLibrary.simpleMessage(
      "புத்தகக்குறியை உருவாக்கவும்",
    ),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "புத்தகக்குறியை உருவாக்கவும்",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "தற்போதைய பதிவிறக்கங்கள்",
    ),
    "currentPositionNum": m1,
    "darkMode": MessageLookupByLibrary.simpleMessage("இருண்ட முறை"),
    "dateFormatDayHourMinute": m2,
    "dateFormatDayHourMinuteSecond": m3,
    "dateFormatDayHourMinuteSecondShort": m4,
    "dateFormatDayHourMinuteShort": m5,
    "dateFormatHourMinute": m6,
    "dateFormatHourMinuteSecond": m7,
    "dateFormatHourMinuteSecondShort": m8,
    "dateFormatHourMinuteShort": m9,
    "dateFormatMinute": m10,
    "dateFormatMinuteSecond": m11,
    "dateFormatMinuteSecondShort": m12,
    "dateFormatMinuteShort": m13,
    "dateFormatSecond": m14,
    "dateFormatSecondShort": m15,
    "daysListened": MessageLookupByLibrary.simpleMessage("நாட்கள் கேட்டன"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("பிழைத்திருத்த பதிவுகள்"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "தேர்ந்தெடுக்கப்பட்டதை நீக்கு",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("இறங்கு"),
    "description": MessageLookupByLibrary.simpleMessage("விவரம்"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "ச்கிப்பிங் அத்தியாயங்களை முடக்கு",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "இது பயன்பாட்டிற்கு வெளியில் இருந்து அத்தியாயங்களைத் தவிர்க்கும் திறனை முடக்கும் (எ.கா., எட்செட் அல்லது அறிவிப்புக் கட்டுப்பாடுகள் வழியாக). அத்தியாயங்களைத் தவிர்ப்பதற்குப் பதிலாக உங்கள் எட்ஃபோன்கள் வேகமாக முன்னோக்கி மற்றும் முன்னாடி செயல்பாடுகளைப் பயன்படுத்த விரும்பினால் இதை இயக்கவும்.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "அதிர்வுகளை முடக்கவும்",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("முடக்கப்பட்டது"),
    "discover": MessageLookupByLibrary.simpleMessage("கண்டுபிடி"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("டொமைன் அல்லது ஐபி"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "முழுமையான பதிவிறக்கம்",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "கோப்பு சரியாக பதிவிறக்கம் செய்யப்படவில்லை. பொத்தானைக் சொடுக்கு செய்து மீண்டும் பதிவிறக்குவதன் மூலம் சாதனத்தில் உள்ள தரவை நீக்க முயற்சி செய்யலாம்.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("செய்தி பதிவிறக்க"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("பாதை பதிவிறக்க"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "பதிவிறக்கங்கள் சேமிக்கப்படும் பாதை. இதை மாற்ற நீங்கள் முதலில் எல்லா பதிவிறக்கங்களையும் நீக்க வேண்டும்.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("பதிவிறக்குகிறது"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("பதிவிறக்கங்கள்"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "வைஃபை வழியாக மட்டுமே பதிவிறக்குகிறது",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("காலம்"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("மின்புத்தக-வாசகர்"),
    "editQueue": MessageLookupByLibrary.simpleMessage("வால் திருத்து"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "பதிவிறக்க முன்னேற்ற புதுப்பிப்புகளைப் பெறுவதற்கான அறிவிப்புகளை இயக்கவும், பின்னணியில் கோப்புகளைப் பதிவிறக்கவும் முடியும்.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("இயக்கப்பட்டது"),
    "episodeId": MessageLookupByLibrary.simpleMessage("அத்தியாயம் ஐடி"),
    "error": MessageLookupByLibrary.simpleMessage("பிழை"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "பதிவிறக்குவதில் பிழை",
    ),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "பிழை: உருப்படி கிடைக்கவில்லை!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("வெளியேறு"),
    "failed": MessageLookupByLibrary.simpleMessage("தோல்வியுற்றது"),
    "fastForward": MessageLookupByLibrary.simpleMessage("வேகமாக முன்னோக்கி"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "வேகமாக முன்னோக்கி விநாடிகள்",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "வேகமான முன்னோக்கி பொத்தானை அழுத்தும்போது முன்னோக்கி தவிர்க்க வினாடிகளின் எண்ணிக்கையை அமைக்கவும்.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("திறந்த உணவு"),
    "filename": MessageLookupByLibrary.simpleMessage("கோப்புப்பெயர்"),
    "filepath": MessageLookupByLibrary.simpleMessage("FilePath"),
    "filter": MessageLookupByLibrary.simpleMessage("வடிப்பி"),
    "finished": MessageLookupByLibrary.simpleMessage("முடிந்தது"),
    "general": MessageLookupByLibrary.simpleMessage("பொது"),
    "genres": MessageLookupByLibrary.simpleMessage("வகைகள்"),
    "hide": MessageLookupByLibrary.simpleMessage("மறை"),
    "inProgress": MessageLookupByLibrary.simpleMessage(
      "முன்னேற்றத்தில் உள்ளது",
    ),
    "information": MessageLookupByLibrary.simpleMessage("தகவல்"),
    "itemId": MessageLookupByLibrary.simpleMessage("பொருள் ஐடி"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "உருப்படியைக் கண்டுபிடிக்க முடியவில்லை. இது பிணையம் பிழை காரணமாக இருக்கலாம் அல்லது உருப்படி இனி இல்லை, ஆனால் தற்காலிக சேமிப்பில் இருக்கலாம்.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("உருப்படி வகை"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "கடைசி நிலைக்கு செல்லவும்",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "இயக்கப்பட்டால், விளையாட்டை அழுத்தும்போது வீரர் கடைசி நிலைக்கு செல்வார்",
    ),
    "language": MessageLookupByLibrary.simpleMessage("மொழி"),
    "languages": MessageLookupByLibrary.simpleMessage("மொழிகள்"),
    "largestItems": MessageLookupByLibrary.simpleMessage(
      "மிகப்பெரிய பொருட்கள்",
    ),
    "last30Days": MessageLookupByLibrary.simpleMessage("கடந்த 30 நாட்கள்"),
    "last7Days": MessageLookupByLibrary.simpleMessage("கடந்த 7 நாட்கள்"),
    "libraries": MessageLookupByLibrary.simpleMessage("நூலகங்கள்"),
    "library": MessageLookupByLibrary.simpleMessage("நூலகம்"),
    "libraryName": MessageLookupByLibrary.simpleMessage("நூலக பெயர்"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "நூலக புள்ளிவிவரங்கள்",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("மீண்டும் கேளுங்கள்"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "கடந்த ஆண்டில் கேட்பது",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("ஏற்றுகிறது…"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "பூட்டு மீடியா முன்னேற்றப் பட்டி",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "இயக்கப்பட்டால், இந்த நற்பொருத்தம் இயக்க முறைமையால் ஆதரிக்கப்பட்டால், ஊடக அறிவிப்பில் முன்னேற்றப் பட்டியை பூட்டுகிறது",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("பதிவு"),
    "logs": MessageLookupByLibrary.simpleMessage("பதிவுகள்"),
    "longestItems": MessageLookupByLibrary.simpleMessage("நீளமான உருப்படிகள்"),
    "minimize": MessageLookupByLibrary.simpleMessage("குறைக்கவும்"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "தட்டில் குறைக்கவும்",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "இந்த விருப்பம் பணிப்பட்டியிலிருந்து பயன்பாட்டை மறைத்து, கணினி தட்டில் நகர்த்துகிறது.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("மற்றவை"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("மேலும் விருப்பங்கள்"),
    "name": MessageLookupByLibrary.simpleMessage("பெயர்"),
    "narrators": MessageLookupByLibrary.simpleMessage("விவரிப்பாளர்கள்"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage(
      "புதிய அத்தியாயங்கள்",
    ),
    "nextChapter": MessageLookupByLibrary.simpleMessage("அடுத்த அத்தியாயம்"),
    "noConnection": MessageLookupByLibrary.simpleMessage("இணைப்பு இல்லை"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("பதிவிறக்கங்கள் இல்லை"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "சேவையகத்துடன் இணைப்பதில் சிக்கல் உள்ளது.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("பாதை இல்லை"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "எந்தத் தொடரும் தேர்ந்தெடுக்கப்படவில்லை",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("முடிக்கப்படவில்லை"),
    "notStarted": MessageLookupByLibrary.simpleMessage("தொடங்கப்படவில்லை"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage(
      "இன்னும் முயற்சிக்கவில்லை",
    ),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "அறிவிப்புகள் இயக்கப்பட வேண்டும்",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage(
      "புத்தகங்களின் எண்ணிக்கை",
    ),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "இணைப்பில்லாத முன்னேற்றம்",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "இணைப்பில்லாத முன்னேற்றத்தை சேமித்தது",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("சரி"),
    "openDownloads": MessageLookupByLibrary.simpleMessage(
      "பதிவிறக்கங்களைத் திறந்த",
    ),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "ஆடியோபூக்செல்ஃப்/சேவையகம்",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("சொந்த புள்ளிவிவரங்கள்"),
    "password": MessageLookupByLibrary.simpleMessage("கடவுச்சொல்"),
    "pause": MessageLookupByLibrary.simpleMessage("இடைநிறுத்தம்"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "தனிப்பயனாக்கப்பட்ட நூலகம்",
    ),
    "play": MessageLookupByLibrary.simpleMessage("விளையாடுங்கள்"),
    "playHistory": MessageLookupByLibrary.simpleMessage("வரலாறு விளையாடுங்கள்"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "அடுத்த அத்தியாயத்தை விளையாடுங்கள்",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("வேகம்"),
    "player": MessageLookupByLibrary.simpleMessage("வீரர்"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "பிளேயர் அமைப்புகள்",
    ),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "உங்கள் இணைய இணைப்பை சரிபார்த்து மீண்டும் முயற்சிக்கவும்.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("துறைமுகம்"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "முந்தைய அத்தியாயம்",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("முன்னேற்றம்"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "ஒரு அத்தியாயம் அடிப்படையில் பிளேயரில் முன்னேற்றத்தையும் அறிவிப்புகளையும் காட்ட இந்த விருப்பத்தை இயக்கவும். முடக்கப்பட்டால், முழு உருப்படியின் அடிப்படையில் முன்னேற்றம் காண்பிக்கப்படும்.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("வெளியீட்டாளர்"),
    "readLess": MessageLookupByLibrary.simpleMessage("குறைவாகப் படியுங்கள்"),
    "readMore": MessageLookupByLibrary.simpleMessage("மேலும் வாசிக்க"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("அண்மைக் கால தொடர்"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage(
      "அண்மைக் காலத்தில் சேர்க்கப்பட்டது",
    ),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "ஒரு சிக்கலைப் புகாரளிக்கவும்",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage("மறுதொடக்கம் தேவை"),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "மாற்றங்களைப் பயன்படுத்த பயன்பாட்டை மறுதொடக்கம் செய்யுங்கள்.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("மீண்டும் முயற்சிக்கவும்"),
    "rewind": MessageLookupByLibrary.simpleMessage("முன்னாடி"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage("வினாடிகள் முன்னாடி"),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "ரிவைண்ட் பொத்தானை அழுத்தும்போது பின்தங்கிய நிலையில் தவிர்க்க விநாடிகளின் எண்ணிக்கையை அமைக்கவும்.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("தேடல்"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "முடக்கப்பட்டதைத் தேடுங்கள்",
    ),
    "seek": MessageLookupByLibrary.simpleMessage("தேடுங்கள்"),
    "sequence": MessageLookupByLibrary.simpleMessage("வரிசை"),
    "series": MessageLookupByLibrary.simpleMessage("தொடர்"),
    "serverSelection": MessageLookupByLibrary.simpleMessage("சேவையக தேர்வு"),
    "settings": MessageLookupByLibrary.simpleMessage("அமைப்புகள்"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "ச்லீப் டைமரை மீட்டமைக்க குலுக்கவும்",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage(
      "திறந்த பகிர்ந்து கொள்ளுங்கள்",
    ),
    "show": MessageLookupByLibrary.simpleMessage("காட்டு"),
    "showMediaType": MessageLookupByLibrary.simpleMessage("ஊடக வகையைக் காட்டு"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "ஒவ்வொரு பொருளின் அடிப்பகுதியில் மீடியா வகை பேட்ச்களைக் காட்டுகிறது.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "அத்தியாயத்திற்கு முன்னேற்றத்தைக் காட்டு",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("விடுபதிகை"),
    "size": MessageLookupByLibrary.simpleMessage("அளவு"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("தூக்க நேரங்குறிகருவி"),
    "sort": MessageLookupByLibrary.simpleMessage("வரிசைப்படுத்து"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "ஏறுவரிசை வரிசையில் தொடரை வரிசைப்படுத்தவும்",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("புள்ளிவிவரங்கள்"),
    "stop": MessageLookupByLibrary.simpleMessage("நிறுத்து"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "ஒத்திசைவு வரை பிளேயரை நிறுத்துங்கள்",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "மிக அண்மைக் கால பின்னணி நிலை ஒத்திசைக்கப்படும் வரை வீரர் தொடங்குவதைத் தடுக்க இந்த விருப்பத்தை இயக்கவும். பிளேபேக் சரியான நிலையில் இருந்து மீண்டும் தொடங்குவதை இது உறுதி செய்கிறது. முடக்கப்பட்டால், தொடங்கிய உடனேயே பிளேபேக் நிலை மாறக்கூடும், இது தரவு இழப்புக்கு வழிவகுக்கும். இதை இயக்குவது தரவு பயன்பாட்டைப் பாதுகாக்க உதவுகிறது.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("செய்"),
    "sync": MessageLookupByLibrary.simpleMessage("ஒத்திசைவு"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "ஒத்திசைவு இடைவெளி (விநாடிகள்)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "பயன்பாடு எவ்வளவு அடிக்கடி சேவையகத்துடன் ஒத்திசைக்க வேண்டும் என்பதைக் குறிப்பிடுகிறது. மாற்றங்கள் நடைமுறைக்கு வரும் பயன்பாட்டை மறுதொடக்கம் செய்யுங்கள்.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "வைஃபை வழியாக மட்டுமே ஒத்திசைக்கவும்",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("குறிச்சொற்கள்"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("தலைப்பு"),
    "today": MessageLookupByLibrary.simpleMessage("இன்று"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("சிறந்த ஆசிரியர்கள்"),
    "topGenres": MessageLookupByLibrary.simpleMessage("சிறந்த வகைகள்"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "மொத்த ஆடியோ தடங்கள்",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("மொத்த ஆசிரியர்கள்"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("மொத்த காலம்"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("மொத்த வகைகள்"),
    "totalItems": MessageLookupByLibrary.simpleMessage("மொத்த உருப்படிகள்"),
    "totalSize": MessageLookupByLibrary.simpleMessage("மொத்த அளவு"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "மொத்த நேரம் கேட்டது",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("மீண்டும் முயற்சிக்கவும்"),
    "unknown": MessageLookupByLibrary.simpleMessage("தெரியவில்லை"),
    "user": MessageLookupByLibrary.simpleMessage("பயனர்"),
    "username": MessageLookupByLibrary.simpleMessage("பயனர்பெயர்"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage(
      "புக்மார்க்குகளைக் காண்க",
    ),
    "viewChapters": MessageLookupByLibrary.simpleMessage(
      "அத்தியாயங்களைக் காண்க",
    ),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("கிட்அப்பைக் காண்க"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "/Init க்கு திருப்பி விடுங்கள். நீங்கள் தற்போது உள்நுழையவில்லை.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "பதிவிறக்கம் தொடங்க காத்திருக்கிறது",
    ),
  };
}
