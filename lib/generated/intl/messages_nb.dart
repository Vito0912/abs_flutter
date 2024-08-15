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

  static String m22(length) => "Varighet: ${length}";

  static String m23(numChapters) => "Antall kapitler: ${numChapters}";

  static String m24(progress) => "Framdrift: ${progress}%";

  static String m25(year) => "Publisert år: ${year}";

  static String m28(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser":
            MessageLookupByLibrary.simpleMessage("Legg til en ny bruker"),
        "addUser": MessageLookupByLibrary.simpleMessage("Legg til bruker"),
        "ascending": MessageLookupByLibrary.simpleMessage("Stigende"),
        "attribution": MessageLookupByLibrary.simpleMessage("Henvisninger"),
        "author": MessageLookupByLibrary.simpleMessage("Skaper"),
        "authors": MessageLookupByLibrary.simpleMessage("Skapere"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Bokomslag"),
        "cancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Fold sammen serie"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "Elementer i en serie grupperes sammen i biblioteksvisning, noe som viser ett element for å representere en hel serie."),
        "darkMode": MessageLookupByLibrary.simpleMessage("Mørk drakt"),
        "descending": MessageLookupByLibrary.simpleMessage("Synkende"),
        "description": MessageLookupByLibrary.simpleMessage("Beskrivelse"),
        "disabled": MessageLookupByLibrary.simpleMessage("Avskrudd"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("Domene eller IP"),
        "duration": MessageLookupByLibrary.simpleMessage("Varighet"),
        "enabled": MessageLookupByLibrary.simpleMessage("Påskrudd"),
        "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
            "Skriv inn gyldig IP/domene og port før du skriver inn brukernavn og passord."),
        "error": MessageLookupByLibrary.simpleMessage("Feil"),
        "fastForwardSeconds":
            MessageLookupByLibrary.simpleMessage("Hurtigspoling, sekunder"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Sett antall sekunder å hoppe forover når hurtigspolingsknappen trykkes."),
        "general": MessageLookupByLibrary.simpleMessage("Generelt"),
        "genres": MessageLookupByLibrary.simpleMessage("Sjangere"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage(
                "Hvorvidt hurtigkontobytting skal være tilgjengelig"),
        "itemLength": m22,
        "itemNumChapters": m23,
        "itemProgress": m24,
        "itemPublishedYear": m25,
        "language": MessageLookupByLibrary.simpleMessage("Språk"),
        "loading": MessageLookupByLibrary.simpleMessage("Laster inn …"),
        "markItemsFinished": MessageLookupByLibrary.simpleMessage(
            "Marker elementer som fullført"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "Angi antall sekunder før de faktisk er ferdige elementer skal markers som fullført. «0» betyr at fullføring kun inntreffer når avspilleren faktisk er ferdig."),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Ymse"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "Hvis du ønsker å bruke flere tjeneradresser kan du legge dem til senere."),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "Du å angi en gyldig tjeneradresse"),
        "noConnection":
            MessageLookupByLibrary.simpleMessage("Ingen tilkobling"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Kunne ikke logge inn. Mottok ingen brukerdata."),
        "password": MessageLookupByLibrary.simpleMessage("Passord"),
        "playbackSpeed": MessageLookupByLibrary.simpleMessage("Hastighet"),
        "player": MessageLookupByLibrary.simpleMessage("Avspiller"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Avspillerinnstillinger"),
        "port": MessageLookupByLibrary.simpleMessage("Port"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "Viser framdriftsindikator i avspilleren og merknaden for hvert kapittel. I motsatt fall vises framdrift basert på hele elementet."),
        "publisher": MessageLookupByLibrary.simpleMessage("Utgiver"),
        "readLess": MessageLookupByLibrary.simpleMessage("Les mindre"),
        "readMore": MessageLookupByLibrary.simpleMessage("Les mer"),
        "rewindSeconds":
            MessageLookupByLibrary.simpleMessage("Tilbakespoling, sekunder"),
        "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Sett antall sekunder å hoppe forover når tilbakespolingsknappen trykkes."),
        "series": MessageLookupByLibrary.simpleMessage("Serie"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Skriv inn din tjeneradresse for å fortsette"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Valg av tjener"),
        "settings": MessageLookupByLibrary.simpleMessage("Innstillinger"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Vis kontobytter"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "Legger til en ikonknapp i programfeltet for hurtig kontobytte. Reduserer størrelsen på toppfeltet."),
        "showProgressPerChapters":
            MessageLookupByLibrary.simpleMessage("Vis framdrift per kapittel"),
        "signOut": MessageLookupByLibrary.simpleMessage("Logg ut"),
        "size": MessageLookupByLibrary.simpleMessage("Størrelse"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("Søvntidsur"),
        "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
            "Stopp avspiller til synkronisering"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "Alternativ for å forhindre avspilleren fra å starte til mest nylige avspillingsposisjon er nådd. Forsikrer at avspilling starter fra rett posisjon. Ellers kan posisjonen endres kort tid etter oppstart, noe som kan medføre datatap. Å skru dette på bruker mindre data."),
        "tags": MessageLookupByLibrary.simpleMessage("Etiketter"),
        "timerText": m28,
        "title": MessageLookupByLibrary.simpleMessage("Navn"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Oppdatert"),
        "user": MessageLookupByLibrary.simpleMessage("Bruker"),
        "username": MessageLookupByLibrary.simpleMessage("Brukernavn"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Brukernavn og/eller passord kan ikke stå tomt"),
        "year": MessageLookupByLibrary.simpleMessage("År")
      };
}
