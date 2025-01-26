// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nb locale. All the
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
  String get localeName => 'nb';

  static String m20(length) => "Varighet: ${length}";

  static String m21(numChapters) => "Antall kapitler: ${numChapters}";

  static String m22(year) => "Publisert år: ${year}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Legg til en ny bruker",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Legg til bruker"),
    "ascending": MessageLookupByLibrary.simpleMessage("Stigende"),
    "attribution": MessageLookupByLibrary.simpleMessage("Henvisninger"),
    "author": MessageLookupByLibrary.simpleMessage("Skaper"),
    "authors": MessageLookupByLibrary.simpleMessage("Skapere"),
    "cancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Fold sammen serie"),
    "darkMode": MessageLookupByLibrary.simpleMessage("Mørk drakt"),
    "descending": MessageLookupByLibrary.simpleMessage("Synkende"),
    "description": MessageLookupByLibrary.simpleMessage("Beskrivelse"),
    "disabled": MessageLookupByLibrary.simpleMessage("Avskrudd"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domene eller IP"),
    "duration": MessageLookupByLibrary.simpleMessage("Varighet"),
    "enabled": MessageLookupByLibrary.simpleMessage("Påskrudd"),
    "error": MessageLookupByLibrary.simpleMessage("Feil"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Hurtigspoling, sekunder",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Sett antall sekunder å hoppe forover når hurtigspolingsknappen trykkes.",
    ),
    "general": MessageLookupByLibrary.simpleMessage("Generelt"),
    "genres": MessageLookupByLibrary.simpleMessage("Sjangere"),
    "itemLength": m20,
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "language": MessageLookupByLibrary.simpleMessage("Språk"),
    "loading": MessageLookupByLibrary.simpleMessage("Laster inn …"),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Ymse"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Ingen tilkobling"),
    "password": MessageLookupByLibrary.simpleMessage("Passord"),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Hastighet"),
    "player": MessageLookupByLibrary.simpleMessage("Avspiller"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Avspillerinnstillinger",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Viser framdriftsindikator i avspilleren og merknaden for hvert kapittel. I motsatt fall vises framdrift basert på hele elementet.",
    ),
    "publisher": MessageLookupByLibrary.simpleMessage("Utgiver"),
    "readLess": MessageLookupByLibrary.simpleMessage("Les mindre"),
    "readMore": MessageLookupByLibrary.simpleMessage("Les mer"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage(
      "Tilbakespoling, sekunder",
    ),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Sett antall sekunder å hoppe forover når tilbakespolingsknappen trykkes.",
    ),
    "series": MessageLookupByLibrary.simpleMessage("Serie"),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Valg av tjener"),
    "settings": MessageLookupByLibrary.simpleMessage("Innstillinger"),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Vis framdrift per kapittel",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Logg ut"),
    "size": MessageLookupByLibrary.simpleMessage("Størrelse"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Søvntidsur"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Stopp avspiller til synkronisering",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Alternativ for å forhindre avspilleren fra å starte til mest nylige avspillingsposisjon er nådd. Forsikrer at avspilling starter fra rett posisjon. Ellers kan posisjonen endres kort tid etter oppstart, noe som kan medføre datatap. Å skru dette på bruker mindre data.",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Etiketter"),
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Navn"),
    "user": MessageLookupByLibrary.simpleMessage("Bruker"),
    "username": MessageLookupByLibrary.simpleMessage("Brukernavn"),
  };
}
