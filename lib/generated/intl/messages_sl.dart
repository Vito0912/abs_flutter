// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sl locale. All the
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
  String get localeName => 'sl';

  static String m0(num) => "Poglavja (${num})";

  static String m1(position) => "Trenutni položaj: ${position}";

  static String m2(count) =>
      "${Intl.plural(count, one: '${count}  dan', other: '${count} dni')}";

  static String m3(days, hours) =>
      "${Intl.plural(days, one: '${days} dan', other: '${days} dni')} ${Intl.plural(hours, one: '${hours} ura', other: '${hours} ur')}";

  static String m4(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} dan', other: '${days} dni')} ${Intl.plural(hours, one: '${hours} ura', other: '${hours} ur')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minut')}";

  static String m5(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} dan', other: '${days} dni')} ${Intl.plural(hours, one: '${hours} ura', other: '${hours} ur')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minut')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekund')}";

  static String m6(days, hours, minutes, seconds) =>
      "${days}d ${hours}u ${minutes}m ${seconds}s";

  static String m7(days, hours, minutes) => "${days}d ${hours}u ${minutes}m";

  static String m8(days, hours) => "${days}d ${hours}u";

  static String m9(count) => "${count}d";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} ura', other: '${count} ur')}";

  static String m11(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} ura', other: '${hours} ur')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minut')}";

  static String m12(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} ura', other: '${hours} ur')} ${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minut')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekund')}";

  static String m13(hours, minutes, seconds) =>
      "${hours}u ${minutes}m ${seconds}s";

  static String m14(hours, minutes) => "${hours}u ${minutes}m";

  static String m15(count) => "${count}u";

  static String m16(count) =>
      "${Intl.plural(count, one: '${count} minuta', other: '${count} minut')}";

  static String m17(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minuta', other: '${minutes} minut')} ${Intl.plural(seconds, one: '${seconds} sekunda', other: '${seconds} sekund')}";

  static String m18(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m19(count) => "${count}m";

  static String m20(count) =>
      "${Intl.plural(count, one: '${count}  sekunda', other: '${count} sekund')}";

  static String m21(count) => "${count}s";

  static String m22(device, os, version) =>
      "Naprava: ${device}\nOS: ${os}\nRazličica aplikacije: ${version}";

  static String m23(displayName) => "Prenos ${displayName} je končan";

  static String m24(displayName) => "Prenašanje ${displayName}";

  static String m25(displayName) =>
      "Med prenosom ${displayName} je prišlo do napake";

  static String m26(length) => "Dolžina: ${length}";

  static String m27(numChapters) => "Število poglavij: ${numChapters}";

  static String m28(progress) => "Napredek: ${progress} %";

  static String m29(year) => "Leto izdaje: ${year}";

  static String m30(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Ni knjig', one: '1 knjiga', other: '${numBooks} knjig')}";

  static String m31(progress) => "Trenutni napredek: ${progress} %";

  static String m32(time) => "Preostali čas: ${time}";

  static String m33(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser":
            MessageLookupByLibrary.simpleMessage("Dodaj novega uporabnika"),
        "addUser": MessageLookupByLibrary.simpleMessage("Dodaj uporabnika"),
        "added": MessageLookupByLibrary.simpleMessage("Dodano"),
        "advanced": MessageLookupByLibrary.simpleMessage(
            "To je naslov za zavihek z \"naprednimi\" nastavitvami"),
        "aggressiveCaching":
            MessageLookupByLibrary.simpleMessage("Agresivno predpomnjenje"),
        "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
            "Ko je omogočena, bo aplikacija omogočila bolj agresivno predpomnjenje. To vključuje poti predpomnjenja, ki lahko vsebujejo podatke, ki jih je treba redno posodabljati, na primer pridobivanje napredka vseh elementov. V teh primerih bo uporabljen zadnji znani položaj, razen če posebej odprete in zahtevate en element. Te poti bodo imele krajše trajanje predpomnilnika."),
        "allDownloads": MessageLookupByLibrary.simpleMessage("Vsi prenosi"),
        "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED način"),
        "ascending": MessageLookupByLibrary.simpleMessage("Naraščajoče"),
        "attribution": MessageLookupByLibrary.simpleMessage("Pripisovanje"),
        "author": MessageLookupByLibrary.simpleMessage("Avtor"),
        "authors": MessageLookupByLibrary.simpleMessage("Avtorji"),
        "back": MessageLookupByLibrary.simpleMessage("Nazaj"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Naslovnica knjige"),
        "boostLoading":
            MessageLookupByLibrary.simpleMessage("Pohitri nalaganje"),
        "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
            "Ko je ta funkcija omogočena, aplikacija učinkovito zaobide predpomnjenje v realnem času. Vedno bo poskušala pridobiti najnovejše podatke s strežnika, medtem ko bo uporabila predpomnjene podatke za takojšnje nalaganje vsebine. Ko so posodobljeni podatki pridobljeni, zamenjajo stari predpomnilnik in zagotovijo, ko naslednjič naložite aplikacijo, da so prikazani najnovejši podatki. Posledično boste vedno videli podatke iz enega cikla pridobivanja za trenutnimi podatki strežnika."),
        "boostLoadingSubtitle": MessageLookupByLibrary.simpleMessage(
            "Prosim preberite opis, da boste lažje razumeli to funkcijo."),
        "caching": MessageLookupByLibrary.simpleMessage("Predpomnjenje"),
        "cachingHeader": MessageLookupByLibrary.simpleMessage("Predpomnjenje"),
        "cancel": MessageLookupByLibrary.simpleMessage("Prekliči"),
        "carPlayer": MessageLookupByLibrary.simpleMessage("Avto predvajalnik"),
        "changeLibrary":
            MessageLookupByLibrary.simpleMessage("Spremeni knjižnico"),
        "chapters": MessageLookupByLibrary.simpleMessage("Poglavja"),
        "chaptersNum": m0,
        "clearCache":
            MessageLookupByLibrary.simpleMessage("Počisti predpomnilnik"),
        "close": MessageLookupByLibrary.simpleMessage("Zapri"),
        "collapseSeries": MessageLookupByLibrary.simpleMessage("Strni serije"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "Ko je omogočeno, bodo elementi v seriji združeni skupaj v pogledu knjižnice, pri čemer bo prikazan samo en element, ki predstavlja celotno serijo."),
        "consecutiveDays":
            MessageLookupByLibrary.simpleMessage("Zaporedni dnevi"),
        "continueListening":
            MessageLookupByLibrary.simpleMessage("Nadaljujte s poslušanjem"),
        "continueSeries":
            MessageLookupByLibrary.simpleMessage("Nadaljuj serijo"),
        "copy": MessageLookupByLibrary.simpleMessage("Kopiraj"),
        "copyAnonymous": MessageLookupByLibrary.simpleMessage(
            "Kopiraj (poskusi skriti občutljive informacije)"),
        "copyLogs": MessageLookupByLibrary.simpleMessage("Kopiraj dnevnike"),
        "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
            "Pomembno:\nČe kliknete »Kopiraj«, boste vse trenutno prikazane dnevnike prenesli v odložišče, vključno s podatki, zabeleženimi od zagona ali zadnjega brisanja aplikacije. Ti dnevniki lahko vsebujejo občutljive podatke, kot so žetoni, uporabniška imena, e-poštna sporočila in URL-ji strežnikov. Bodite previdni, kam boste prilepili te podatke!\\nČe izberete »Kopiraj in poskusi skriti občutljive informacije«, bo aplikacija poskušala prikriti elemente, kot so žetoni, uporabniška imena, e-poštna sporočila in URL-ji strežnikov. Vendar ste odgovorni za pregled dnevnikov, da zagotovite, da so vsi osebni podatki v celoti odstranjeni."),
        "create": MessageLookupByLibrary.simpleMessage("Ustvari"),
        "createBookmark":
            MessageLookupByLibrary.simpleMessage("Ustvari zaznamek"),
        "createBookmarkTitle":
            MessageLookupByLibrary.simpleMessage("Ustvari zaznamek"),
        "currentDownloads":
            MessageLookupByLibrary.simpleMessage("Trenutni prenosi"),
        "currentPositionNum": m1,
        "darkMode": MessageLookupByLibrary.simpleMessage("Temni način"),
        "dateFormatDay": m2,
        "dateFormatDayHour": m3,
        "dateFormatDayHourMinute": m4,
        "dateFormatDayHourMinuteSecond": m5,
        "dateFormatDayHourMinuteSecondShort": m6,
        "dateFormatDayHourMinuteShort": m7,
        "dateFormatDayHourShort": m8,
        "dateFormatDayShort": m9,
        "dateFormatHour": m10,
        "dateFormatHourMinute": m11,
        "dateFormatHourMinuteSecond": m12,
        "dateFormatHourMinuteSecondShort": m13,
        "dateFormatHourMinuteShort": m14,
        "dateFormatHourShort": m15,
        "dateFormatMinute": m16,
        "dateFormatMinuteSecond": m17,
        "dateFormatMinuteSecondShort": m18,
        "dateFormatMinuteShort": m19,
        "dateFormatSecond": m20,
        "dateFormatSecondShort": m21,
        "daysListened":
            MessageLookupByLibrary.simpleMessage("Dnevi poslušanja"),
        "debugLogs":
            MessageLookupByLibrary.simpleMessage("Dnevniki razhroščevanja"),
        "deleteSelected":
            MessageLookupByLibrary.simpleMessage("Izbriši izbrano"),
        "descending": MessageLookupByLibrary.simpleMessage("Padajoče"),
        "description": MessageLookupByLibrary.simpleMessage("Opis"),
        "deviceInfo": m22,
        "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
            "Onemogoči preskakovanje poglavij"),
        "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "To bo onemogočilo možnost preskakovanja poglavij ZUNAJ aplikacije (npr. prek slušalk ali kontrolnikov za obvestila). Omogočite to, če želite, da vaše slušalke uporabljajo funkciji za hitro previjanje naprej in nazaj, namesto da preskakujejo poglavja."),
        "disableVibration":
            MessageLookupByLibrary.simpleMessage("Onemogoči vibriranje"),
        "disabled": MessageLookupByLibrary.simpleMessage("Onemogočeno"),
        "discover": MessageLookupByLibrary.simpleMessage("Odkrij"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("Domena ali IP"),
        "downloadComplete":
            MessageLookupByLibrary.simpleMessage("Prenos končan"),
        "downloadCompleteBody": m23,
        "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
            "Datoteka ni bila pravilno prenesena. Podatke v napravi lahko poskusite izbrisati s klikom na gumb in jih ponovno prenesete."),
        "downloadInfo":
            MessageLookupByLibrary.simpleMessage("Informacije o prenosu"),
        "downloadPath": MessageLookupByLibrary.simpleMessage("Pot prenosa"),
        "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
            "Pot, kjer so shranjeni prenosi. Če želite to spremeniti, morate najprej izbrisati vse prenose."),
        "downloading": MessageLookupByLibrary.simpleMessage("Prenašanje"),
        "downloadingBody": m24,
        "downloads": MessageLookupByLibrary.simpleMessage("Prenosi"),
        "downloadsOnlyViaWifi":
            MessageLookupByLibrary.simpleMessage("Prenašaj samo preko WiFi"),
        "duration": MessageLookupByLibrary.simpleMessage("Trajanje"),
        "ebookreader": MessageLookupByLibrary.simpleMessage("e-bralnik"),
        "editQueue":
            MessageLookupByLibrary.simpleMessage("Uredi čakalno vrsto"),
        "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
            "Omogočite obvestila, če želite prejemati posodobitve napredka prenosa in lahko prenašate datoteke v ozadju."),
        "enabled": MessageLookupByLibrary.simpleMessage("Omogočeno"),
        "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
            "Preden vnesete uporabniško ime in geslo, vnesite veljaven IP/domeno in vrata."),
        "episodeId": MessageLookupByLibrary.simpleMessage("ID epizode"),
        "error": MessageLookupByLibrary.simpleMessage("Napaka"),
        "errorDownloading":
            MessageLookupByLibrary.simpleMessage("Napaka pri prenosu"),
        "errorDownloadingBody": m25,
        "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
            "Napaka: Predmet ni bil najden!"),
        "exit": MessageLookupByLibrary.simpleMessage("Izhod"),
        "failed": MessageLookupByLibrary.simpleMessage("Ni uspelo"),
        "fastForward":
            MessageLookupByLibrary.simpleMessage("Hitro premikanje naprej"),
        "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
            "Sekunde hitrega premikanja naprej"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Nastavite število sekund za preskok naprej, ko pritisnete gumb za hitro premikanje naprej."),
        "feedOpen": MessageLookupByLibrary.simpleMessage("Odpri vir"),
        "filename": MessageLookupByLibrary.simpleMessage("Ime datoteke"),
        "filepath": MessageLookupByLibrary.simpleMessage("Pot datoteke"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "finished": MessageLookupByLibrary.simpleMessage("Zaključeno"),
        "general": MessageLookupByLibrary.simpleMessage("Splošno"),
        "genres": MessageLookupByLibrary.simpleMessage("Žanri"),
        "hide": MessageLookupByLibrary.simpleMessage("Skrij"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage(
                "Ali mora biti prikazan hitri preklopnik računov"),
        "inProgress": MessageLookupByLibrary.simpleMessage("V teku"),
        "information": MessageLookupByLibrary.simpleMessage("Informacija"),
        "itemId": MessageLookupByLibrary.simpleMessage("ID elementa"),
        "itemLength": m26,
        "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
            "Elementa ni bilo mogoče najti. To je lahko posledica omrežne napake ali ker element ne obstaja več, vendar ostaja predpomnjen."),
        "itemNumChapters": m27,
        "itemProgress": m28,
        "itemPublishedYear": m29,
        "itemType": MessageLookupByLibrary.simpleMessage("Vrsta elementa"),
        "jumpToLastPosition":
            MessageLookupByLibrary.simpleMessage("Skoči na zadnji položaj"),
        "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
            "Ko je omogočeno, bo predvajalnik skočil na zadnji položaj, ko pritisnete predvajaj"),
        "language": MessageLookupByLibrary.simpleMessage("Jezik"),
        "languages": MessageLookupByLibrary.simpleMessage("Jeziki"),
        "largestItems":
            MessageLookupByLibrary.simpleMessage("Največji elementi"),
        "last30Days": MessageLookupByLibrary.simpleMessage("Zadnjih 30 dni"),
        "last7Days": MessageLookupByLibrary.simpleMessage("Zadnjih 7 dni"),
        "libraries": MessageLookupByLibrary.simpleMessage("Knjižnice"),
        "library": MessageLookupByLibrary.simpleMessage("Knjižnica"),
        "libraryName": MessageLookupByLibrary.simpleMessage("Ime knjižnice"),
        "libraryStats":
            MessageLookupByLibrary.simpleMessage("Statistika knjižnice"),
        "linuxPermissionError": MessageLookupByLibrary.simpleMessage(
            "Prenos ni uspel zaradi napake pri dovoljenju. Preverite dovoljenja za mapo."),
        "listenAgain": MessageLookupByLibrary.simpleMessage("Poslušaj znova"),
        "listeningInTheLastYear":
            MessageLookupByLibrary.simpleMessage("Poslušanje v zadnjem letu"),
        "loading": MessageLookupByLibrary.simpleMessage("Nalaganje…"),
        "lockProgressBar": MessageLookupByLibrary.simpleMessage(
            "Zakleni vrstico napredka predstavnosti"),
        "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
            "Ko je omogočena, ta funkcija zaklene vrstico napredka v medijskem obvestilu, če to podpira operacijski sistem"),
        "logging": MessageLookupByLibrary.simpleMessage("Beleženje"),
        "logs": MessageLookupByLibrary.simpleMessage("Dnevniki"),
        "longestItems":
            MessageLookupByLibrary.simpleMessage("Najdaljši elementi"),
        "markItemsFinished": MessageLookupByLibrary.simpleMessage(
            "Označi elemente kot dokončane"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "Določite čas v sekundah pred koncem elementa, ko naj bo označen kot končan. Če to nastavite na 0, označite element kot končan šele, ko igralec doseže sam konec. Če je nastavljena pozitivna vrednost, je predmet označen kot končan, ko igralec doseže ta čas pred koncem."),
        "minimize": MessageLookupByLibrary.simpleMessage("Minimiziraj"),
        "minimizeToTray": MessageLookupByLibrary.simpleMessage(
            "Minimiziraj v opravilno vrstico"),
        "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
            "Ta možnost skrije aplikacijo iz opravilne vrstice in jo premakne v sistemsko vrstico."),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Razno"),
        "moreOptions": MessageLookupByLibrary.simpleMessage("Več možnosti"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "Če želite uporabiti več naslovov strežnika, jih lahko dodate pozneje"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "Vnesti morate veljaven naslov strežnika"),
        "name": MessageLookupByLibrary.simpleMessage("Ime"),
        "narrators": MessageLookupByLibrary.simpleMessage("Bralci"),
        "newestEpisodes":
            MessageLookupByLibrary.simpleMessage("Najnovejše epizode"),
        "next": MessageLookupByLibrary.simpleMessage("Naslednje"),
        "nextChapter":
            MessageLookupByLibrary.simpleMessage("Naslednje poglavje"),
        "noConnection": MessageLookupByLibrary.simpleMessage("Brez povezave"),
        "noDownloads": MessageLookupByLibrary.simpleMessage("Brez prenosov"),
        "noInternetDescription": MessageLookupByLibrary.simpleMessage(
            "Imamo težave pri povezovanju s strežnikom."),
        "noItemsFound":
            MessageLookupByLibrary.simpleMessage("Ne najdem elementov"),
        "noPath": MessageLookupByLibrary.simpleMessage("Brez poti"),
        "noSeriesSelected":
            MessageLookupByLibrary.simpleMessage("Ni izbrane serije"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Prijava ni uspela: podatki o uporabniku niso bili prejeti"),
        "notFinished": MessageLookupByLibrary.simpleMessage("Ni dokončano"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Ni začeto"),
        "notTriedYet":
            MessageLookupByLibrary.simpleMessage("Še ni preizkušeno"),
        "notificationHeading": MessageLookupByLibrary.simpleMessage(
            "Obvestila morajo biti omogočena"),
        "numBooksInSeries": m30,
        "numberOfBooks": MessageLookupByLibrary.simpleMessage("Število knjig"),
        "offlineProgress":
            MessageLookupByLibrary.simpleMessage("Brez povezave napredek"),
        "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
            "Shranjen napredek brez povezave"),
        "ok": MessageLookupByLibrary.simpleMessage("V redu"),
        "open": MessageLookupByLibrary.simpleMessage("Odpri"),
        "openDownloads": MessageLookupByLibrary.simpleMessage("Odpri prenose"),
        "openProjectLink":
            MessageLookupByLibrary.simpleMessage("Audiobookshelf/strežnik"),
        "ownStats": MessageLookupByLibrary.simpleMessage("Lastna statistika"),
        "password": MessageLookupByLibrary.simpleMessage("Geslo"),
        "pause": MessageLookupByLibrary.simpleMessage("Pavza"),
        "personalizedLibrary":
            MessageLookupByLibrary.simpleMessage("Osebna knjižnica"),
        "play": MessageLookupByLibrary.simpleMessage("Predvajaj"),
        "playHistory":
            MessageLookupByLibrary.simpleMessage("Zgodovina predvajanj"),
        "playNextEpisode":
            MessageLookupByLibrary.simpleMessage("Predvajaj naslednjo epizodo"),
        "playbackSpeed": MessageLookupByLibrary.simpleMessage("Histrost"),
        "player": MessageLookupByLibrary.simpleMessage("Predvajalnik"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Nastavitve predvajalnika"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Preverite internetno povezavo in poskusite znova."),
        "port": MessageLookupByLibrary.simpleMessage("Vrata"),
        "previous": MessageLookupByLibrary.simpleMessage("Prejšnje"),
        "previousChapter":
            MessageLookupByLibrary.simpleMessage("Prejšnje poglavje"),
        "progress": MessageLookupByLibrary.simpleMessage("Napredek"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "Omogočite to možnost za prikaz napredka v predvajalniku in obvestil za posamezno poglavje. Če je onemogočeno, bo napredek prikazan glede na celoten element."),
        "progressNum": m31,
        "publisher": MessageLookupByLibrary.simpleMessage("Izdajatelj"),
        "readLess": MessageLookupByLibrary.simpleMessage("Preberi manj"),
        "readMore": MessageLookupByLibrary.simpleMessage("Preberi več"),
        "recentSeries": MessageLookupByLibrary.simpleMessage("Nedavne serije"),
        "recentlyAdded": MessageLookupByLibrary.simpleMessage("Nedavno dodano"),
        "reportAnIssue":
            MessageLookupByLibrary.simpleMessage("Prijavite težavo"),
        "restartRequired":
            MessageLookupByLibrary.simpleMessage("Potreben je ponovni zagon"),
        "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
            "Za uveljavite sprememb, prosim znova zaženite aplikacijo."),
        "retry": MessageLookupByLibrary.simpleMessage("Poskusite znova"),
        "rewind": MessageLookupByLibrary.simpleMessage("Previjanje nazaj"),
        "rewindSeconds":
            MessageLookupByLibrary.simpleMessage("Sekunde previjanja nazaj"),
        "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Nastavite število sekund za preskok nazaj, ko pritisnete gumb za previjanje nazaj."),
        "search": MessageLookupByLibrary.simpleMessage("Iskanje"),
        "searchDisabled":
            MessageLookupByLibrary.simpleMessage("Iskanje je onemogočeno"),
        "seek": MessageLookupByLibrary.simpleMessage("Iskanje"),
        "sequence": MessageLookupByLibrary.simpleMessage("Zaporedje"),
        "series": MessageLookupByLibrary.simpleMessage("Serije"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Za nadaljevanje vnesite naslov strežnika"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Izbira strežnika"),
        "settings": MessageLookupByLibrary.simpleMessage("Nastavitve"),
        "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
            "Stresi za ponastavitev časovnika za spanje"),
        "shareOpen": MessageLookupByLibrary.simpleMessage("Odpri skupno rabo"),
        "show": MessageLookupByLibrary.simpleMessage("Prikaži"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Pokaži preklopnik računov"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "Omogočite to možnost, če želite v vrstico z aplikacijami dodati gumb z ikonami za hitro preklapljanje med računi. To bo zmanjšalo velikost vrstice aplikacij."),
        "showMediaType":
            MessageLookupByLibrary.simpleMessage("Prikaži vrsto medija"),
        "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
            "Prikaže značke vrste medija na dnu vsakega elementa."),
        "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
            "Prikaži napredek po poglavjih"),
        "signOut": MessageLookupByLibrary.simpleMessage("Odjava"),
        "size": MessageLookupByLibrary.simpleMessage("Velikost"),
        "sleepTimer":
            MessageLookupByLibrary.simpleMessage("Časovnik za spanje"),
        "sort": MessageLookupByLibrary.simpleMessage("Razvrsti"),
        "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
            "Razvrsti serije v naraščajočem vrstnem redu"),
        "stats": MessageLookupByLibrary.simpleMessage("Statistike"),
        "stop": MessageLookupByLibrary.simpleMessage("Ustavi"),
        "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
            "Ustavi predvajalnik do sinhronizacije"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "Omogočite to možnost, da preprečite zagon predvajalnika, dokler ni sinhroniziran zadnji položaj predvajanja. To zagotavlja, da se predvajanje nadaljuje s pravilnega položaja. Če je onemogočeno, se lahko položaj predvajanja spremeni kmalu po začetku, kar lahko povzroči izgubo podatkov. Vklop te možnosti pomaga ohraniti porabo podatkov."),
        "success": MessageLookupByLibrary.simpleMessage("Uspeh"),
        "sync": MessageLookupByLibrary.simpleMessage("Sinhronizacija"),
        "syncInterval": MessageLookupByLibrary.simpleMessage(
            "Interval sinhronizacije (sekunde)"),
        "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
            "Določa, kako pogosto naj se aplikacija sinhronizira s strežnikom. Znova zaženite aplikacijo, da bodo spremembe začele veljati."),
        "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
            "Sinhroniziraj samo prek WiFi"),
        "tags": MessageLookupByLibrary.simpleMessage("Oznake"),
        "timeRemainingNum": m32,
        "timerText": m33,
        "title": MessageLookupByLibrary.simpleMessage("Naslov"),
        "today": MessageLookupByLibrary.simpleMessage("Danes"),
        "topAuthors": MessageLookupByLibrary.simpleMessage("Top avtorji"),
        "topGenres": MessageLookupByLibrary.simpleMessage("Top žanri"),
        "totalAudioTracks":
            MessageLookupByLibrary.simpleMessage("Skupaj zvočnih posnetkov"),
        "totalAuthors": MessageLookupByLibrary.simpleMessage("Skupno avtorjev"),
        "totalDuration": MessageLookupByLibrary.simpleMessage("Skupna dolžina"),
        "totalGenres": MessageLookupByLibrary.simpleMessage("Skupno žanrov"),
        "totalItems": MessageLookupByLibrary.simpleMessage("Skupno elementov"),
        "totalSize": MessageLookupByLibrary.simpleMessage("Skupna velikost"),
        "totalTimeListened":
            MessageLookupByLibrary.simpleMessage("Skupni čas poslušanja"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Poskusi znova"),
        "unknown": MessageLookupByLibrary.simpleMessage("Neznano"),
        "unknownTitle": MessageLookupByLibrary.simpleMessage("Neznani naslov"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Posodobljeno ob"),
        "user": MessageLookupByLibrary.simpleMessage("Uporabnik"),
        "username": MessageLookupByLibrary.simpleMessage("Uporabniško ime"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Uporabniško ime in geslo ne smeta biti prazna"),
        "viewBookmarks":
            MessageLookupByLibrary.simpleMessage("Ogled zaznamkov"),
        "viewChapters": MessageLookupByLibrary.simpleMessage("Ogled poglavij"),
        "viewOnGithub": MessageLookupByLibrary.simpleMessage("Ogled na GitHub"),
        "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
            "Počakajte na preusmeritev na /init. Trenutno niste prijavljeni."),
        "waitingForDownload":
            MessageLookupByLibrary.simpleMessage("Čakam na začetek prenosa"),
        "year": MessageLookupByLibrary.simpleMessage("Leto")
      };
}
