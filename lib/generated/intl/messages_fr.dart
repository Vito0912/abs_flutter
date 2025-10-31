// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(num) => "Chapitres (${num})";

  static String m1(position) => "Position actuelle : ${position}";

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} jour', other: '${days} jours')} ${Intl.plural(hours, one: '${hours} heure', other: '${hours} heures')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} jour', other: '${days} jours')} ${Intl.plural(hours, one: '${hours} heure', other: '${hours} heures')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} seconde', other: '${seconds} secondes')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}j ${hours}h ${minutes}m ${seconds}s";

  static String m5(days, hours, minutes) => "${days}j ${hours}h ${minutes}m";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} heure', other: '${hours} heures')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} heure', other: '${hours} heures')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} seconde', other: '${seconds} secondes')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m9(hours, minutes) => "${hours}h ${minutes}m";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} minute', other: '${count} minutes')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} seconde', other: '${seconds} secondes')}";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m13(count) => "${count}m";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count}  seconde', other: '${count} secondes')}";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Terminal : ${device}\nOS : ${os}\nApp Version : ${version}";

  static String m17(displayName) => "Téléchargement de ${displayName} terminé";

  static String m18(displayName) => "Téléchargement de ${displayName}";

  static String m19(displayName) =>
      "Une erreur est survenue lors du téléchargement de ${displayName}";

  static String m20(length) => "Durée : ${length}";

  static String m21(numChapters) => "Nombre de Chapitres : ${numChapters}";

  static String m22(year) => "Année de Publication : ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Pas de Livres', one: '1 Livre', other: '${numBooks} Livres')}";

  static String m24(progress) => "Progression Courante : ${progress} %";

  static String m25(time) => "Temps Restant : ${time}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Ajouter un nouvel utilisateur",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Ajouter un utilisateur"),
    "added": MessageLookupByLibrary.simpleMessage("Ajouté"),
    "addedAt": MessageLookupByLibrary.simpleMessage("Ajouté le"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Mise en mémoire tampon agressive",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Lorsque cette option est activée, l\'application va activer la mise en mémoire tampon agressive. Cela inclus stocker les chemins qui peuvent contenir des données nécessitant des mises à jour régulières, comme récupérer la progression de tous les éléments. Dans ces cas, la dernière position connue sera utilisée à moins que vous ouvriez spécifiquement un seul élément. Ces chemins auront une durée de mise en tampon plus courte.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage(
      "Tous les téléchargements",
    ),
    "amoledMode": MessageLookupByLibrary.simpleMessage("Mode AMOLED"),
    "ascending": MessageLookupByLibrary.simpleMessage("Montant"),
    "attribution": MessageLookupByLibrary.simpleMessage("Attribution"),
    "author": MessageLookupByLibrary.simpleMessage("Auteur"),
    "authors": MessageLookupByLibrary.simpleMessage("Auteurs"),
    "back": MessageLookupByLibrary.simpleMessage("Précédent"),
    "boostLoading": MessageLookupByLibrary.simpleMessage(
      "Accélérer le chargement",
    ),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Lorsque cette option est activée, l\'application n\'utilise pas la mise en mémoire tampon en temps réel. Il y aura toujours une tentative de récupération des dernières données depuis le serveur lors de l\'accès à des données en mémoire tampon afin d\'afficher le contenu immédiatement. Une fois les données à jour récupérées, l\'ancienne mémoire tampon est remplacée, cela assure l\'affichage des données les plus à jour lors du prochain lancement de l\'application. En résultat, vous verrez toujours les données du dernier cycle de récupération des données depuis le serveur.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Mise en mémoire tampon"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage(
      "Mise en mémoire tampon",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Lecteur de Voiture"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage(
      "Changer de bibliothèque",
    ),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage(
      "Vider la mise en mémoire tampon",
    ),
    "close": MessageLookupByLibrary.simpleMessage("Fermer"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage(
      "Réduire les séries",
    ),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "Jours consécutifs",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Continuer l\'écoute",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage(
      "Continuer les Séries",
    ),
    "copy": MessageLookupByLibrary.simpleMessage("Copier"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Copier (tentative de suppression des données personnelles)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copier les journaux"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Important:\nEn cliquant sur \"Copier\", vous aller transférer tous les journaux actuellement affichés, dans votre presse-papier. Ceci inclut les données enregistrées depuis le dernier lancement ou le dernier nettoyage de l\'application. Ces journaux peuvent contenir des données sensibles, comme des clefs, noms d\'utilisateur, adresse email, adresse URL du serveur. Soyez vigilants de l\'endroit ou vous déposez ces informations ! \\n Si vous choisissez de \"Copier et tenter de masquer les données sensibles\", l\'application tentera de masquer les objets comme des clefs, noms d\'utilisateur, adresse email, adresse URL du serveur. Vous restez responsables de passer en revue des journaux afin de vous assurer que toutes les données personnelles ont été effacées.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Créer"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Créer un favori"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Créer un favori",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Téléchargements en cours",
    ),
    "currentPositionNum": m1,
    "darkMode": MessageLookupByLibrary.simpleMessage("Mode Sombre"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Jours d\'écoute"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Journaux de debogage"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "Supprimer la Sélection",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Descendant"),
    "description": MessageLookupByLibrary.simpleMessage("Description"),
    "deviceInfo": m16,
    "disabled": MessageLookupByLibrary.simpleMessage("Désactivé"),
    "discover": MessageLookupByLibrary.simpleMessage("Découvrir"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domaine ou IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Téléchargement terminé",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Le fichier n\'a pas été téléchargé correctement. Vous pouvez tenter de supprimer les données sur le terminal en cliquant sur le bouton et le télécharger à nouveau.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage(
      "Informations sur le téléchargement",
    ),
    "downloadPath": MessageLookupByLibrary.simpleMessage(
      "Chemin pour les téléchargements",
    ),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Le chemin ou les téléchargements sont enregistrés. Pour modifier cela vous devez d\'abord supprimer tous les téléchargements.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Téléchargement"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Téléchargements"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Téléchargement par le WiFi uniquement",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Durée"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("Lecteur eBook"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Editer la File"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Veuillez activer les notifications pour suivre l\'avancement du téléchargement, et être capable de télécharger les fichiers en arrière-plan.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Activé"),
    "episodeId": MessageLookupByLibrary.simpleMessage(
      "Identifiant de l\'épisode",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Erreur"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Erreur lors du téléchargement",
    ),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Erreur : Elément introuvable !",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Quitter"),
    "failed": MessageLookupByLibrary.simpleMessage("Echoué"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Avance rapide"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Avance Rapide en Secondes",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Définissez le nombre de secondes à avancer lorsque le bouton Avance Rapide est pressé.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Ouvrir le Flux"),
    "filename": MessageLookupByLibrary.simpleMessage("Nom du fichier"),
    "filepath": MessageLookupByLibrary.simpleMessage("Chemin du fichier"),
    "filter": MessageLookupByLibrary.simpleMessage("Filtre"),
    "finished": MessageLookupByLibrary.simpleMessage("Terminé"),
    "general": MessageLookupByLibrary.simpleMessage("Général"),
    "genres": MessageLookupByLibrary.simpleMessage("Genres"),
    "hide": MessageLookupByLibrary.simpleMessage("Masquer"),
    "inProgress": MessageLookupByLibrary.simpleMessage("En cours"),
    "information": MessageLookupByLibrary.simpleMessage("Informations"),
    "itemId": MessageLookupByLibrary.simpleMessage("Identifiant de l\'élément"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "L\'élément n\'a pu être trouvé. Cela peut être du à une erreur réseau ou parce que le fichier n\'existe plus mais est toujours affiché.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Type d\'élément"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Aller à la dernière position",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "Lorsque cette option est activée, le lecteur ira à la dernière position lorsque le bouton lecture est pressé",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Langue"),
    "languages": MessageLookupByLibrary.simpleMessage("Langues"),
    "largestItems": MessageLookupByLibrary.simpleMessage(
      "Objets les plus grands",
    ),
    "last30Days": MessageLookupByLibrary.simpleMessage("30 derniers jours"),
    "last7Days": MessageLookupByLibrary.simpleMessage("7 derniers jours"),
    "libraries": MessageLookupByLibrary.simpleMessage("Bibliothèques"),
    "library": MessageLookupByLibrary.simpleMessage("Bibliothèque"),
    "libraryName": MessageLookupByLibrary.simpleMessage(
      "Nom de la bibliothèque",
    ),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Statistiques de la bibliothèque",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Ecouter à nouveau"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Ecoutes durant l\'année passée",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Chargement …"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Verrouiller la barre de progression du média",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Lorsque cette option est activée, la barre de progression dans la notification du média est verrouillée, le système d\'exploitation doit le supporter",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("Journalisation"),
    "logs": MessageLookupByLibrary.simpleMessage("Journaux"),
    "longestItems": MessageLookupByLibrary.simpleMessage(
      "Objets les plus longs",
    ),
    "minimize": MessageLookupByLibrary.simpleMessage("Réduire"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage(
      "Réduire dans la barre d\'état système",
    ),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Cette option masque l\'application de la barre des tâches et l\'affiche dans la barre d\'état système.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Divers"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Plus d\'options"),
    "name": MessageLookupByLibrary.simpleMessage("Nom"),
    "narrators": MessageLookupByLibrary.simpleMessage("Narrateurs"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Derniers Episodes"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Chapitre Suivant"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Pas de Connexion"),
    "noDownloads": MessageLookupByLibrary.simpleMessage(
      "Pas de téléchargements",
    ),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Nous n\'arrivons pas a nous connecter au serveur.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Pas de chemin"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Pas de séries sélectionnées",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Non terminé"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Non démarré"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage(
      "Pas encore de tentative",
    ),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Les notifications devraient être activées",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Nombre de livres"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Progression Hors-Ligne",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Sauvegarde de la progression Hors-Ligne",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "openDownloads": MessageLookupByLibrary.simpleMessage(
      "Ouvrir les téléchargements",
    ),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Serveur",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage(
      "Statistiques Personnelles",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Bibliothèque personnalisée",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Lire"),
    "playHistory": MessageLookupByLibrary.simpleMessage(
      "Historique de Lecture",
    ),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Lire l\'épisode suivant",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Vitesse"),
    "player": MessageLookupByLibrary.simpleMessage("Lecteur"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Paramètres du lecteur",
    ),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Veuillez vérifier votre connexion internet et essayer à nouveau.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Chapitre Précédent",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Progression"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Activez cette option pour afficher la progression dans le lecteur et les notification sur la base des chapitres. Si désactivée, la progression sera affichée sur la base de l\'élément intégral.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Editeur"),
    "readLess": MessageLookupByLibrary.simpleMessage("Lire moins"),
    "readMore": MessageLookupByLibrary.simpleMessage("Lire plus"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Séries Récentes"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage("Ajouté récemment"),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Signaler un problème",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "Redémarrage Requis",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Veuillez redémarrer l\'application pour appliquer les changements.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Réessayer"),
    "rewind": MessageLookupByLibrary.simpleMessage("Rembobiner"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage(
      "Rembobiner Secondes",
    ),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Définissez le nombre de secondes que vous voulez reculer lorsque le bouton rembobiner est pressé.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Rechercher"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "Recherche désactivée",
    ),
    "seek": MessageLookupByLibrary.simpleMessage("Chercher"),
    "sequence": MessageLookupByLibrary.simpleMessage("Séquence"),
    "series": MessageLookupByLibrary.simpleMessage("Séries"),
    "serverSelection": MessageLookupByLibrary.simpleMessage(
      "Sélection du serveur",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Secouer pour mettre à zéro le minuteur de la mise en veille",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Ouvrir le partage"),
    "show": MessageLookupByLibrary.simpleMessage("Afficher"),
    "showMediaType": MessageLookupByLibrary.simpleMessage(
      "Afficher le type de média",
    ),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Afficher en bas de chaque objet un badge indiquant le type de média.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Afficher la Progression par Chapitre",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Se Déconnecter"),
    "size": MessageLookupByLibrary.simpleMessage("Taille"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage(
      "Minuteur de mise en veille",
    ),
    "sort": MessageLookupByLibrary.simpleMessage("Tri"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Trier les séries dans l\'ordre Ascendant",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Statistiques"),
    "stop": MessageLookupByLibrary.simpleMessage("Arrêter"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Arrêter le lecteur jusqu\'à la synchronisation",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Activez cette option pour éviter que le lecteur débute la lecture depuis la derniere position synchronisée. Cela permet de s\'assurer que la lecture reprend à la bonne position. Si désactivée, la lecture pourrait changer rapidement après le démarrage, qui peut induire des pertes de données. Activer cela permet de limiter la consommation de données.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Succès"),
    "sync": MessageLookupByLibrary.simpleMessage("Synchroniser"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalle de Synchronisation (secondes)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Défini la fréquence à laquelle l\'application doit synchroniser avec le serveur. Veuillez redémarrer l\'application pour que la modification soit appliquée.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Synchroniser via WiFi uniquement",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Mot-Clés"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Titre"),
    "today": MessageLookupByLibrary.simpleMessage("Aujourd\'hui"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Top Auteurs"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Top Genres"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Total des pistes audio",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Total des Auteurs"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Durée totale"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Total Genres"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Total d\'Objets"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Taille totale"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Temps d\'écoute total",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Nouvel Essai"),
    "unknown": MessageLookupByLibrary.simpleMessage("Inconnu"),
    "user": MessageLookupByLibrary.simpleMessage("Utilisateur"),
    "username": MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage(
      "Afficher les favoris",
    ),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Voir les Chapitres"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Voir sur GitHub"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Veuillez attendre d\'être redirigé vers /init. Vous n\'êtes actuellement pas connecté.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "En attente de démarrage du téléchargement",
    ),
  };
}
