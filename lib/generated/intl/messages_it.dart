// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(num) => "Capitoli (${num})";

  static String m1(position) => "Posizione attuale: ${position}";

  static String m2(count) =>
      "${Intl.plural(count, one: '${count}  day', other: '${count} days')}";

  static String m3(days, hours) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')}";

  static String m4(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m5(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m6(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m7(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m8(days, hours) => "${days}d ${hours}h";

  static String m9(count) => "${count}d";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} hour', other: '${count} hours')}";

  static String m11(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m12(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m13(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m14(hours, minutes) => "${hours}h ${minutes}m";

  static String m15(count) => "${count}h";

  static String m16(count) =>
      "${Intl.plural(count, one: '${count} minute', other: '${count} minutes')}";

  static String m17(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m18(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m19(count) => "${count}m";

  static String m20(count) =>
      "${Intl.plural(count, one: '${count}  second', other: '${count} seconds')}";

  static String m21(count) => "${count}s";

  static String m22(device, os, version) =>
      "Dispositivo: ${device}\nOS: ${os}\nApp Versione: ${version}";

  static String m23(displayName) => "Download si ${displayName} completo";

  static String m24(displayName) => "Scaricamento ${displayName}";

  static String m25(displayName) =>
      "Si è verificato un errore durante il download di ${displayName}";

  static String m26(length) => "Lunghezza: ${length}";

  static String m27(numChapters) => "Numero dei Capitoli: ${numChapters}";

  static String m28(progress) => "Progresso: ${progress}%";

  static String m29(year) => "Anno di Pubblicazione: ${year}";

  static String m30(numBooks) =>
      "${Intl.plural(numBooks, zero: 'No Books', one: '1 Book', other: '${numBooks} Books')}";

  static String m31(progress) => "progresso Corrente: ${progress} %";

  static String m32(time) => "Tempo rimanente: ${time}";

  static String m33(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Aggiungi un nuovo Utente",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Aggiungi utente"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Caching aggressivo",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Se abilitata, l\'app abiliterà un caching più aggressivo. Ciò include il caching di percorsi che potrebbero contenere dati che necessitano di aggiornamenti regolari, come il recupero dell\'avanzamento di tutti gli elementi. In questi casi, verrà utilizzata l\'ultima posizione nota, a meno che non si apra e si richieda specificamente un singolo elemento. Questi percorsi avranno una durata di cache più breve.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Tutti i Download"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("Modalità AMOLED"),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascendente"),
    "attribution": MessageLookupByLibrary.simpleMessage("Attributi"),
    "author": MessageLookupByLibrary.simpleMessage("Autore"),
    "authors": MessageLookupByLibrary.simpleMessage("Autori"),
    "back": MessageLookupByLibrary.simpleMessage("Indietro"),
    "bookCover": MessageLookupByLibrary.simpleMessage("Copertina"),
    "boostLoading": MessageLookupByLibrary.simpleMessage(
      "Caricamento potenziato",
    ),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Quando questa funzionalità è abilitata, l\'app bypassa efficacemente la memorizzazione nella cache in tempo reale. Tenterà sempre di recuperare i dati più recenti dal server mentre utilizza i dati memorizzati nella cache per caricare immediatamente i contenuti. Una volta recuperati i dati aggiornati, sostituisce la vecchia cache, assicurando che i dati più recenti vengano visualizzati la prossima volta che carichi l\'app. Di conseguenza, vedrai sempre i dati di un ciclo di recupero dietro i dati correnti del server.",
    ),
    "boostLoadingSubtitle": MessageLookupByLibrary.simpleMessage(
      "Si prega di leggere la descrizione per comprendere questa funzionalità.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Caching"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Caching"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancella"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Car Player"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("Cambia Libreria"),
    "chapters": MessageLookupByLibrary.simpleMessage("Capitoli"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Pulisci la Cache"),
    "close": MessageLookupByLibrary.simpleMessage("Chiudi"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Raggruppa Serie"),
    "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
      "Se abilitata, gli elementi di una serie verranno raggruppati nella vista libreria, visualizzando un solo elemento per rappresentare l\'intera serie.",
    ),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "Giorni Consecutivi",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Continua L\'ascolto",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Contina la serie"),
    "copy": MessageLookupByLibrary.simpleMessage("Copia"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Copia (prova i dati personali rimossi)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copia i Log"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Importante:\nCliccando su \"Copia\" tutti i log attualmente visualizzati verranno trasferiti negli appunti, inclusi i dati registrati dall\'avvio o dall\'ultima cancellazione dell\'app. Questi log potrebbero contenere informazioni sensibili come token, nomi utente, e-mail e URL del server. Fai attenzione a dove incolli queste informazioni!\\nSe scegli \"Copia e tenta di nascondere informazioni sensibili\", l\'app proverà a mascherare elementi come token, nomi utente, e-mail e URL del server. Tuttavia, sei responsabile della revisione dei log per assicurarti che tutti i dati personali vengano completamente rimossi.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Crea"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Crea Segnalibro"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Crea Segnalibro",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Download corrente",
    ),
    "currentPositionNum": m1,
    "darkMode": MessageLookupByLibrary.simpleMessage("Modalità scura"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Giorni di ascolto"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Debug Logs"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "Cancella Selezionati",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Discendente"),
    "description": MessageLookupByLibrary.simpleMessage("Descrizione"),
    "deviceInfo": m22,
    "disabled": MessageLookupByLibrary.simpleMessage("Diattivato"),
    "discover": MessageLookupByLibrary.simpleMessage("Scopri"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domain or IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Download completato",
    ),
    "downloadCompleteBody": m23,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Il file non è stato scaricato correttamente. Puoi provare a eliminare i dati sul dispositivo cliccando sul pulsante e scaricarlo di nuovo.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("Download Info"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Percorso Download"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Il percorso in cui vengono salvati i download. Per modificarlo, devi prima eliminare tutti i download.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Scaricamento"),
    "downloadingBody": m24,
    "downloads": MessageLookupByLibrary.simpleMessage("Scaricati"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Download solo tramite WiFi",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Durata"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook-Reader"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Modifica coda"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Abilita le notifiche per ricevere aggiornamenti sullo stato di avanzamento del download e poter scaricare i file in background.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Abilitato"),
    "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
      "Inserisci un IP/dominio e una porta validi prima di inserire nome utente e password.",
    ),
    "episodeId": MessageLookupByLibrary.simpleMessage("Episodio Id"),
    "error": MessageLookupByLibrary.simpleMessage("Errore"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Errore di download",
    ),
    "errorDownloadingBody": m25,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Errore: elemento non trovato!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Esci"),
    "failed": MessageLookupByLibrary.simpleMessage("Fallito"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Avanti veloce"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Avanti veloce di secondi",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Imposta il numero di secondi da saltare in avanti quando si preme il pulsante di avanzamento rapido.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Apri Feed"),
    "filename": MessageLookupByLibrary.simpleMessage("Nome del file"),
    "filepath": MessageLookupByLibrary.simpleMessage("Percorso file"),
    "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
    "finished": MessageLookupByLibrary.simpleMessage("Finito"),
    "general": MessageLookupByLibrary.simpleMessage("Generale"),
    "genres": MessageLookupByLibrary.simpleMessage("Generi"),
    "hide": MessageLookupByLibrary.simpleMessage("Nascondi"),
    "ifTheQuickAccountSwitcherShouldBeShown":
        MessageLookupByLibrary.simpleMessage(
          "Se deve essere visualizzato il commutatore rapido dell\'account",
        ),
    "inProgress": MessageLookupByLibrary.simpleMessage("in corso"),
    "information": MessageLookupByLibrary.simpleMessage("Informazioni"),
    "itemId": MessageLookupByLibrary.simpleMessage("Id Oggetto"),
    "itemLength": m26,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "L\'elemento non è stato trovato. Ciò potrebbe essere dovuto a un errore di rete o perché l\'elemento non esiste più ma rimane nella cache.",
    ),
    "itemNumChapters": m27,
    "itemProgress": m28,
    "itemPublishedYear": m29,
    "itemType": MessageLookupByLibrary.simpleMessage("Tipo Oggetto"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Vai all\'ultima posizione",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "Se abilitato, il lettore salterà all\'ultima posizione quando si preme play",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Lingua"),
    "languages": MessageLookupByLibrary.simpleMessage("Lingue"),
    "largestItems": MessageLookupByLibrary.simpleMessage("File Grandi"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Ultimi 30 giorni"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Ultimi 7 giorni"),
    "libraries": MessageLookupByLibrary.simpleMessage("Librerie"),
    "library": MessageLookupByLibrary.simpleMessage("Libreria"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Nome Libreria"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Statistiche Libreria",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Ascolta di nuovo"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Ascoltati nell\'ultimo anno",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Caricamento…"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "blocca la barra di progresso",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Se abilitata, questa funzione blocca la barra di avanzamento nella notifica multimediale, se supportata dal sistema operativo",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("registrazione"),
    "logs": MessageLookupByLibrary.simpleMessage("Log"),
    "longestItems": MessageLookupByLibrary.simpleMessage("Oggetti lungi"),
    "markItemsFinished": MessageLookupByLibrary.simpleMessage(
      "Segna come Finito",
    ),
    "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
      "Specifica il tempo in secondi prima della fine di un elemento in cui deve essere contrassegnato come terminato. Impostando questo valore su 0, l\'elemento viene contrassegnato come terminato solo quando il giocatore raggiunge la fine. Se viene impostato un valore positivo, l\'elemento viene contrassegnato come terminato quando il giocatore raggiunge quel momento prima della fine.",
    ),
    "minimize": MessageLookupByLibrary.simpleMessage("Riduci"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Riduci nella barra",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Questa opzione nasconde l\'app dalla barra delle applicazioni e la sposta nella barra delle applicazioni.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Varie"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Altre Opzioni"),
    "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
      "Se vuoi utilizzare più indirizzi server, puoi aggiungerli in seguito",
    ),
    "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
      "Devi inserire un indirizzo server valido",
    ),
    "narrators": MessageLookupByLibrary.simpleMessage("Lettori"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Nuovi Episodi"),
    "next": MessageLookupByLibrary.simpleMessage("Prossimo"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Prossimo Capitolo"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Nessuna connessione"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Nessun Download"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Stiamo riscontrando problemi di connessione al server.",
    ),
    "noItemsFound": MessageLookupByLibrary.simpleMessage(
      "Nessun Oggetto trovato",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Nessun Percorso"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Nessuna serie selezionata",
    ),
    "noUserData": MessageLookupByLibrary.simpleMessage(
      "Accesso non riuscito: nessun dato utente ricevuto",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Non Finito"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Non Iniziato"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Non ancora provato"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Le notifiche dovrebbero essere abilitate",
    ),
    "numBooksInSeries": m30,
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Progressi offline",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Progressi offline salvati",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "open": MessageLookupByLibrary.simpleMessage("Apri"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("Apri Download"),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Server",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Le tue stats"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "pause": MessageLookupByLibrary.simpleMessage("Pausa"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Personalizza Libreria",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Play"),
    "playHistory": MessageLookupByLibrary.simpleMessage(
      "Cronologia di riproduzione",
    ),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Riproduci prossimo episodio",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Velocità"),
    "player": MessageLookupByLibrary.simpleMessage("Player"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Impostazioni Player",
    ),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Controlla la tua connessione Internet e riprova.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Porta"),
    "previous": MessageLookupByLibrary.simpleMessage("Precedente"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capitolo Precedente",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Progresso"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Abilita questa opzione per visualizzare i progressi nel player e le notifiche in base al capitolo. Se disabilitata, i progressi saranno mostrati in base all\'intero elemento.",
    ),
    "progressNum": m31,
    "publisher": MessageLookupByLibrary.simpleMessage("Publisher"),
    "readLess": MessageLookupByLibrary.simpleMessage("di meno"),
    "readMore": MessageLookupByLibrary.simpleMessage("di più"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Serie recenti"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage(
      "Aggiunte recententemente",
    ),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Segnala un problema",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "RIavvio Richiesto",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Riavvia l\'app per applicare le modifiche.",
    ),
    "rewind": MessageLookupByLibrary.simpleMessage("Riavvolgi"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage(
      "Riavvolgi di tot secondi",
    ),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Imposta il numero di secondi da saltare indietro quando si preme il pulsante di riavvolgimento.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Cerca"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "Ricerca disattivata",
    ),
    "seek": MessageLookupByLibrary.simpleMessage("Scorri"),
    "sequence": MessageLookupByLibrary.simpleMessage("Sequenza"),
    "series": MessageLookupByLibrary.simpleMessage("Serie"),
    "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
      "Inserisci l\'indirizzo del tuo server per continuare",
    ),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Selezione server"),
    "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Agita per reimpostare il timer di spegnimento",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Condivisione Aperta"),
    "show": MessageLookupByLibrary.simpleMessage("Mostra"),
    "showAccountSwitcher": MessageLookupByLibrary.simpleMessage(
      "Mostra il selettore account",
    ),
    "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
      "Abilita questa opzione per aggiungere un pulsante icona alla barra delle applicazioni per un rapido cambio di account. Ciò ridurrà le dimensioni della barra delle applicazioni.",
    ),
    "showMediaType": MessageLookupByLibrary.simpleMessage("Mostra Media Type"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Visualizza i badge del tipo di media nella parte inferiore di ogni elemento.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Mostra avanzamento per capitolo",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Disconnetti"),
    "size": MessageLookupByLibrary.simpleMessage("DImensione"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep Timer"),
    "sort": MessageLookupByLibrary.simpleMessage("Ordina"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Ordina le serie in ordine crescente",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Stats"),
    "stop": MessageLookupByLibrary.simpleMessage("Stop"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Interrompi lettore fino alla sincronizzazione",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Abilita questa opzione per impedire al player di avviarsi finché non è stata sincronizzata la posizione di riproduzione più recente. Ciò assicura che la riproduzione riprenda dalla posizione corretta. Se disabilitata, la posizione di riproduzione potrebbe cambiare poco dopo l\'avvio, causando potenzialmente la perdita di dati. L\'attivazione di questa opzione aiuta a risparmiare l\'utilizzo dei dati.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Successo"),
    "sync": MessageLookupByLibrary.simpleMessage("Sync"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Intervallo Sync (secondi)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Specifica la frequenza con cui l\'app deve sincronizzarsi con il server. Riavvia l\'app affinché le modifiche abbiano effetto.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Sincronizzazione solo tramite WiFi",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Tags"),
    "timeRemainingNum": m32,
    "timerText": m33,
    "title": MessageLookupByLibrary.simpleMessage("Titolo"),
    "today": MessageLookupByLibrary.simpleMessage("Oggi"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Miglior Autore"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Miglior Genere"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Tracce Audio Totali",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Totale Autori"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Durata Totale"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Totale Genere"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Totale Oggetti"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Dimensione Totale"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Tenmpo di Ascolto Totale",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Riprova"),
    "unknown": MessageLookupByLibrary.simpleMessage("Sconosciuto"),
    "unknownTitle": MessageLookupByLibrary.simpleMessage("TItolo Sconosciuto"),
    "updatedAt": MessageLookupByLibrary.simpleMessage("Aggiornato il"),
    "user": MessageLookupByLibrary.simpleMessage("Utente"),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
      "Il nome utente e la password non possono essere vuoti",
    ),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage("Vedi Segnalibri"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Vedi Capitoli"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Vedi su Github"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Attendi il reindirizzamento a /init. Al momento non hai effettuato l\'accesso.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "In attesa dell\'avvio del download",
    ),
    "year": MessageLookupByLibrary.simpleMessage("Anno"),
  };
}
