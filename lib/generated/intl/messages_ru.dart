// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(num) => "Главы (${num})";

  static String m1(position) => "Текущая позиция: ${position}";

  static String m2(days, hours, minutes) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m3(days, hours, minutes, seconds) =>
      "${Intl.plural(days, one: '${days} day', other: '${days} days')} ${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}д ${hours}ч ${minutes}м ${seconds}с";

  static String m5(days, hours, minutes) => "${days}д ${hours}ч ${minutes}м";

  static String m6(hours, minutes) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')}";

  static String m7(hours, minutes, seconds) =>
      "${Intl.plural(hours, one: '${hours} hour', other: '${hours} hours')} ${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m8(hours, minutes, seconds) =>
      "${hours}ч ${minutes}м ${seconds}с";

  static String m9(hours, minutes) => "${hours}ч ${minutes}м";

  static String m10(count) =>
      "${Intl.plural(count, one: '${count} minute', other: '${count} minutes')}";

  static String m11(minutes, seconds) =>
      "${Intl.plural(minutes, one: '${minutes} minute', other: '${minutes} minutes')} ${Intl.plural(seconds, one: '${seconds} second', other: '${seconds} seconds')}";

  static String m12(minutes, seconds) => "${minutes}м ${seconds}с";

  static String m13(count) => "${count}м";

  static String m14(count) =>
      "${Intl.plural(count, one: '${count}  second', other: '${count} seconds')}";

  static String m15(count) => "${count}с";

  static String m16(device, os, version) =>
      "Устройство: ${device}\nОС: ${os}\nВерсия приложения: ${version}";

  static String m17(displayName) => "Загрузка ${displayName} завершена";

  static String m18(displayName) => "Загрузка ${displayName}";

  static String m19(displayName) =>
      "Во время загрузки произошла ошибка ${displayName}";

  static String m20(length) => "Длительность: ${length}";

  static String m21(numChapters) => "Количество глав: ${numChapters}";

  static String m22(year) => "Год публикации: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'No Books', one: '1 Book', other: '${numBooks} Books')}";

  static String m24(progress) => "Текущий прогресс: ${progress}%";

  static String m25(time) => "Оставшееся время: ${time}";

  static String m26(time) => "${time} мин";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage(
      "Добавить нового пользователя",
    ),
    "addUser": MessageLookupByLibrary.simpleMessage("Добавить пользователя"),
    "added": MessageLookupByLibrary.simpleMessage("Добавлен"),
    "advanced": MessageLookupByLibrary.simpleMessage("Расширенные"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Принудительное кэширование",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "Если эта функция включена, приложение будет активировать более активное кэширование. Это включает в себя маршруты кэширования, которые могут содержать данные, требующие регулярного обновления, например, для получения информации о ходе выполнения всех элементов. В этих случаях будет использоваться последняя известная позиция, если вы специально не откроете и не запросите один элемент. Эти маршруты будут иметь меньшую продолжительность кэширования.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("Скачать все"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED режим"),
    "ascending": MessageLookupByLibrary.simpleMessage("По возрастанию"),
    "attribution": MessageLookupByLibrary.simpleMessage("Авторство"),
    "author": MessageLookupByLibrary.simpleMessage("Автор"),
    "authors": MessageLookupByLibrary.simpleMessage("Авторы"),
    "back": MessageLookupByLibrary.simpleMessage("Назад"),
    "boostLoading": MessageLookupByLibrary.simpleMessage("Ускоренная загрузка"),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "Когда эта функция включена, приложение эффективно обходит кэширование в реальном времени. Оно всегда будет пытаться получить последние данные с сервера, используя при этом кэшированные данные для немедленной загрузки контента. Как только обновленные данные будут извлечены, они заменят старый кэш, гарантируя, что при следующей загрузке приложения будут отображены самые свежие данные. В результате вы всегда будете видеть данные за один цикл выборки за текущими данными сервера.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Кэширование"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Кэширование"),
    "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Автоплеер"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("Выбор библиотеки"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Очистить Кэш"),
    "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Свернуть серию"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage("Дней подряд"),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Продолжить прослушивание",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Продолжить серию"),
    "copy": MessageLookupByLibrary.simpleMessage("Копировать"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Копировать (Без персональных данных)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Копировать логи"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Важно:\nНажатие кнопки \"Копировать\" перенесет все отображаемые в данный момент журналы в ваш буфер обмена, включая данные, записанные с момента запуска приложения или последней очистки. Эти журналы могут содержать конфиденциальную информацию, такую как токены, имена пользователей, электронные письма и URL-адреса серверов. Будьте осторожны с тем, куда вы вставляете эту информацию!\\nЕсли вы выберете \"Копировать и пытаться скрыть конфиденциальную информацию\", приложение попытается замаскировать такие элементы, как токены, имена пользователей, электронные письма и URL-адреса серверов. Однако вы несете ответственность за просмотр журналов, чтобы убедиться, что все личные данные полностью удалены.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Создать"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Создать Закладку"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Создать закладку",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Текущие загрузки",
    ),
    "currentPositionNum": m1,
    "darkMode": MessageLookupByLibrary.simpleMessage("Темный режим"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Дней прослушивания"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Журнал отладки"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage("Удалить выбранное"),
    "descending": MessageLookupByLibrary.simpleMessage("По убыванию"),
    "description": MessageLookupByLibrary.simpleMessage("Описание"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Отключить пропуск глав",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Это отключит возможность пропускать главы из-за пределов приложения (например, с помощью гарнитуры или элементов управления уведомлениями). Включите это, если вы хотите, чтобы ваши наушники использовали функции быстрой перемотки вперед и назад вместо пропуска глав.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Отключить вибрацию",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Отключить"),
    "discover": MessageLookupByLibrary.simpleMessage("Не начато"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Домен или IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Загрузка завершена",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "Файл был загружен неправильно. Вы можете попробовать удалить данные с устройства, нажав на кнопку, и загрузить их снова.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage(
      "Информация о загрузках",
    ),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Путь загрузки"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "Путь, по которому хранятся загруженные файлы. Чтобы изменить путь, необходимо удалить все загруженные файлы.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Загрузка"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Загрузки"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Загружать только по WiFi",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Продолжительность"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook-Reader"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Редактировать очередь"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, включите уведомления, чтобы получать обновления о ходе загрузки и иметь возможность загружать файлы в фоновом режиме.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Включено"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Id эпизода"),
    "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage("Ошибка загрузки"),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Ошибка: Объект не найден!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Выйти"),
    "failed": MessageLookupByLibrary.simpleMessage("Не удалось"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Быстрая перемотка"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Время промотки",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Установите количество секунд для перехода вперед при нажатии кнопки быстрой перемотки.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Открыть канал"),
    "filename": MessageLookupByLibrary.simpleMessage("Имя файла"),
    "filepath": MessageLookupByLibrary.simpleMessage("Путь к файлу"),
    "filter": MessageLookupByLibrary.simpleMessage("Фильтр"),
    "finished": MessageLookupByLibrary.simpleMessage("Готово"),
    "general": MessageLookupByLibrary.simpleMessage("Главная"),
    "genres": MessageLookupByLibrary.simpleMessage("Жанры"),
    "hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
    "inProgress": MessageLookupByLibrary.simpleMessage("В процессе"),
    "information": MessageLookupByLibrary.simpleMessage("Информация"),
    "itemId": MessageLookupByLibrary.simpleMessage("ID элемента"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "Элемент не удалось найти. Это может быть связано с сетевой ошибкой или с тем, что элемент больше не существует, но остается в кэше.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Тип элемента"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Перейти в последнюю позицию",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "Если эта функция включена, то при нажатии кнопки воспроизведения проигрыватель перейдет на последнюю позицию",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Язык"),
    "languages": MessageLookupByLibrary.simpleMessage("Языки"),
    "largestItems": MessageLookupByLibrary.simpleMessage(
      "Самые большые элементы",
    ),
    "last30Days": MessageLookupByLibrary.simpleMessage("За последние 30 дней"),
    "last7Days": MessageLookupByLibrary.simpleMessage("За последние 7 дней"),
    "libraries": MessageLookupByLibrary.simpleMessage("Библиотеки"),
    "library": MessageLookupByLibrary.simpleMessage("Библиотека"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Имя библиотеки"),
    "libraryStats": MessageLookupByLibrary.simpleMessage(
      "Статистика библиотеки",
    ),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Прослушать снова"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Прослушивание за последний год",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Загрузка…"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Блокировка полосы прогресса медиа",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "Если эта функция включена, она блокирует индикатор уведомления о прослушивании, если оно поддерживается операционной системой",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("Журнал"),
    "logs": MessageLookupByLibrary.simpleMessage("Журналы"),
    "longestItems": MessageLookupByLibrary.simpleMessage(
      "Самые длинные элементы",
    ),
    "minimize": MessageLookupByLibrary.simpleMessage("Свернуть"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage("Свернуть в трей"),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "Этот параметр скрывает приложение с панели задач и перемещает его в системный трей.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Разное"),
    "moreOptions": MessageLookupByLibrary.simpleMessage(
      "Дополнительные параметры",
    ),
    "name": MessageLookupByLibrary.simpleMessage("Имя"),
    "narrators": MessageLookupByLibrary.simpleMessage("Чтецы"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Новые эпизоды"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Следующая глава"),
    "noConnection": MessageLookupByLibrary.simpleMessage("Нет соединения"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("Загрузки отсутствуют"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "У нас возникли проблемы с подключением к серверу.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("Нет пути"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "Серия не выбрана",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Не завершено"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Не запущено"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Пока не пробовал"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Уведомления должны быть включены",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Количество книг"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage(
      "Оффлайновый прогресс",
    ),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Сохраненный оффлайновый прогресс",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("Ок"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("Открыть загрузки"),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Server",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Собственная статистика"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "pause": MessageLookupByLibrary.simpleMessage("Пауза"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Персонализированная библиотека",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Слушать"),
    "playHistory": MessageLookupByLibrary.simpleMessage(
      "История воспроизведения",
    ),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Воспроизведение следующего эпизода",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Скорость"),
    "player": MessageLookupByLibrary.simpleMessage("Плеер"),
    "playerSettings": MessageLookupByLibrary.simpleMessage("Настройки плеера"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, проверьте свое интернет-соединение и повторите попытку.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Порт"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Предыдущая глава"),
    "progress": MessageLookupByLibrary.simpleMessage("Прогресс"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Включите эту опцию, чтобы отображать прогресс в проигрывателе и уведомления по каждой главе. Если она отключена, прогресс будет отображаться по всему разделу.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Издатель"),
    "readLess": MessageLookupByLibrary.simpleMessage("Читать меньше"),
    "readMore": MessageLookupByLibrary.simpleMessage("Читать больше"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Последние серии"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage(
      "Недавно добавленные",
    ),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage(
      "Сообщить о проблеме",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage(
      "Требуется перезагрузка",
    ),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, перезапустите приложение, чтобы применить изменения.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Повторить"),
    "rewind": MessageLookupByLibrary.simpleMessage("Перемотка"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage("Время отмотки"),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Установите количество секунд для перехода назад при нажатии кнопки перемотки назад.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage("Поиск отключен"),
    "seek": MessageLookupByLibrary.simpleMessage("Искать"),
    "sequence": MessageLookupByLibrary.simpleMessage("Последовательность"),
    "series": MessageLookupByLibrary.simpleMessage("Серия"),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Выбор сервера"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Встряхните, чтобы сбросить таймер сна",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Общедоступно"),
    "show": MessageLookupByLibrary.simpleMessage("Показать"),
    "showMediaType": MessageLookupByLibrary.simpleMessage("Показать тип медиа"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Отображает значки типов медиа в нижней части каждого элемента.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Показывать прогресс по главе",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Выход"),
    "size": MessageLookupByLibrary.simpleMessage("Размер"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Таймер сна"),
    "sort": MessageLookupByLibrary.simpleMessage("Сортировать"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Сортировка серий в порядке возрастания",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Статистика"),
    "stop": MessageLookupByLibrary.simpleMessage("Стоп"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Остановить проигрывание до синхронизации",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Включите эту опцию, чтобы предотвратить запуск проигрывателя до тех пор, пока не будет синхронизирована последняя позиция воспроизведения. Это гарантирует, что воспроизведение возобновится с правильной позиции. Если эта опция отключена, позиция воспроизведения может измениться вскоре после запуска, что может привести к потере данных. Включение этой функции помогает экономить использование данных.",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Успех"),
    "sync": MessageLookupByLibrary.simpleMessage("Синхронизация"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Интервал синхронизации (секунд)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Указывает, как часто приложение должно синхронизироваться с сервером. Пожалуйста, перезапустите приложение, чтобы изменения вступили в силу.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Синхронизация только через Wi-Fi",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Тэги"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Название"),
    "today": MessageLookupByLibrary.simpleMessage("Сегодня"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Лучшие авторы"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Лучшие жанры"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Всего аудио треков",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Всего авторов"),
    "totalDuration": MessageLookupByLibrary.simpleMessage(
      "Общая продолжительность",
    ),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Всего жанров"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Всего элементов"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Общий размер"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Всего прослушано",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Попробуйте снова"),
    "unknown": MessageLookupByLibrary.simpleMessage("Неизвестный"),
    "user": MessageLookupByLibrary.simpleMessage("Пользователь"),
    "username": MessageLookupByLibrary.simpleMessage("Имя пользователя"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage("Просмотр закладок"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("Просмотр глав"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage(
      "Посмотреть на GitHub",
    ),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, дождитесь перенаправления на страницу /init. В данный момент вы не вошли в систему.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "Ожидание начала загрузки",
    ),
  };
}
