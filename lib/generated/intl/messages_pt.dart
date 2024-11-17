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

  static String m2(count) =>
      "${Intl.plural(count, one: '${count}  dia', other: '${count} dias')}";

  static String m3(days, hours) =>
      "${Intl.plural(days, one: '${days} dia', other: '${days} dias')} ${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')}";

  static String m4(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} dia', other: '${days} dias')} ${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')}";

  static String m5(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} dia', other: '${days} dias')} ${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m6(days, hours, minutes, seconds) =>
      "${days}d ${hours}h ${minutes}m ${seconds}s";

  static String m7(days, hours, minutes) => "${days}d ${hours}h ${minutes}m";

  static String m8(days, hours) => "${days}d ${hours}h";

  static String m9(count) => "${count}d";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} hora', other: '${count} horas')}";

  static String m11(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')}";

  static String m12(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} hora', other: '${hours} horas')} ${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m13(hours, minutes, seconds) =>
      "${hours}h ${minutes}m ${seconds}s";

  static String m14(hours, minutes) => "${hours}h ${minutes}m";

  static String m15(count) => "${count}h";

  static String m16(count) =>
      "${Intl.plural(count, one: '${count} minuto', other: '${count} minutos')}";

  static String m17(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minuto', other: '${minutes} minutos')} ${Intl.plural(seconds, one: '${seconds} segundo', other: '${seconds} segundos')}";

  static String m18(minutes, seconds) => "${minutes}m ${seconds}s";

  static String m19(count) => "${count}m";

  static String m20(count) =>
      "${Intl.plural(count, one: '${count}  segundo', other: '${count} segundos')}";

  static String m21(count) => "${count}s";

  static String m22(device, os, version) =>
      "Dispositivo: ${device}\nSP: ${os}\nVersão do app: ${version}";

  static String m23(displayName) => "Download de ${displayName} completado";

  static String m24(displayName) => "Fazendo download de ${displayName}";

  static String m25(displayName) =>
      "Ocorreu um erro ao fazer download de ${displayName}";

  static String m27(numChapters) => "Número de CApítulos: ${numChapters}";

  static String m28(progress) => "Progresso: ${progress}%";

  static String m29(year) => "Ano de publicação: ${year}";

  static String m30(numBooks) =>
      "${Intl.plural(numBooks, zero: 'Sem livros', one: '1 livro', other: '${numBooks} livors')}";

  static String m31(progress) => "Progresso atual: ${progress} %";

  static String m33(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser":
            MessageLookupByLibrary.simpleMessage("Adicionar um novo usuário"),
        "addUser": MessageLookupByLibrary.simpleMessage("Adicionar usuário"),
        "aggressiveCaching":
            MessageLookupByLibrary.simpleMessage("Cache agressivo"),
        "allDownloads":
            MessageLookupByLibrary.simpleMessage("Todos os downloads"),
        "amoledMode": MessageLookupByLibrary.simpleMessage("Modo AMOLED"),
        "ascending": MessageLookupByLibrary.simpleMessage("Ascendente"),
        "attribution": MessageLookupByLibrary.simpleMessage("Atribuição"),
        "author": MessageLookupByLibrary.simpleMessage("Autor"),
        "authors": MessageLookupByLibrary.simpleMessage("Autores"),
        "back": MessageLookupByLibrary.simpleMessage("Voltar"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Capa do livro"),
        "boostLoadingSubtitle": MessageLookupByLibrary.simpleMessage(
            "Por favor, leia a descrição para entender esta funcionalidade."),
        "caching": MessageLookupByLibrary.simpleMessage("Cacheando"),
        "cachingHeader": MessageLookupByLibrary.simpleMessage("Cacheando"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "changeLibrary":
            MessageLookupByLibrary.simpleMessage("Mudar biblioteca"),
        "chapters": MessageLookupByLibrary.simpleMessage("Capítulos"),
        "chaptersNum": m0,
        "clearCache": MessageLookupByLibrary.simpleMessage("Limpar cache"),
        "close": MessageLookupByLibrary.simpleMessage("Fechar"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Agrupar séries"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "Quando ativado, itens em uma série serão agrupados na visão de biblioteca, mostrando apenas um único item para representar a série inteira."),
        "consecutiveDays":
            MessageLookupByLibrary.simpleMessage("Dias consecutivos"),
        "continueListening":
            MessageLookupByLibrary.simpleMessage("Continuar ouvindo"),
        "continueSeries":
            MessageLookupByLibrary.simpleMessage("Continuar série"),
        "currentDownloads":
            MessageLookupByLibrary.simpleMessage("Downloads atuais"),
        "currentPositionNum": m1,
        "darkMode": MessageLookupByLibrary.simpleMessage("Modo escuro"),
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
        "daysListened": MessageLookupByLibrary.simpleMessage("Dias ouvindo"),
        "deleteSelected":
            MessageLookupByLibrary.simpleMessage("Apagar selecionado"),
        "descending": MessageLookupByLibrary.simpleMessage("Descendente"),
        "description": MessageLookupByLibrary.simpleMessage("Descrição"),
        "deviceInfo": m22,
        "disabled": MessageLookupByLibrary.simpleMessage("Desabilitado"),
        "discover": MessageLookupByLibrary.simpleMessage("Descobrir"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("Domínio ou IP"),
        "downloadComplete":
            MessageLookupByLibrary.simpleMessage("Download completado"),
        "downloadCompleteBody": m23,
        "downloadInfo": MessageLookupByLibrary.simpleMessage(
            "Informações sobre o download"),
        "downloadPath":
            MessageLookupByLibrary.simpleMessage("Caminho do download"),
        "downloading": MessageLookupByLibrary.simpleMessage("Fazendo download"),
        "downloadingBody": m24,
        "downloads": MessageLookupByLibrary.simpleMessage("Downloads"),
        "downloadsOnlyViaWifi":
            MessageLookupByLibrary.simpleMessage("Downloads somente via WiFi"),
        "duration": MessageLookupByLibrary.simpleMessage("Duração"),
        "editQueue": MessageLookupByLibrary.simpleMessage("Editar fila"),
        "enabled": MessageLookupByLibrary.simpleMessage("Ativado"),
        "episodeId": MessageLookupByLibrary.simpleMessage("Id do episódio"),
        "error": MessageLookupByLibrary.simpleMessage("Erro"),
        "errorDownloading":
            MessageLookupByLibrary.simpleMessage("Erro ao fazer download"),
        "errorDownloadingBody": m25,
        "errorItemNotFound":
            MessageLookupByLibrary.simpleMessage("Erro: Item não encontrado"),
        "exit": MessageLookupByLibrary.simpleMessage("Sair"),
        "failed": MessageLookupByLibrary.simpleMessage("Falha"),
        "fastForward": MessageLookupByLibrary.simpleMessage("Avançar"),
        "fastForwardSeconds":
            MessageLookupByLibrary.simpleMessage("Avançar segundos"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Informe o número de segundos para avançar quando o botão de avanço for pressionado."),
        "feedOpen": MessageLookupByLibrary.simpleMessage("Abrir feed"),
        "filename": MessageLookupByLibrary.simpleMessage("Nome do arquivo"),
        "filepath": MessageLookupByLibrary.simpleMessage("Caminho do arquivo"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtro"),
        "finished": MessageLookupByLibrary.simpleMessage("Terminado"),
        "general": MessageLookupByLibrary.simpleMessage("Geral"),
        "genres": MessageLookupByLibrary.simpleMessage("Gêneros"),
        "hide": MessageLookupByLibrary.simpleMessage("Esconder"),
        "inProgress": MessageLookupByLibrary.simpleMessage("Em progresso"),
        "information": MessageLookupByLibrary.simpleMessage("Informação"),
        "itemId": MessageLookupByLibrary.simpleMessage("Id do item"),
        "itemNumChapters": m27,
        "itemProgress": m28,
        "itemPublishedYear": m29,
        "itemType": MessageLookupByLibrary.simpleMessage("Tipo de item"),
        "jumpToLastPosition":
            MessageLookupByLibrary.simpleMessage("Pular para última posição"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "languages": MessageLookupByLibrary.simpleMessage("Idiomas"),
        "last30Days": MessageLookupByLibrary.simpleMessage("Últimos 30 dias"),
        "last7Days": MessageLookupByLibrary.simpleMessage("Últimos 7 dias"),
        "libraries": MessageLookupByLibrary.simpleMessage("Bibliotecas"),
        "library": MessageLookupByLibrary.simpleMessage("Biblioteca"),
        "libraryName":
            MessageLookupByLibrary.simpleMessage("Nome da biblioteca"),
        "libraryStats":
            MessageLookupByLibrary.simpleMessage("Estatísticas da biblioteca"),
        "listenAgain": MessageLookupByLibrary.simpleMessage("Ouvir novamente"),
        "listeningInTheLastYear":
            MessageLookupByLibrary.simpleMessage("Ouvindo no último ano"),
        "loading": MessageLookupByLibrary.simpleMessage("Carregando…"),
        "logs": MessageLookupByLibrary.simpleMessage("Logs"),
        "markItemsFinished": MessageLookupByLibrary.simpleMessage(
            "Marcar itens como terminados"),
        "minimize": MessageLookupByLibrary.simpleMessage("Minimizar"),
        "moreOptions": MessageLookupByLibrary.simpleMessage("Mais opções"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "Você precisa informar um endereço de servidor válido"),
        "narrators": MessageLookupByLibrary.simpleMessage("Narradores"),
        "newestEpisodes":
            MessageLookupByLibrary.simpleMessage("Episódios mais recentes"),
        "next": MessageLookupByLibrary.simpleMessage("Próximo"),
        "nextChapter": MessageLookupByLibrary.simpleMessage("Próximo capítulo"),
        "noConnection": MessageLookupByLibrary.simpleMessage("Sem conexão"),
        "noDownloads": MessageLookupByLibrary.simpleMessage("Sem downloads"),
        "noInternetDescription": MessageLookupByLibrary.simpleMessage(
            "Estamos enfrentando problemas para conectar ao servidor."),
        "noItemsFound":
            MessageLookupByLibrary.simpleMessage("Nenhum item encontrado"),
        "noPath": MessageLookupByLibrary.simpleMessage("Sem caminho"),
        "noSeriesSelected":
            MessageLookupByLibrary.simpleMessage("Nenhuma série selecionada"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Falha no login: dados de usuário não recebidos"),
        "notFinished": MessageLookupByLibrary.simpleMessage("Não terminado"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Não começado"),
        "notTriedYet":
            MessageLookupByLibrary.simpleMessage("Ainda não tentado"),
        "notificationHeading": MessageLookupByLibrary.simpleMessage(
            "Notificações devem estar ativadas"),
        "numBooksInSeries": m30,
        "offlineProgress":
            MessageLookupByLibrary.simpleMessage("Progresso offline"),
        "offlineSavedProgress":
            MessageLookupByLibrary.simpleMessage("Progresso salvo offline"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "openDownloads":
            MessageLookupByLibrary.simpleMessage("Abrir downloads"),
        "openProjectLink":
            MessageLookupByLibrary.simpleMessage("Audiobookshelf/Server"),
        "ownStats": MessageLookupByLibrary.simpleMessage("Minhas estatísticas"),
        "password": MessageLookupByLibrary.simpleMessage("Senha"),
        "pause": MessageLookupByLibrary.simpleMessage("Pausa"),
        "personalizedLibrary":
            MessageLookupByLibrary.simpleMessage("Biblioteca personalizada"),
        "play": MessageLookupByLibrary.simpleMessage("Tocar"),
        "playNextEpisode":
            MessageLookupByLibrary.simpleMessage("Tocar próximo episódio"),
        "playbackSpeed": MessageLookupByLibrary.simpleMessage("Velocidade"),
        "player": MessageLookupByLibrary.simpleMessage("Tocador"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Configurações do tocador"),
        "port": MessageLookupByLibrary.simpleMessage("Porta"),
        "previous": MessageLookupByLibrary.simpleMessage("Anterior"),
        "previousChapter":
            MessageLookupByLibrary.simpleMessage("Capítulo anterior"),
        "progress": MessageLookupByLibrary.simpleMessage("Progresso"),
        "progressNum": m31,
        "readLess": MessageLookupByLibrary.simpleMessage("Ler menos"),
        "readMore": MessageLookupByLibrary.simpleMessage("Ler mais"),
        "recentSeries": MessageLookupByLibrary.simpleMessage("Séries recentes"),
        "recentlyAdded":
            MessageLookupByLibrary.simpleMessage("Adicionado recentemente"),
        "reportAnIssue":
            MessageLookupByLibrary.simpleMessage("Informe um problema"),
        "restartRequired":
            MessageLookupByLibrary.simpleMessage("Reinício requerido"),
        "rewind": MessageLookupByLibrary.simpleMessage("Voltar"),
        "rewindSeconds":
            MessageLookupByLibrary.simpleMessage("Voltar segundos"),
        "search": MessageLookupByLibrary.simpleMessage("Pesquisar"),
        "searchDisabled":
            MessageLookupByLibrary.simpleMessage("Pesquisa desabilitada"),
        "sequence": MessageLookupByLibrary.simpleMessage("Sequência"),
        "series": MessageLookupByLibrary.simpleMessage("Séries"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Informe o endereço do servidor para continuar"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Seleção de servidor"),
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
            "Intervalo de sincronização (segundos)"),
        "timerText": m33,
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "today": MessageLookupByLibrary.simpleMessage("Hoje"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Tentar novamente"),
        "unknown": MessageLookupByLibrary.simpleMessage("Desconhecido"),
        "unknownTitle":
            MessageLookupByLibrary.simpleMessage("Título desconhecido"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Atualizado em"),
        "user": MessageLookupByLibrary.simpleMessage("Usuário"),
        "username": MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Nome de usuário e senha não podem estar vazios"),
        "viewChapters": MessageLookupByLibrary.simpleMessage("Ver capítulos"),
        "viewOnGithub": MessageLookupByLibrary.simpleMessage("Ver on GitHub"),
        "year": MessageLookupByLibrary.simpleMessage("Ano")
      };
}
