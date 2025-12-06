// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hr locale. All the
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
  String get localeName => 'hr';

  static String m0(num) => "Poglavlja (${num})";

  static String m1(position) => "Trenutna pozicija: ${position}";

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} dan', other: '${days} dana')} ${Intl.plural(hours, one: '${hours} sat', other: '${hours} sati')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minuta')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} dan', other: '${days} dana')} ${Intl.plural(hours, one: '${hours} sat', other: '${hours} sati')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minuta')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekundi')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}d ${hours}s ${minutes}m ${seconds}sec";

  static String m5(days, hours, minutes) => "${days}d ${hours}s ${minutes}m";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} sat', other: '${hours} sati')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minuta')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} sat', other: '${hours} sati')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minuta')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekundi')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}s ${minutes}m ${seconds}sec";

  static String m9(hours, minutes) => "${hours}s ${minutes}m";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} minuta', other: '${count} minuta')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minuta')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekundi')}";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}sec";

  static String m13(count) => "${count}m";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count}  sekunda', other: '${count} sekundi')}";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Uređaj: ${device}\nOS: ${os}\nVerzija aplikacije: ${version}";

  static String m17(displayName) => "Preuzimanje ${displayName} završeno";

  static String m18(displayName) => "Preuzimanje ${displayName}";

  static String m19(displayName) =>
      "Došlo je do pogreške prilikom preuzimanja ${displayName}";

  static String m20(length) => "Trajanje: ${length}";

  static String m21(numChapters) => "Broj poglavlja: ${numChapters}";

  static String m22(year) => "Godina objave: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Nema knjiga', one: '1 knjiga', other: '${numBooks} knjiga')}";

  static String m24(progress) => "Trenutni napredak: ${progress} %";

  static String m25(time) => "Preostalo vrijeme: ${time}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Dodaj novog korisnika",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Dodaj korisnika"),
    "added": MessageLookupByLibrary.simpleMessage("Dodano"),
    "addedAt": MessageLookupByLibrary.simpleMessage("Dodano u"),
    "advanced": MessageLookupByLibrary.simpleMessage("Napredno"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Agresivno predmemoriranje",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Kada je omogućena, aplikacija će omogućiti agresivnije predmemoriranje. To uključuje predmemoriranje ruta koje mogu sadržavati podatke koji zahtijevaju redovita ažuriranja, poput dohvaćanja napretka svih stavki. U tim slučajevima koristit će se posljednja poznata pozicija osim ako ne otvorite i ne zatražite samo jednu stavku. Te rute imat će kraće trajanje predmemorije.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Sva preuzimanja"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED način rada"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Došlo je do nepoznate pogreške",
    ),
    "ascending": MessageLookupByLibrary.simpleMessage("Uzlazno"),
    "attribution": MessageLookupByLibrary.simpleMessage("Pripisivanje"),
    "author": MessageLookupByLibrary.simpleMessage("Autor"),
    "authors": MessageLookupByLibrary.simpleMessage("Autori"),
    "back": MessageLookupByLibrary.simpleMessage("Natrag"),
    "boostLoading": MessageLookupByLibrary.simpleMessage("Pojačano učitavanje"),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Kada je ova značajka omogućena, aplikacija učinkovito zaobilazi predmemoriranje u stvarnom vremenu. Uvijek će pokušati dohvatiti najnovije podatke s poslužitelja dok koristi predmemorirane podatke za trenutno učitavanje sadržaja. Nakon što se ažurirani podaci dohvate, vraća se stara predmemorija, osiguravajući da se najnoviji podaci prikažu sljedeći put kad pokrenete aplikaciju. Kao rezultat toga, uvijek ćete vidjeti podatke iz jednog ciklusa dohvaćanja iza trenutnih podataka poslužitelja.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Predmemoriranje"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Predmemoriranje"),
    "cancel": MessageLookupByLibrary.simpleMessage("Otkaži"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Reproduktor za auto"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage(
      "Promijeni knjižnicu",
    ),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Očisti predmemoriju"),
    "close": MessageLookupByLibrary.simpleMessage("Zatvori"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Sažmi seriju"),
    "collections": MessageLookupByLibrary.simpleMessage("Kolekcije"),
    "connectionError": MessageLookupByLibrary.simpleMessage("Pogreška veze"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage("Uzastopni dani"),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Nastavi slušati",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Nastavi seriju"),
    "copy": MessageLookupByLibrary.simpleMessage("Kopiraj"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Kopiraj i pokušaj sakriti osjetljive informacije",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopirani zapisi"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Važno:\nKlikom na \'Kopiraj\' prenijeti ćeš sve trenutno prikazane zapise u svoj međuspremnik, uključujući podatke zabilježene od pokretanja ili zadnjeg čišćenja aplikacije. Ti zapisi mogu sadržavati osjetljive informacije poput tokena, korisničkih imena, e-mailova i URL-ova poslužitelja. Budi oprezan gdje lijepiš te informacije!\\nAko odabereš \'Kopiraj i pokušaj sakriti osjetljive informacije\', aplikacija će pokušati prikriti stavke poput tokena, korisničkih imena, e-mailova i URL-ova poslužitelja. Međutim, odgovoran si za pregled zapisa kako bi osigurali da su svi osobni podaci potpuno uklonjeni.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Stvori"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Stvorij oznaku"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Stvori oznaku",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Trenutna preuzimanja",
    ),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage(
      "Prilagođena zaglavlja",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Tamni način rada"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Dana slušanja"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Debug logovi"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage("Obriši odabrano"),
    "descending": MessageLookupByLibrary.simpleMessage("Silazno"),
    "description": MessageLookupByLibrary.simpleMessage("Opis"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Onemogući preskakanje poglavlja",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "To će onemogućiti mogućnost preskakanja poglavlja izvan aplikacije (npr. putem slušalica ili kontrola obavijesti). Uključi ovo ako želiš da tvoje slušalice koriste funkcije premotavanja unaprijed i unatrag umjesto preskakanja poglavlja.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Onemogući vibraciju",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Onemogućeno"),
    "discover": MessageLookupByLibrary.simpleMessage("Otkrij"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domena ili IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Preuzimanje završeno",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Datoteka nije bila ispravno preuzeta. Možeš pokušati izbrisati podatke na uređaju klikom na gumb i ponovno ih preuzeti.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage(
      "Informacije o preuzimanju",
    ),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Put preuzimanja"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Put na kojem se pohranjuju preuzimanja. Da bi to promijenio, prvo moraš izbrisati sva preuzimanja.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Preuzimanje"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Preuzimanja"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Preuzimanja samo putem WiFi-ja",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Trajanje"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("Čitač e-knjiga"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Uredi red čekanja"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Molimo omogući obavijesti kako bi primao ažuriranja o napretku preuzimanja i preuzimao datoteke u pozadini.",
    ),
    "enableSubdirectory": MessageLookupByLibrary.simpleMessage(
      "Omogući podmapu",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Omogućeno"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Epizoda Id"),
    "error": MessageLookupByLibrary.simpleMessage("Greška"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Greška pri preuzimanju",
    ),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Greška: Stavka nije pronađena!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Izlaz"),
    "failed": MessageLookupByLibrary.simpleMessage("Neuspjeh"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Premotaj unaprijed"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Premotaj nekoliko sekundi unaprijed",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Postavi broj sekundi za preskakanje unaprijed kada se pritisne tipka za premotavanje unaprijed.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Feed otvoren"),
    "filename": MessageLookupByLibrary.simpleMessage("Datoteka"),
    "filepath": MessageLookupByLibrary.simpleMessage("Putanja datoteke"),
    "filter": MessageLookupByLibrary.simpleMessage("Filter"),
    "finished": MessageLookupByLibrary.simpleMessage("Završeno"),
    "general": MessageLookupByLibrary.simpleMessage("Opće"),
    "genres": MessageLookupByLibrary.simpleMessage("Žanrovi"),
    "hide": MessageLookupByLibrary.simpleMessage("Sakrj"),
    "inProgress": MessageLookupByLibrary.simpleMessage("U tijeku"),
    "information": MessageLookupByLibrary.simpleMessage("Informacija"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Nevažeće vjerodajnice",
    ),
    "itemId": MessageLookupByLibrary.simpleMessage("ID stavke"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "Stavka nije pronađena. To može biti zbog mrežne pogreške ili zato što stavka više ne postoji, ali ostala je u predmemoriji.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Vrsta stavke"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Skok na posljednju poziciju",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "Kada je omogućena, reproduktor će skočiti na posljednju poziciju pritiskom na Reproduciraj",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Jezik"),
    "languages": MessageLookupByLibrary.simpleMessage("Jezici"),
    "largestItems": MessageLookupByLibrary.simpleMessage("Najveća stavka"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Zadnjih 30 dana"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Zadnjih 7 dana"),
    "libraries": MessageLookupByLibrary.simpleMessage("Zbirke"),
    "library": MessageLookupByLibrary.simpleMessage("Knjižnica"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Naziv knjižnice"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Statistika knjižnice",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Poslušaj opet"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Slušano u zadnjih godinu dana",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Učitavanje…"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Zaključaj traku napretka medija",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Kada je omogućena, ova značajka zaključava traku napretka obavijesti o medijima, ako je operativni sustav podržava",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("Zapisivanje"),
    "login": MessageLookupByLibrary.simpleMessage("PRIJAVA"),
    "logs": MessageLookupByLibrary.simpleMessage("Dnevnici"),
    "longestItems": MessageLookupByLibrary.simpleMessage("Najduža stavka"),
    "minimize": MessageLookupByLibrary.simpleMessage("Minimiziraj"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Minimiziraj u traku",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Ova opcija skriva aplikaciju s programske trake i premješta je u sistemsku traku.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Razno"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Više opcija"),
    "name": MessageLookupByLibrary.simpleMessage("Naziv"),
    "narrators": MessageLookupByLibrary.simpleMessage("Pripovjedači"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Najnovije epizode"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Sljedeće poglavlje"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Nema veze"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Nema preuzimanja"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Imamo problema s povezivanjem na poslužitelj.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Nema putanje"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Nije odabrana nijedna serija",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Nije dovršeno"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Nije pokrenuto"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Još nije pokušano"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Obavijesti bi trebale biti omogućene",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Broj knjiga"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage("Offline napredak"),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Offline spremljeni napredak",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("U redu"),
    "openDownloads": MessageLookupByLibrary.simpleMessage(
      "Otvorena preuzimanja",
    ),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Poslužitelj",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Vlastita statistika"),
    "password": MessageLookupByLibrary.simpleMessage("Lozinka"),
    "pause": MessageLookupByLibrary.simpleMessage("Pauza"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Personalizirana knjižnica",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Reproduciraj"),
    "playHistory": MessageLookupByLibrary.simpleMessage(
      "Povijest reprodukcije",
    ),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Pusti sljedeću epizodu",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Brzina"),
    "player": MessageLookupByLibrary.simpleMessage("Reproduktor"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Postavke reproduktora",
    ),
    "playlists": MessageLookupByLibrary.simpleMessage("Popisi izvođenja"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Molimo provjeri svoju internet vezu i pokušaj ponovno.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Prethodno poglavlje",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Napredak"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Omogućite ovu opciju za prikaz napretka u reproduktoru i obavijesti po poglavljima. Ako je onemogućeno, napredak će se prikazivati na temelju cijele stavke.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Izdavač"),
    "readLess": MessageLookupByLibrary.simpleMessage("Pročitaj manje"),
    "readMore": MessageLookupByLibrary.simpleMessage("Pročitaj više"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Nedavne serije"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage("Nedavno dodano"),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage("Prijavi problem"),
    "requiredFields": MessageLookupByLibrary.simpleMessage(
      "Molimo ispuni sva potrebna polja",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "Potreban je ponovno pokretanje",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Molimo ponovno pokreni aplikaciju kako bi primijenili promjene.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Ponovi"),
    "rewind": MessageLookupByLibrary.simpleMessage("Premotaj"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage(
      "Premotajte unatrag (sekunde)",
    ),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Postavi broj sekundi za preskakanje unatrag kad se pritisne tipka za premotavanje unatrag.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Traži"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "Pretraživanje onemogućeno",
    ),
    "seek": MessageLookupByLibrary.simpleMessage("Pomicanje"),
    "sequence": MessageLookupByLibrary.simpleMessage("Slijed"),
    "series": MessageLookupByLibrary.simpleMessage("Serija"),
    "serverAddress": MessageLookupByLibrary.simpleMessage(
      "Adresa poslužitelja",
    ),
    "serverNotFound": MessageLookupByLibrary.simpleMessage(
      "Poslužitelj nije pronađen",
    ),
    "serverSelection": MessageLookupByLibrary.simpleMessage(
      "Odabir poslužitelja",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Postavke"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Protresi za resetiranje tajmera za spavanje",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Podijeli otvoreno"),
    "show": MessageLookupByLibrary.simpleMessage("Prikaži"),
    "showMediaType": MessageLookupByLibrary.simpleMessage(
      "Prikaži vrstu medija",
    ),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Na dnu svake stavke prikazuje oznaku vrste medija.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Prikaži napredak po poglavlju",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Odjavi se"),
    "size": MessageLookupByLibrary.simpleMessage("Veličina"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Tajmer za spavanje"),
    "sort": MessageLookupByLibrary.simpleMessage("Sortiranje"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Sortiraj serije u rastućem redoslijedu",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Statistika"),
    "stop": MessageLookupByLibrary.simpleMessage("Zaustavi"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Zaustavi reprodukciju dok se ne sinkronizira",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Omogući ovu opciju kako bi spriječili pokretanje reproduciranje dok se ne sinkronizira najnovija pozicija reprodukcije. To osigurava da se reprodukcija nastavi s ispravnog položaja. Ako je onemogućeno, položaj reprodukcije može se promijeniti ubrzo nakon pokretanja, što može dovesti do gubitka podataka. Uključivanje ove funkcije pomaže u štednji podataka.",
    ),
    "subdirectory": MessageLookupByLibrary.simpleMessage("Podmapa"),
    "success": MessageLookupByLibrary.simpleMessage("Uspješno"),
    "sync": MessageLookupByLibrary.simpleMessage("Sinkronizacija"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Interval sinkronizacije (sekunde)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Specificira koliko često aplikacija se treba sinkronizirati s poslužiteljem. Molimo ponovno pokreni aplikaciju da bi promjene stupile na snagu.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Sinkronizacija samo putem WiFi-ja",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Oznake"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Naslov"),
    "today": MessageLookupByLibrary.simpleMessage("Danas"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Topi autori"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Top žanrovi"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Ukupno audio zapisa",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Ukupno autora"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Ukupno trajanje"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Ukupno žanrova"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Ukupno stavki"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Ukupna veličina"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Ukupno vrijeme slušanja",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Pokušaj ponovno"),
    "unknown": MessageLookupByLibrary.simpleMessage("Nepoznato"),
    "user": MessageLookupByLibrary.simpleMessage("Korisnik"),
    "username": MessageLookupByLibrary.simpleMessage("Korisničko ime"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage("Pogledaj oznake"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Pogledaj poglavlja"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage(
      "Pogledajte na GitHubu",
    ),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Molimo pričekaj preusmjeravanje na /init. Trenutno nisi prijavljen.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "Čekam da preuzimanje započne",
    ),
    "wrapText": MessageLookupByLibrary.simpleMessage("Prelamanje teksta"),
    "wrapTextDescription": MessageLookupByLibrary.simpleMessage(
      "Kada je omogućeno, neki tekstovi, poput poglavlja, se prelamaju umjesto da se prekidaju. To će poremetiti neke dizajne.",
    ),
  };
}
