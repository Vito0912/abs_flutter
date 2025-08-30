// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(num) => "Kapitel (${num})";

  static String m1(position) => "Aktuelle Position: ${position}";

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} Tag', other: '${days} Tage')} ${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} Tag', other: '${days} Tage')} ${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m5(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m9(hours, minutes) => "${hours}h ${minutes}m";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} Minute', other: '${count} Minuten')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m13(count) => "${count}m";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count} Sekunde', other: '${count} Sekunden')}";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Gerät: ${device}\nOS: ${os}\nApp Version: ${version}";

  static String m17(displayName) =>
      "Herunterladen von ${displayName} abgeschlossen";

  static String m18(displayName) => "${displayName} wird heruntergeladen";

  static String m19(displayName) =>
      "Es ist ein Fehler beim Herunterladen von ${displayName} aufgetreten";

  static String m20(length) => "Länge: ${length}";

  static String m21(numChapters) => "Anzahl der Kapitel: ${numChapters}";

  static String m22(year) => "Erscheinungsjahr: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Keine Bücher', one: '1 Buch', other: '${numBooks} Bücher')}";

  static String m24(progress) => "Aktueller Fortschritt: ${progress} %";

  static String m25(time) => "Übrige Zeit: ${time}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Füge einen Nutzer hinzu",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Benutzer hinzufügen"),
    "added": MessageLookupByLibrary.simpleMessage("Hinzugefügt"),
    "advanced": MessageLookupByLibrary.simpleMessage("Erweitert"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Aggressives Caching",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Wenn aktiviert, verwendet die App ein intensiveres Caching. Dazu gehört das Zwischenspeichern von Routen, die möglicherweise Daten enthalten, die regelmäßig aktualisiert werden müssen, wie etwa der Fortschritt aller Elemente. In diesen Fällen wird die zuletzt bekannte Position verwendet, es sei denn, du öffnest und aktualisierst ein einzelnes Element gezielt. Diese Routen haben eine kürzere Cache-Dauer.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Alle Downloads"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED Modus"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Ein unbekannter Fehler ist aufgetreten",
    ),
    "ascending": MessageLookupByLibrary.simpleMessage("Aufsteigend"),
    "attribution": MessageLookupByLibrary.simpleMessage("Anerkennungen"),
    "author": MessageLookupByLibrary.simpleMessage("Autor"),
    "authors": MessageLookupByLibrary.simpleMessage("Autoren"),
    "back": MessageLookupByLibrary.simpleMessage("Zurück"),
    "boostLoading": MessageLookupByLibrary.simpleMessage("Ladezeiten senken"),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Wenn aktiviert, umgeht die App effektiv das Real-Time-Caching. Sie versucht stets, die neuesten Daten vom Server abzurufen, während zwischengespeicherte Daten genutzt werden, um Inhalte sofort zu laden. Sobald die aktualisierten Daten abgerufen sind, ersetzen sie den alten Cache, sodass beim nächsten Laden der App die aktuellsten Daten angezeigt werden. Dadurch siehst du immer die Daten aus einem Abrufzyklus hinter den neuesten Serverdaten. Dafür lädt der Inhalt schneller.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Caching"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Caching"),
    "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Auto Player"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage(
      "Bibliothek wechseln",
    ),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Cache leeren"),
    "close": MessageLookupByLibrary.simpleMessage("Schließen"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Serien einklappen"),
    "collections": MessageLookupByLibrary.simpleMessage("Sammlungen"),
    "connectionError": MessageLookupByLibrary.simpleMessage(
      "Verbindungsfehler",
    ),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "Aufeinanderfolgende Tage",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage("Weiter hören"),
    "continueSeries": MessageLookupByLibrary.simpleMessage(
      "Serie weiter hören",
    ),
    "copy": MessageLookupByLibrary.simpleMessage("Kopieren"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Kopieren (Persönliche Daten entfernt)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Kopiere Protokolle"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Wichtig:\nDurch Klicken auf „Kopieren“ werden alle aktuell angezeigten Protokolle in deine Zwischenablage übertragen, einschließlich der Daten, die seit dem Start der App oder der letzten Löschung aufgezeichnet wurden. Diese Protokolle können sensible Informationen wie Tokens, Benutzernamen, E-Mails und Server-URLs enthalten. Sei vorsichtig, wo du diese Informationen einfügst!\\nWenn du „Kopieren (Persönliche Daten entfernt)“ wählst, wird die App versuchen, Elemente wie Tokens, Benutzernamen, E-Mails und Server-URLs zu entfernen. Dennoch bist du dafür verantwortlich, die Protokolle zu überprüfen, um sicherzustellen, dass alle persönlichen Daten vollständig entfernt wurden.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Erstellen"),
    "createBookmark": MessageLookupByLibrary.simpleMessage(
      "Lesezeichen erstellen",
    ),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Lesezeichenerstellung",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Aktuell heruntergeladen",
    ),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage(
      "Benutzerdefinierte Kopfzeilen",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Dunkler Modus"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Tage gehört"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Entwickler Logs"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage("Lösche auswahl"),
    "descending": MessageLookupByLibrary.simpleMessage("Absteigend"),
    "description": MessageLookupByLibrary.simpleMessage("Beschreibung"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Deaktiviere Kapitelsprünge",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Das deaktiviert die Möglichkeit, Kapitel von außerhalb der Anwendung zu überspringen (z. B. über ein Headset oder Steuerungen in Benachrichtigungen). Aktiviere diese Einstellung, wenn du möchtest, dass deine Kopfhörer die Funktionen für Vor- und Zurückspulen nutzen, anstatt Kapitel zu überspringen.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Deaktiviere Vibrationen",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Deaktiviert"),
    "discover": MessageLookupByLibrary.simpleMessage("Entdecken"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Serveradresse oder IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Herunterladen abgeschlossen",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Die Datei wurde nicht korrekt heruntergeladen. Du kannst versuchen, die Daten auf dem Gerät zu löschen und sie erneut herunterzuladen, indem du auf den Button klickst.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("Download Infos"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Download Pfad"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Der Pfad, in dem die Downloads gespeichert werden.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Wird heruntergeladen"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Nur über W-Lan herunterladen",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Dauer"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook Reader"),
    "editQueue": MessageLookupByLibrary.simpleMessage(
      "Warteschlange bearbeiten",
    ),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Bitte aktiviere die Benachrichtigungen, um Fortschrittsupdates zum Download zu erhalten und Dateien im Hintergrund herunterladen zu können.",
    ),
    "enableSubdirectory": MessageLookupByLibrary.simpleMessage(
      "Unterverzeichnis aktivieren",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Aktiviert"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Episoden Id"),
    "error": MessageLookupByLibrary.simpleMessage("Fehler"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Fehler beim Herunterladen",
    ),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Error: Dieser Inhalt wurde nicht gefunden!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Beenden"),
    "failed": MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Vorspulen"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Sekunden vorspulen",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Lege die Anzahl der Sekunden fest, die beim Drücken der Vorspultaste übersprungen werden sollen.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Feed offen"),
    "filename": MessageLookupByLibrary.simpleMessage("Dateiname"),
    "filepath": MessageLookupByLibrary.simpleMessage("Dateipfad"),
    "filter": MessageLookupByLibrary.simpleMessage("Filter"),
    "finished": MessageLookupByLibrary.simpleMessage("Fertig"),
    "general": MessageLookupByLibrary.simpleMessage("Allgemein"),
    "genres": MessageLookupByLibrary.simpleMessage("Genres"),
    "hide": MessageLookupByLibrary.simpleMessage("Verstecken"),
    "inProgress": MessageLookupByLibrary.simpleMessage("In Bearbeitung"),
    "information": MessageLookupByLibrary.simpleMessage("Informationen"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Ungültige Anmeldeinformationen",
    ),
    "itemId": MessageLookupByLibrary.simpleMessage("Medien Id"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "Der Inhalt konnte nicht gefunden werden. Dies kann an einem Netzwerkfehler liegen oder daran, dass das Element nicht mehr existiert, aber noch im Cache gespeichert ist.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Medientyp"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Zur letzten Position springen",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "Wenn aktiviert, springt der Player beim Drücken der Wiedergabetaste zur letzten Position",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Sprache"),
    "languages": MessageLookupByLibrary.simpleMessage("Sprachen"),
    "largestItems": MessageLookupByLibrary.simpleMessage("Größte Medien"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Letzte 30 Tage"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Letzte 7 Tage"),
    "libraries": MessageLookupByLibrary.simpleMessage("Bibliotheken"),
    "library": MessageLookupByLibrary.simpleMessage("Bibliothek"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Bibliotheksname"),
    "libraryStats": MessageLookupByLibrary.simpleMessage("Bibliotekstatistik"),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Erneut hören"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "In diesem Jahr gehört",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Wird geladen …"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Sperre die Medienbenachrichtigung",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Wenn aktiviert, sperrt diese Funktion die Fortschrittsleiste in der Medienbenachrichtigung, sofern das Betriebssystem dies unterstützt",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("Protokollierung"),
    "login": MessageLookupByLibrary.simpleMessage("ANMELDEN"),
    "logs": MessageLookupByLibrary.simpleMessage("Protokolle"),
    "longestItems": MessageLookupByLibrary.simpleMessage("Längste Medien"),
    "minimize": MessageLookupByLibrary.simpleMessage("Minimieren"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Nur im System-Tray anzeigen",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Diese Option versteckt die App in der Taskleiste und verschiebt sie in den System-Tray.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Verschiedenes"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Mehr Optionen"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "narrators": MessageLookupByLibrary.simpleMessage("Erzähler"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Neuste Episoden"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Nächstes Kapitel"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Keine Verbindung"),
    "noDownloads": MessageLookupByLibrary.simpleMessage(
      "Nichts heruntergeladen",
    ),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Wir haben Probleme, eine Verbindung zum Server herzustellen.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Kein Pfad"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Keine Serie ausgewählt",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Nicht fertig"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Nicht gestartet"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Nicht versucht"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Benachrichtigungen sollten aktiviert sein",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Anzahl Bücher"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Offline Fortschritte",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Offline gespeicherte Fortschritte",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("Öffne Downloads"),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Server",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Eigene Statistik"),
    "password": MessageLookupByLibrary.simpleMessage("Passwort"),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Personalisiert",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Wiedergabe"),
    "playHistory": MessageLookupByLibrary.simpleMessage("Wiedergabeverlauf"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Spiele nächste Episode",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Geschwindigkeit"),
    "player": MessageLookupByLibrary.simpleMessage("Player"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Playereinstellungen",
    ),
    "playlists": MessageLookupByLibrary.simpleMessage("Wiedergabelisten"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Bitte überprüfe deine Internetverbindung und versuche es erneut.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Vorheriges Kapitel",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Fortschritt"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Aktiviere diese Option, um den Fortschritt im Player kapitelweise anzuzeigen. Wenn diese Option deaktiviert ist, wird der Fortschritt basierend auf dem gesamten Element angezeigt.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Herausgeber"),
    "readLess": MessageLookupByLibrary.simpleMessage("Weniger lesen"),
    "readMore": MessageLookupByLibrary.simpleMessage("Mehr lesen"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Neue Serien"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage("Neu hinzugefügt"),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Einen Fehler melden",
    ),
    "requiredFields": MessageLookupByLibrary.simpleMessage(
      "Bitte füllen Sie alle erforderlichen Felder aus",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "Neustart erforderlich",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Bitte starte die App neu, um diese Änderung zu speichern.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Wiederholen"),
    "rewind": MessageLookupByLibrary.simpleMessage("Zurückspulen"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage(
      "Sekunden zurückspulen",
    ),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Lege die Anzahl der Sekunden fest, die beim Drücken der Rückspultaste zurückgesprungen werden sollen.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Suchen"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "Suche ist deaktiviert",
    ),
    "seek": MessageLookupByLibrary.simpleMessage("Spulen"),
    "sequence": MessageLookupByLibrary.simpleMessage("Reihenfolge"),
    "series": MessageLookupByLibrary.simpleMessage("Serien"),
    "serverAddress": MessageLookupByLibrary.simpleMessage("Server Adresse"),
    "serverNotFound": MessageLookupByLibrary.simpleMessage(
      "Server nicht gefunden",
    ),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Serverauswahl"),
    "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Schütteln um Sleeptimer zurückzusetzten",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Freigegeben"),
    "show": MessageLookupByLibrary.simpleMessage("Zeigen"),
    "showMediaType": MessageLookupByLibrary.simpleMessage("Zeige Medienart"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Zeigt ein Medienart-Badge unten an jedem Element an.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Zeige Fortschritt pro Kapitel",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Abmelden"),
    "size": MessageLookupByLibrary.simpleMessage("Größe"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleeptimer"),
    "sort": MessageLookupByLibrary.simpleMessage("Sortieren"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Sortiere Serien Aufsteigend",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Statistiken"),
    "stop": MessageLookupByLibrary.simpleMessage("Stopp"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Pausiere Player bis Sync",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Aktiviere diese Option, um zu verhindern, dass der Player startet, bevor die letzte Wiedergabeposition synchronisiert wurde. Dies stellt sicher, dass die Wiedergabe an der richtigen Stelle fortgesetzt wird. Wenn diese Option deaktiviert ist, kann sich die Wiedergabeposition kurz nach dem Start ändern, was möglicherweise zu Datenverlust führen kann. Das Aktivieren dieser Option hilft, den Datenverbrauch zu reduzieren.",
    ),
    "subdirectory": MessageLookupByLibrary.simpleMessage("Unterverzeichnis"),
    "success": MessageLookupByLibrary.simpleMessage("Erfolgreich"),
    "sync": MessageLookupByLibrary.simpleMessage("Syncronisation"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Sync Interval (Sekunden)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Gibt an, wie oft die App mit dem Server synchronisiert werden soll. Bitte starte die App neu, damit die Änderungen wirksam werden.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Nur über WiFi synchronisieren",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Schlagwörter"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Titel"),
    "today": MessageLookupByLibrary.simpleMessage("Heute"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Top Autoren"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Top Genres"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Anzahl Audiotracks",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Anzahl Autoren"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Länge"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Anzahl Genres"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Anzahl Medien"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Gesamtgröße"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage("Gesamthörzeit"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
    "unknown": MessageLookupByLibrary.simpleMessage("Unbekannt"),
    "user": MessageLookupByLibrary.simpleMessage("Benutzer"),
    "username": MessageLookupByLibrary.simpleMessage("Nutzername"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage(
      "Lesezeichen anzeigen",
    ),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Kapitel anzeigen"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Auf GitHub ansehen"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Bitte warte bis du weitergeleitet wirst. Du bist aktuell nicht eingeloggt.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "Warten auf den Beginn des Downloads",
    ),
    "wrapText": MessageLookupByLibrary.simpleMessage("Texte umbrechen"),
    "wrapTextDescription": MessageLookupByLibrary.simpleMessage(
      "Wenn diese Option aktiviert ist, werden bestimmte Texte, z. B. Kapitel, umgebrochen, anstatt abgeschnitten zu werden. Dies führt jedoch dazu, dass einige Designs nicht mehr funktionieren.",
    ),
  };
}
