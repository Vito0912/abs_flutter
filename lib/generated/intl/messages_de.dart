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

  static String m0(hours, minutes) => "Länge: ${hours}:${minutes}";

  static String m1(numChapters) => "Anzahl der Kapitel: ${numChapters}";

  static String m2(progress) => "Fortschritt: ${progress}%";

  static String m3(year) => "Erscheinungsjahr: ${year}";

  static String m4(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addUser": MessageLookupByLibrary.simpleMessage("Benutzer hinzufügen"),
        "ascending": MessageLookupByLibrary.simpleMessage("Aufsteigend"),
        "author": MessageLookupByLibrary.simpleMessage("Autor"),
        "authors": MessageLookupByLibrary.simpleMessage("Autoren"),
        "back": MessageLookupByLibrary.simpleMessage("Zurück"),
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "close": MessageLookupByLibrary.simpleMessage("Schließen"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Serien einklappen"),
        "darkMode": MessageLookupByLibrary.simpleMessage("Dunkler Modus"),
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
        "duration": MessageLookupByLibrary.simpleMessage("Dauer"),
        "editQueue":
            MessageLookupByLibrary.simpleMessage("Warteschlange bearbeiten"),
        "enabled": MessageLookupByLibrary.simpleMessage("Aktiviert"),
        "error": MessageLookupByLibrary.simpleMessage("Fehler"),
        "errorDownloading":
            MessageLookupByLibrary.simpleMessage("Fehler beim Herunterladen"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "general": MessageLookupByLibrary.simpleMessage("Allgemein"),
        "inProgress": MessageLookupByLibrary.simpleMessage("In Bearbeitung"),
        "itemLength": m0,
        "itemNumChapters": m1,
        "itemProgress": m2,
        "itemPublishedYear": m3,
        "language": MessageLookupByLibrary.simpleMessage("Sprache"),
        "languages": MessageLookupByLibrary.simpleMessage("Sprachen"),
        "loading": MessageLookupByLibrary.simpleMessage("Wird geladen …"),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Verschiedenes"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "Wenn du mehrere Server verwenden willst, kannst du diese später hinzufügen"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "Du musst eine valide Serveradresse eingeben"),
        "noConnection":
            MessageLookupByLibrary.simpleMessage("Keine Verbindung"),
        "noItemsFound":
            MessageLookupByLibrary.simpleMessage("Keine Elemente gefunden"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Login fehlgeschlagen: Keine Daten erhalten"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Nicht gestartet"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "password": MessageLookupByLibrary.simpleMessage("Passwort"),
        "pause": MessageLookupByLibrary.simpleMessage("Pause"),
        "play": MessageLookupByLibrary.simpleMessage("Wiedergabe"),
        "playbackSpeed":
            MessageLookupByLibrary.simpleMessage("Geschwindigkeit"),
        "port": MessageLookupByLibrary.simpleMessage("Port"),
        "progress": MessageLookupByLibrary.simpleMessage("Fortschritt"),
        "publisher": MessageLookupByLibrary.simpleMessage("Herausgeber"),
        "readLess": MessageLookupByLibrary.simpleMessage("Weniger lesen"),
        "readMore": MessageLookupByLibrary.simpleMessage("Mehr lesen"),
        "restartRequired":
            MessageLookupByLibrary.simpleMessage("Neustart erforderlich"),
        "series": MessageLookupByLibrary.simpleMessage("Serien"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Gib eine Serveradresse ein, um fortzufahren"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Serverauswahl"),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Kontowechsler anzeigen"),
        "signOut": MessageLookupByLibrary.simpleMessage("Abmelden"),
        "size": MessageLookupByLibrary.simpleMessage("Größe"),
        "stop": MessageLookupByLibrary.simpleMessage("Stopp"),
        "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
            "Nur über WiFi synchronisieren"),
        "tags": MessageLookupByLibrary.simpleMessage("Schlagwörter"),
        "timerText": m4,
        "title": MessageLookupByLibrary.simpleMessage("Titel"),
        "today": MessageLookupByLibrary.simpleMessage("Heute"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Erneut versuchen"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unbekannt"),
        "unknownTitle":
            MessageLookupByLibrary.simpleMessage("Unbekannter Titel"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Aktualisiert am"),
        "user": MessageLookupByLibrary.simpleMessage("Benutzer"),
        "username": MessageLookupByLibrary.simpleMessage("Nutzername"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Der Nutzername und das Passwort dürfen nicht leer sein"),
        "year": MessageLookupByLibrary.simpleMessage("Jahr")
      };
}
