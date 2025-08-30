// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl locale. All the
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
  String get localeName => 'nl';

  static String m0(num) => "Hoofdstuk (${num})";

  static String m4(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m9(hours, minutes) => "${hours}h ${minutes}m";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m13(count) => "${count}m";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Apparaat: ${device}\nOS: ${os}\nApplicatie Versie: ${version}";

  static String m17(displayName) =>
      "De download van ${displayName} is kompleet";

  static String m18(displayName) => "Aan het downloaden van ${displayName}";

  static String m19(displayName) =>
      "Er is iets misgegaan met het downloaden van ${displayName}";

  static String m20(length) => "Lengte: ${length}";

  static String m21(numChapters) => "Aantal Hoofdstukken: ${numChapters}";

  static String m22(year) => "Jaar Uitgebracht: ${year}";

  static String m24(progress) => "Huidige Voortgang: ${progress} %";

  static String m25(time) => "Tijd Resterend: ${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Voeg een Nieuwe Gebruiker toe",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Voeg een Gebruiker toe"),
    "added": MessageLookupByLibrary.simpleMessage("Toegevoegd"),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Alle Downloads"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED Modus"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Een onbekende fout is voorgekomen",
    ),
    "author": MessageLookupByLibrary.simpleMessage("Auteur"),
    "authors": MessageLookupByLibrary.simpleMessage("Auteurs"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Auto Speler"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage(
      "Verander de Bibliotheek",
    ),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Verwijder cache"),
    "close": MessageLookupByLibrary.simpleMessage("Sluiten"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage(
      "Minimaliseer Series",
    ),
    "connectionError": MessageLookupByLibrary.simpleMessage("Verbindingsfout"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "Aaneengesloten dagen",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage("Hervat"),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Vervolg Series"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopieer logs"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Belangrijk:\nBij het clicken op \'Kopieer\' worden alle logs naar je clipboard gekopieerd, waaronder de data die is opgeslagen sinds de applicatie voor het laatst is gestart of gecleared. Deze logs kunnen gevoelige informatie bevatten zoals: tokens, gebruikersnamen, email adressen en server URLs. Ben voorzichtig waar je deze informatie plakt.\\n Als je \'Kopieer zonder gevoelige informatie\' selecteerd zal de applicatie proberen tokens, gebruikersnamen, emails en server URLs te verbergen. Echter ben je zelf verantwoordelijk om de logs te controleren op gevoelige informatie.",
    ),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Creeer Bladwijzer"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Creeer bladwijzer",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Huidige Downloads",
    ),
    "customHeaders": MessageLookupByLibrary.simpleMessage(
      "Aangepaste Koptekst",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Donkere Modus"),
    "dateFormatDayHourMinuteSecondShort": m4,
    "dateFormatHourMinuteShort": m9,
    "dateFormatMinuteSecondShort": m12,
    "dateFormatMinuteShort": m13,
    "dateFormatSecondShort": m15,
    "daysListened": MessageLookupByLibrary.simpleMessage("Dagen geluisterd"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Debug Logs"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "Verwijder Selectie",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Afdalend"),
    "description": MessageLookupByLibrary.simpleMessage("Beschrijving"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Schakel het overslaan van hoofdstukken uit",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Deze functie schakelt de mogelijkheid om hoofdstukken over te slaan buiten de applicatie om uit (e.g. via een hoofdtelefoon of bij notificatie controls). Schakel deze functie in om aan de hand van hoofdtelefoons vooruit en teruguit te kunnen spoelen.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Schakel Vibraties uit",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Uitgeschakeld"),
    "discover": MessageLookupByLibrary.simpleMessage("Ontdek"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domein of IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Download kompleet",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Het bestand was niet correct gedownload. You kan proberen om de data te verwijderen op dit apparaat door op de knop te drukken en het overnieuw proberen te downloaden.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("Download Info"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Download Locatie"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "De locatie waar de downloads zijn opgeslagen. Om dit te veranderen moet je eerst alle downloads verwijderen.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Aan het downloaden"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Download alleen via WiFi",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Duratie"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook-Reader"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Bewerk Wachtrij"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Schakel notificaties in om voortgangsupdates van de download te krijgen en om in de achtergrond te kunnen downloaden.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Ingeschakeld"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Episode Id"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage("Downloadfout"),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Fout: Het item is niet gevonden!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Exit"),
    "failed": MessageLookupByLibrary.simpleMessage("Mislukt"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Doorspoelen"),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Stel het aantal seconden in voor het vooruitspoelen wanneer de vooruitspoelknop is ingedrukt.",
    ),
    "filename": MessageLookupByLibrary.simpleMessage("Bestandsnaam"),
    "filepath": MessageLookupByLibrary.simpleMessage("Bestands locatie"),
    "general": MessageLookupByLibrary.simpleMessage("Algemeen"),
    "genres": MessageLookupByLibrary.simpleMessage("Genres"),
    "hide": MessageLookupByLibrary.simpleMessage("Minimaliseer"),
    "information": MessageLookupByLibrary.simpleMessage("Informatie"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Ongeldige gegevens",
    ),
    "itemId": MessageLookupByLibrary.simpleMessage("Item Id"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "Het Item kon niet worden gevonden. Dit kan zijn door een verbindingsfout of omdat het item niet langer bestaad maar nog wel gecached is.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Item type"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Spring naar de laatste positie",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Taal"),
    "largestItems": MessageLookupByLibrary.simpleMessage("Grootste Item"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Laatste 30 dagen"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Laatste 7 dagen"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Bibliotheek Naam"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Bibliotheek Statistieken",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Luister opnieuw"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Geluisterd in het laatste jaar",
    ),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Vergrendel Media Voortgangs Balk",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Bij het activeren van deze functie wordt devoortgangsbalk in de medianotificatie vergrendeld, als de OS dat toestaat",
    ),
    "longestItems": MessageLookupByLibrary.simpleMessage("Langstdurende Items"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Minimalizeer naar systeemvak",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Deze functie verplaatst de applicatie van de taakbalk naar het systeemvak.",
    ),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Meer opties"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Nieuwste Episoden"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Volgende Hoofdstuk"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Geen Verbinding"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Geen downloads"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Er zijn problemen met het verbinden met de server.",
    ),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Geen series geselecteerd",
    ),
    "notStarted": MessageLookupByLibrary.simpleMessage("Niet Gestart"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Niet geprobeerd"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Notificaties moeten worden ingeschakeld",
    ),
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Aantal Boeken"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Lokale Progressie",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Lokaal opgeslagen voortgang",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Eigen Statistieken"),
    "password": MessageLookupByLibrary.simpleMessage("Wachtwoord"),
    "pause": MessageLookupByLibrary.simpleMessage("Pauseer"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Gepersonaliseerde Bibliotheek",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Afspelen"),
    "playHistory": MessageLookupByLibrary.simpleMessage("Afspeelgeschiedenis"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Speel volgende episode af",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Snelheid"),
    "player": MessageLookupByLibrary.simpleMessage("Speler"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Controleer je internetverbinding en probeer het opnieuw.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Poort"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Vorige Hoofdstuk"),
    "progress": MessageLookupByLibrary.simpleMessage("Progressie"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Activeer deze functie om de voortgang per hoofdstuk in de speler te laten zien. Als deze functie is uitgeschakeld zal de totale voortgang worden laten zien.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Uitgever"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Recente Series"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage(
      "Recentelijk Toegevoegd",
    ),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Rapporteer een issue",
    ),
    "requiredFields": MessageLookupByLibrary.simpleMessage(
      "Vul alle benodigde velden in",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Herstart de applicatie om de aanpassingen toe te passen.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Probeer opnieuw"),
    "rewind": MessageLookupByLibrary.simpleMessage("Spoel terug"),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Zet het aantal seconden om terug te spoelen wanneer de terugspoelknop is ingedrukt.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Zoek"),
    "sequence": MessageLookupByLibrary.simpleMessage("Sequentie"),
    "series": MessageLookupByLibrary.simpleMessage("Series"),
    "serverNotFound": MessageLookupByLibrary.simpleMessage(
      "Server niet gevonden",
    ),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Server Selectie"),
    "settings": MessageLookupByLibrary.simpleMessage("Instellingen"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Schud om timer te resetten",
    ),
    "show": MessageLookupByLibrary.simpleMessage("Toon"),
    "showMediaType": MessageLookupByLibrary.simpleMessage(
      "Laat Media Types Zien",
    ),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Weergeeft de mediatype badge onderaan elke item.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Laat het Voortgang per Hoofdstuk zien",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Uitloggen"),
    "size": MessageLookupByLibrary.simpleMessage("Grootte"),
    "sort": MessageLookupByLibrary.simpleMessage("Sorteer"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Sorteer series in Oplopende Volgorde",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Statistieken"),
    "stop": MessageLookupByLibrary.simpleMessage("Stop"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Stop Speler tot Synchronisatie is afgerond",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Activeer deze functie om de speler pas te laten spelen als de meest recente voortgangspositie is gesynchroniseerd. Dit zorgt ervoor dat de correcte afspeelpositie wordt gebruikt. Als deze functie is uitgeschakeld kan de afspeelpositie veranderen, wat kan leiden tot extra data gebruik. Deze functie zorgt voor data besparing.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "sync": MessageLookupByLibrary.simpleMessage("Synchroniseer"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Synchronisatie Interval (seconden)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Specificeert hoevaak de applicatie moet synchroniseren met de server. Herstart de applicatie om de verandering toe te passen.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Synchroniseer alleen via WiFi",
    ),
    "timeRemainingNum": m25,
    "title": MessageLookupByLibrary.simpleMessage("Titel"),
    "today": MessageLookupByLibrary.simpleMessage("Vandaag"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Top Auteurs"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Totale Audiotracks",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage(
      "Totaal aantal Auteurs",
    ),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Totale Duratie"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Totaal aantal Genres"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Totaal aantal Items"),
    "totalSize": MessageLookupByLibrary.simpleMessage(
      "Totale hoeveelheid opslag",
    ),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Totale tijd geluisterd",
    ),
    "unknown": MessageLookupByLibrary.simpleMessage("Onbekend"),
    "user": MessageLookupByLibrary.simpleMessage("Gebruiker"),
    "username": MessageLookupByLibrary.simpleMessage("Gebruikersnaam"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Bekijk op GitHub"),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "Wachten op het starten van de download",
    ),
  };
}
