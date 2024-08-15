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

  static String m2(count) =>
      "${Intl.plural(count, one: '${count}  Tag', other: '${count} Tage')}";

  static String m3(days, hours) =>
      "${Intl.plural(days, one: '${days} Tag', other: '${days} Tage')} ${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')}";

  static String m4(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} Tag', other: '${days} Tage')} ${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')}";

  static String m5(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} Tag', other: '${days} Tage')} ${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m6(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m7(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m8(days, hours) => "${days}d ${hours}h";

  static String m9(count) => "${count}d";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} Stunde', other: '${count} Stunden')}";

  static String m11(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')}";

  static String m12(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} Stunde', other: '${hours} Stunden')} ${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m13(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m14(hours, minutes) => "${hours}h ${minutes}m";

  static String m15(count) => "${count}h";

  static String m16(count) =>
      "${Intl.plural(count, one: '${count} Minute', other: '${count} Minuten')}";

  static String m17(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} Minute', other: '${minutes} Minuten')} ${Intl.plural(seconds, one: '${seconds} Sekunde', other: '${seconds} Sekunden')}";

  static String m18(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m19(count) => "${count}m";

  static String m20(count) =>
      "${Intl.plural(count, one: '${count} Sekunde', other: '${count} Sekunden')}";

  static String m21(count) => "${count}s";

  static String m22(length) => "Länge: ${length}";

  static String m23(numChapters) => "Anzahl der Kapitel: ${numChapters}";

  static String m24(progress) => "Fortschritt: ${progress}%";

  static String m25(year) => "Erscheinungsjahr: ${year}";

  static String m26(progress) => "Aktueller Fortschritt: ${progress} %";

  static String m27(time) => "Übrige Zeit: ${time}";

  static String m28(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser":
            MessageLookupByLibrary.simpleMessage("Füge einen Nutzer hinzu"),
        "addUser": MessageLookupByLibrary.simpleMessage("Benutzer hinzufügen"),
        "ascending": MessageLookupByLibrary.simpleMessage("Aufsteigend"),
        "attribution": MessageLookupByLibrary.simpleMessage("Anerkennungen"),
        "author": MessageLookupByLibrary.simpleMessage("Autor"),
        "authors": MessageLookupByLibrary.simpleMessage("Autoren"),
        "back": MessageLookupByLibrary.simpleMessage("Zurück"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Buch Cover"),
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "chapters": MessageLookupByLibrary.simpleMessage("Kapitel"),
        "chaptersNum": m0,
        "close": MessageLookupByLibrary.simpleMessage("Schließen"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Serien einklappen"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "Wenn aktiviert, werden Elemente einer Serie in der Bibliotheksansicht zusammengefasst und es wird nur ein einzelnes Element angezeigt, das die gesamte Serie repräsentiert."),
        "consecutiveDays":
            MessageLookupByLibrary.simpleMessage("Aufeinanderfolgende Tage"),
        "currentPositionNum": m1,
        "darkMode": MessageLookupByLibrary.simpleMessage("Dunkler Modus"),
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
        "daysListened": MessageLookupByLibrary.simpleMessage("Tage gehört"),
        "deleteSelected":
            MessageLookupByLibrary.simpleMessage("Lösche auswahl"),
        "descending": MessageLookupByLibrary.simpleMessage("Absteigend"),
        "description": MessageLookupByLibrary.simpleMessage("Beschreibung"),
        "disabled": MessageLookupByLibrary.simpleMessage("Deaktiviert"),
        "domainOrIp":
            MessageLookupByLibrary.simpleMessage("Serveradresse oder IP"),
        "downloadComplete":
            MessageLookupByLibrary.simpleMessage("Herunterladen abgeschlossen"),
        "downloadCompleteBody": MessageLookupByLibrary.simpleMessage(
            "Herunterladen von \'{\'displayName\'}\' abgeschlossen"),
        "downloading":
            MessageLookupByLibrary.simpleMessage("Wird heruntergeladen"),
        "downloadingBody": MessageLookupByLibrary.simpleMessage(
            "\'{\'displayName\'}\' wird heruntergeladen"),
        "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
            "Nur über W-Lan herunterladen"),
        "duration": MessageLookupByLibrary.simpleMessage("Dauer"),
        "editQueue":
            MessageLookupByLibrary.simpleMessage("Warteschlange bearbeiten"),
        "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
            "Bitte aktiviere die Benachrichtigungen, um Fortschrittsupdates zum Download zu erhalten und Dateien im Hintergrund herunterladen zu können."),
        "enabled": MessageLookupByLibrary.simpleMessage("Aktiviert"),
        "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
            "Bitte gib eine gültige IP/Domain und einen Port ein, bevor du deinen Benutzernamen und dein Passwort eingibst."),
        "error": MessageLookupByLibrary.simpleMessage("Fehler"),
        "errorDownloading":
            MessageLookupByLibrary.simpleMessage("Fehler beim Herunterladen"),
        "errorDownloadingBody": MessageLookupByLibrary.simpleMessage(
            "Es ist ein Fehler beim Herunterladen von \'{\'displayName\'}\' aufgetreten"),
        "failed": MessageLookupByLibrary.simpleMessage("Fehlgeschlagen"),
        "fastForwardSeconds":
            MessageLookupByLibrary.simpleMessage("Sekunden vorspulen"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Lege die Anzahl der Sekunden fest, die beim Drücken der Vorspultaste übersprungen werden sollen."),
        "feedOpen": MessageLookupByLibrary.simpleMessage("Feed offen"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "finished": MessageLookupByLibrary.simpleMessage("Fertig"),
        "general": MessageLookupByLibrary.simpleMessage("Allgemein"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage(
                "Ob der schnelle Nutzerwechsel angezeigt werden soll"),
        "inProgress": MessageLookupByLibrary.simpleMessage("In Bearbeitung"),
        "itemLength": m22,
        "itemNumChapters": m23,
        "itemProgress": m24,
        "itemPublishedYear": m25,
        "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
            "Zur letzten Position springen"),
        "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
            "Wenn aktiviert, springt der Player beim Drücken der Wiedergabetaste zur letzten Position"),
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "languages": MessageLookupByLibrary.simpleMessage("Sprachen"),
        "libraryStats":
            MessageLookupByLibrary.simpleMessage("Bibliotekstatistik"),
        "loading": MessageLookupByLibrary.simpleMessage("Wird geladen …"),
        "lockProgressBar": MessageLookupByLibrary.simpleMessage(
            "Sperre die Medienbenachrichtigung"),
        "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
            "Wenn aktiviert, sperrt diese Funktion die Fortschrittsleiste in der Medienbenachrichtigung, sofern das Betriebssystem dies unterstützt"),
        "markItemsFinished":
            MessageLookupByLibrary.simpleMessage("Makiere Element als fertig"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "Gib die Zeit in Sekunden an, bevor ein Element endet, ab der es als abgeschlossen markiert werden soll. Wenn dieser Wert auf 0 gesetzt wird, wird das Element nur als abgeschlossen markiert, wenn der Player das Ende erreicht. Wenn ein positiver Wert festgelegt wird, wird das Element als abgeschlossen markiert, wenn der Player diese Zeit vor dem Ende erreicht."),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Verschiedenes"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "Wenn du mehrere Server verwenden willst, kannst du diese später hinzufügen"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "Du musst eine valide Serveradresse eingeben"),
        "narrators": MessageLookupByLibrary.simpleMessage("Erzähler"),
        "noConnection":
            MessageLookupByLibrary.simpleMessage("Keine Verbindung"),
        "noDownloads":
            MessageLookupByLibrary.simpleMessage("Nichts heruntergeladen"),
        "noInternetDescription": MessageLookupByLibrary.simpleMessage(
            "Wir haben Probleme, eine Verbindung zum Server herzustellen."),
        "noItemsFound":
            MessageLookupByLibrary.simpleMessage("Keine Elemente gefunden"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Login fehlgeschlagen: Keine Daten erhalten"),
        "notFinished": MessageLookupByLibrary.simpleMessage("Nicht fertig"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Nicht gestartet"),
        "notTriedYet": MessageLookupByLibrary.simpleMessage("Nicht versucht"),
        "notificationHeading": MessageLookupByLibrary.simpleMessage(
            "Benachrichtigungen sollten aktiviert sein"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "ownStats": MessageLookupByLibrary.simpleMessage("Eigene Statistik"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "pause": MessageLookupByLibrary.simpleMessage("Pause"),
        "play": MessageLookupByLibrary.simpleMessage("Wiedergabe"),
        "playHistory":
            MessageLookupByLibrary.simpleMessage("Wiedergabeverlauf"),
        "playNextEpisode":
            MessageLookupByLibrary.simpleMessage("Spiele nächste Episode"),
        "playbackSpeed":
            MessageLookupByLibrary.simpleMessage("Geschwindigkeit"),
        "player": MessageLookupByLibrary.simpleMessage("Player"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Playereinstellungen"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Bitte überprüfe deine Internetverbindung und versuche es erneut."),
        "port": MessageLookupByLibrary.simpleMessage("Port"),
        "progress": MessageLookupByLibrary.simpleMessage("Fortschritt"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "Aktiviere diese Option, um den Fortschritt im Player kapitelweise anzuzeigen. Wenn diese Option deaktiviert ist, wird der Fortschritt basierend auf dem gesamten Element angezeigt."),
        "progressNum": m26,
        "publisher": MessageLookupByLibrary.simpleMessage("Herausgeber"),
        "readLess": MessageLookupByLibrary.simpleMessage("Weniger lesen"),
        "readMore": MessageLookupByLibrary.simpleMessage("Mehr lesen"),
        "restartRequired":
            MessageLookupByLibrary.simpleMessage("Neustart erforderlich"),
        "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
            "Bitte starte die App neu, um diese Änderung zu speichern."),
        "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Lege die Anzahl der Sekunden fest, die beim Drücken der Rückspultaste zurückgesprungen werden sollen."),
        "seek": MessageLookupByLibrary.simpleMessage("Springen"),
        "series": MessageLookupByLibrary.simpleMessage("Serien"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Gib eine Serveradresse ein, um fortzufahren"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Serverauswahl"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
            "Schütteln um Sleeptimer zurückzusetzten"),
        "shareOpen": MessageLookupByLibrary.simpleMessage("Freigegeben"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Kontowechsler anzeigen"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "Aktiviere diese Option, um der App-Leiste eine Symbolschaltfläche für den schnellen Userwechsel hinzuzufügen."),
        "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
            "Zeige Fortschritt pro Kapitel"),
        "signOut": MessageLookupByLibrary.simpleMessage("Abmelden"),
        "size": MessageLookupByLibrary.simpleMessage("Größe"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleeptimer"),
        "stats": MessageLookupByLibrary.simpleMessage("Statistiken"),
        "stop": MessageLookupByLibrary.simpleMessage("Stopp"),
        "stopPlayerUntilSync":
            MessageLookupByLibrary.simpleMessage("Pausiere Player bis Sync"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "Aktiviere diese Option, um zu verhindern, dass der Player startet, bevor die letzte Wiedergabeposition synchronisiert wurde. Dies stellt sicher, dass die Wiedergabe an der richtigen Stelle fortgesetzt wird. Wenn diese Option deaktiviert ist, kann sich die Wiedergabeposition kurz nach dem Start ändern, was möglicherweise zu Datenverlust führen kann. Das Aktivieren dieser Option hilft, den Datenverbrauch zu reduzieren."),
        "success": MessageLookupByLibrary.simpleMessage("Erfolgreich"),
        "sync": MessageLookupByLibrary.simpleMessage("Syncronisation"),
        "syncInterval":
            MessageLookupByLibrary.simpleMessage("Sync Interval (Sekunden)"),
        "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
            "Gibt an, wie oft die App mit dem Server synchronisiert werden soll. Bitte starte die App neu, damit die Änderungen wirksam werden."),
        "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
            "Nur über WiFi synchronisieren"),
        "tags": MessageLookupByLibrary.simpleMessage("Schlagwörter"),
        "timeRemainingNum": m27,
        "timerText": m28,
        "title": MessageLookupByLibrary.simpleMessage("Titel"),
        "today": MessageLookupByLibrary.simpleMessage("Heute"),
        "totalTimeListened":
            MessageLookupByLibrary.simpleMessage("Gesamthörzeit"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unbekannt"),
        "unknownTitle":
            MessageLookupByLibrary.simpleMessage("Unbekannter Titel"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Aktualisiert am"),
        "user": MessageLookupByLibrary.simpleMessage("Benutzer"),
        "username": MessageLookupByLibrary.simpleMessage("Nutzername"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Der Nutzername und das Passwort dürfen nicht leer sein"),
        "waitingForDownload": MessageLookupByLibrary.simpleMessage(
            "Warten auf den Beginn des Downloads"),
        "year": MessageLookupByLibrary.simpleMessage("Jahr")
      };
}
