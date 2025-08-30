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

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m5(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m9(hours, minutes) => "${hours}h ${minutes}m";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} minute', other: '${count} minutes')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m13(count) => "${count}m";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count}  second', other: '${count} seconds')}";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Dispositivo: ${device}\nOS: ${os}\nApp Versione: ${version}";

  static String m17(displayName) => "Download si ${displayName} completo";

  static String m18(displayName) => "Scaricamento ${displayName}";

  static String m19(displayName) =>
      "Si è verificato un errore durante il download di ${displayName}";

  static String m20(length) => "Lunghezza: ${length}";

  static String m21(numChapters) => "Numero dei Capitoli: ${numChapters}";

  static String m22(year) => "Anno di Pubblicazione: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'No Books', one: '1 Book', other: '${numBooks} Books')}";

  static String m24(progress) => "progresso Corrente: ${progress} %";

  static String m25(time) => "Tempo rimanente: ${time}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Aggiungi un nuovo Utente",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Aggiungi utente"),
    "added": MessageLookupByLibrary.simpleMessage("Aggiunto"),
    "advanced": MessageLookupByLibrary.simpleMessage("Avanzate"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Caching aggressivo",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Se abilitata, l\'app abiliterà un caching più aggressivo. Ciò include il caching di percorsi che potrebbero contenere dati che necessitano di aggiornamenti regolari, come il recupero dell\'avanzamento di tutti gli elementi. In questi casi, verrà utilizzata l\'ultima posizione nota, a meno che non si apra e si richieda specificamente un singolo elemento. Questi percorsi avranno una durata di cache più breve.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Tutti i Download"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("Modalità AMOLED"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Errore sconosciuto",
    ),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascendente"),
    "attribution": MessageLookupByLibrary.simpleMessage("Attributi"),
    "author": MessageLookupByLibrary.simpleMessage("Autore"),
    "authors": MessageLookupByLibrary.simpleMessage("Autori"),
    "back": MessageLookupByLibrary.simpleMessage("Indietro"),
    "boostLoading": MessageLookupByLibrary.simpleMessage(
      "Caricamento potenziato",
    ),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Quando questa funzionalità è abilitata, l\'app bypassa efficacemente la memorizzazione nella cache in tempo reale. Tenterà sempre di recuperare i dati più recenti dal server mentre utilizza i dati memorizzati nella cache per caricare immediatamente i contenuti. Una volta recuperati i dati aggiornati, sostituisce la vecchia cache, assicurando che i dati più recenti vengano visualizzati la prossima volta che carichi l\'app. Di conseguenza, vedrai sempre i dati di un ciclo di recupero dietro i dati correnti del server.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Caching"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Caching"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancella"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Car Player"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("Cambia Libreria"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Pulisci la Cache"),
    "close": MessageLookupByLibrary.simpleMessage("Chiudi"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Raggruppa Serie"),
    "connectionError": MessageLookupByLibrary.simpleMessage(
      "Errore connessione",
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
    "createBookmark": MessageLookupByLibrary.simpleMessage(
      "Crea un Segnalibro",
    ),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Crea Segnalibro",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Download corrente",
    ),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage(
      "intestazione personalizzata",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Modalità scura"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Giorni di ascolto"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Debug Logs"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "Cancella Selezionati",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Discendente"),
    "description": MessageLookupByLibrary.simpleMessage("Descrizione"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Disattiva salta capitoli",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Questo disabiliterà la possibilità di saltare i capitoli dall\'ESTERNO dell\'applicazione (ad esempio, tramite un auricolare o i controlli delle notifiche). Abilita questa opzione se vuoi che le tue cuffie utilizzino le funzioni di avanzamento rapido e riavvolgimento anziché saltare i capitoli.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Disattiva vibrazione",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Diattivato"),
    "discover": MessageLookupByLibrary.simpleMessage("Scopri"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domain or IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Download completato",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Il file non è stato scaricato correttamente. Puoi provare a eliminare i dati sul dispositivo cliccando sul pulsante e scaricarlo di nuovo.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("Download Info"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Percorso Download"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Il percorso in cui vengono salvati i download. Per modificarlo, devi prima eliminare tutti i download.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Scaricamento"),
    "downloadingBody": m18,
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
    "enableSubdirectory": MessageLookupByLibrary.simpleMessage(
      "Attiva sottocartelle",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Abilitato"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Episodio Id"),
    "error": MessageLookupByLibrary.simpleMessage("Errore"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Errore di download",
    ),
    "errorDownloadingBody": m19,
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
    "inProgress": MessageLookupByLibrary.simpleMessage("in corso"),
    "information": MessageLookupByLibrary.simpleMessage("Informazioni"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Credenziali invalide",
    ),
    "itemId": MessageLookupByLibrary.simpleMessage("Id Oggetto"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "L\'elemento non è stato trovato. Ciò potrebbe essere dovuto a un errore di rete o perché l\'elemento non esiste più ma rimane nella cache.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
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
    "login": MessageLookupByLibrary.simpleMessage("LOGIN"),
    "logs": MessageLookupByLibrary.simpleMessage("Log"),
    "longestItems": MessageLookupByLibrary.simpleMessage("Oggetti lungi"),
    "minimize": MessageLookupByLibrary.simpleMessage("Riduci"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Riduci nella barra",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Questa opzione nasconde l\'app dalla barra delle applicazioni e la sposta nella barra delle applicazioni.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Varie"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Altre Opzioni"),
    "name": MessageLookupByLibrary.simpleMessage("Nome"),
    "narrators": MessageLookupByLibrary.simpleMessage("Lettori"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Nuovi Episodi"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Prossimo Capitolo"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Nessuna connessione"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Nessun Download"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Stiamo riscontrando problemi di connessione al server.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Nessun Percorso"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Nessuna serie selezionata",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Non Finito"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Non Iniziato"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Non ancora provato"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Le notifiche dovrebbero essere abilitate",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Numero di libri"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Progressi offline",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Progressi offline salvati",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
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
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capitolo Precedente",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Progresso"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Abilita questa opzione per visualizzare i progressi nel player e le notifiche in base al capitolo. Se disabilitata, i progressi saranno mostrati in base all\'intero elemento.",
    ),
    "progressNum": m24,
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
    "requiredFields": MessageLookupByLibrary.simpleMessage(
      "Si prega di compilare tutti i campi obbligatori",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "RIavvio Richiesto",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Riavvia l\'app per applicare le modifiche.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Riprovare"),
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
    "serverAddress": MessageLookupByLibrary.simpleMessage("Indirizzo server"),
    "serverNotFound": MessageLookupByLibrary.simpleMessage(
      "Server non trovato",
    ),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Selezione server"),
    "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Agita per reimpostare il timer di spegnimento",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Condivisione Aperta"),
    "show": MessageLookupByLibrary.simpleMessage("Mostra"),
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
    "subdirectory": MessageLookupByLibrary.simpleMessage("Sottocartella"),
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
    "timeRemainingNum": m25,
    "timerText": m26,
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
    "user": MessageLookupByLibrary.simpleMessage("Utente"),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage("Vedi Segnalibri"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Vedi Capitoli"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Vedi su Github"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Attendi il reindirizzamento a /init. Al momento non hai effettuato l\'accesso.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "In attesa dell\'avvio del download",
    ),
  };
}
