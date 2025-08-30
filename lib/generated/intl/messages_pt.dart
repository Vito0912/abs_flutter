// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(num) => "(${num}) de capítulos";

  static String m1(position) => "Posição atual: ${position}";

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} dia', other: '${days} dias')} ${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} dia', other: '${days} dias')} ${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m5(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m9(hours, minutes) => "${hours}h ${minutes}m";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} minuto', other: '${count} minutos')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m12(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m13(count) => "${count}m";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count}  segundo', other: '${count} segundos')}";

  static String m15(count) => "${count}s";

  static String m16(device, os, version) =>
      "Dispositivo: ${device}\nSP: ${os}\nVersão do app: ${version}";

  static String m17(displayName) => "Descarga de ${displayName} completada";

  static String m18(displayName) => "A descarregar ${displayName}";

  static String m19(displayName) =>
      "Ocorreu um erro ao descarregar ${displayName}";

  static String m21(numChapters) => "Número de CApítulos: ${numChapters}";

  static String m22(year) => "Ano de publicação: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Sem livros', one: '1 livro', other: '${numBooks} livors')}";

  static String m24(progress) => "Progresso atual: ${progress} %";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Adicionar um novo utilizador",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Adicionar utilizador"),
    "added": MessageLookupByLibrary.simpleMessage("Adicionado"),
    "advanced": MessageLookupByLibrary.simpleMessage("Avançado"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Cache agressivo",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Todas as descargas"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("Modo AMOLED"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "Ocorreu um erro desconhecido",
    ),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascendente"),
    "attribution": MessageLookupByLibrary.simpleMessage("Atribuição"),
    "author": MessageLookupByLibrary.simpleMessage("Autor"),
    "authors": MessageLookupByLibrary.simpleMessage("Autores"),
    "back": MessageLookupByLibrary.simpleMessage("Voltar"),
    "caching": MessageLookupByLibrary.simpleMessage("A cachear"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("A cachear"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("Mudar biblioteca"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Limpar cache"),
    "close": MessageLookupByLibrary.simpleMessage("Fechar"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Agrupar séries"),
    "connectionError": MessageLookupByLibrary.simpleMessage("Falha da conexão"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage(
      "Dias consecutivos",
    ),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Continuar ouvindo",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Continuar série"),
    "copy": MessageLookupByLibrary.simpleMessage("Copiar"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copiar registos"),
    "create": MessageLookupByLibrary.simpleMessage("Criar"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Criar favoritos"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Criar favorito",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Descargas atuais",
    ),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage(
      "Cabeçalhos personalizados",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Modo escuro"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Dias ouvindo"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Registos de depuração"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage(
      "Apagar selecionado",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Descendente"),
    "description": MessageLookupByLibrary.simpleMessage("Descrição"),
    "deviceInfo": m16,
    "disabled": MessageLookupByLibrary.simpleMessage("Desativado"),
    "discover": MessageLookupByLibrary.simpleMessage("Descobrir"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domínio ou IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Descarga completada",
    ),
    "downloadCompleteBody": m17,
    "downloadInfo": MessageLookupByLibrary.simpleMessage(
      "Informações sobre a descarga",
    ),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Caminho da descarga"),
    "downloading": MessageLookupByLibrary.simpleMessage("A descarregar"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Descargas"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Descargas somente via WiFi",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Duração"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Editar fila"),
    "enabled": MessageLookupByLibrary.simpleMessage("Ativado"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Id do episódio"),
    "error": MessageLookupByLibrary.simpleMessage("Erro"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Erro ao descarregar",
    ),
    "errorDownloadingBody": m19,
    "failed": MessageLookupByLibrary.simpleMessage("Falha"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Avançar"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Avançar segundos",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Informe quantos segundos a avançar quando o botão de avanço for pressionado.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Abrir feed"),
    "filename": MessageLookupByLibrary.simpleMessage("Nome do ficheiro"),
    "filepath": MessageLookupByLibrary.simpleMessage("Caminho do ficheiro"),
    "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
    "finished": MessageLookupByLibrary.simpleMessage("Terminado"),
    "general": MessageLookupByLibrary.simpleMessage("Geral"),
    "genres": MessageLookupByLibrary.simpleMessage("Gêneros"),
    "hide": MessageLookupByLibrary.simpleMessage("Esconder"),
    "inProgress": MessageLookupByLibrary.simpleMessage("Em progresso"),
    "information": MessageLookupByLibrary.simpleMessage("Informação"),
    "itemId": MessageLookupByLibrary.simpleMessage("Id do elemento"),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Tipo de elemento"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Pular para última posição",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Idioma"),
    "languages": MessageLookupByLibrary.simpleMessage("Idiomas"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Últimos 30 dias"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Últimos 7 dias"),
    "libraries": MessageLookupByLibrary.simpleMessage("Bibliotecas"),
    "library": MessageLookupByLibrary.simpleMessage("Biblioteca"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Nome da biblioteca"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Estatísticas da biblioteca",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Ouvir novamente"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "A ouvir no último ano",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("A carregar…"),
    "logs": MessageLookupByLibrary.simpleMessage("Logs"),
    "minimize": MessageLookupByLibrary.simpleMessage("Minimizar"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("Mais opções"),
    "narrators": MessageLookupByLibrary.simpleMessage("Narradores"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage(
      "Episódios mais recentes",
    ),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Próximo capítulo"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Sem conexão"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Sem descargas"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "Estamos enfrentando problemas para conectar ao servidor.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Sem caminho"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Nenhuma série selecionada",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Não terminado"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Não começado"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Ainda não tentado"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Notificações devem estar ativadas",
    ),
    "numBooksInSeries": m23,
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Progresso offline",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Progresso gravado offline",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("Abrir descargas"),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Server",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("As minhas estatísticas"),
    "password": MessageLookupByLibrary.simpleMessage("Palavra-passe"),
    "pause": MessageLookupByLibrary.simpleMessage("Pausa"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Biblioteca personalizada",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Tocar"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Tocar próximo episódio",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Velocidade"),
    "player": MessageLookupByLibrary.simpleMessage("Tocador"),
    "playerSettings": MessageLookupByLibrary.simpleMessage(
      "Configurações do tocador",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Porta"),
    "previousChapter": MessageLookupByLibrary.simpleMessage(
      "Capítulo anterior",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("Progresso"),
    "progressNum": m24,
    "readLess": MessageLookupByLibrary.simpleMessage("Ler menos"),
    "readMore": MessageLookupByLibrary.simpleMessage("Ler mais"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Séries recentes"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage(
      "Adicionado recentemente",
    ),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Informe um problema",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "Reinício requerido",
    ),
    "rewind": MessageLookupByLibrary.simpleMessage("Voltar"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage("Voltar segundos"),
    "search": MessageLookupByLibrary.simpleMessage("Pesquisar"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage(
      "Pesquisa desativada",
    ),
    "sequence": MessageLookupByLibrary.simpleMessage("Sequência"),
    "series": MessageLookupByLibrary.simpleMessage("Séries"),
    "serverSelection": MessageLookupByLibrary.simpleMessage(
      "Seleção de servidor",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Configurações"),
    "show": MessageLookupByLibrary.simpleMessage("Mostrar"),
    "signOut": MessageLookupByLibrary.simpleMessage("Sair"),
    "size": MessageLookupByLibrary.simpleMessage("Tamanho"),
    "sort": MessageLookupByLibrary.simpleMessage("Ordenar"),
    "stats": MessageLookupByLibrary.simpleMessage("Estatísticas"),
    "stop": MessageLookupByLibrary.simpleMessage("Parar"),
    "success": MessageLookupByLibrary.simpleMessage("Sucesso"),
    "sync": MessageLookupByLibrary.simpleMessage("Sincronizar"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Intervalo de sincronização (segundos)",
    ),
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Título"),
    "today": MessageLookupByLibrary.simpleMessage("Hoje"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconhecido"),
    "user": MessageLookupByLibrary.simpleMessage("Utilizador"),
    "username": MessageLookupByLibrary.simpleMessage("Nome de utilizador"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Ver capítulos"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("Ver on GitHub"),
  };
}
