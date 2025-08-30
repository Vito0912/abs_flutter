// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(num) => "章节 (${num})";

  static String m1(position) => "当前时长: ${position}";

  static String m4(days, hours, minutes, seconds) =>
      "${days}天 ${hours}时 ${minutes}分 ${seconds}秒";

  static String m5(days, hours, minutes) => "${days}天 ${hours}时 ${minutes}分";

  static String m8(hours, minutes, seconds) =>
      "${hours}时 ${minutes}分 ${seconds}秒";

  static String m9(hours, minutes) => "${hours}时 ${minutes}分";

  static String m12(minutes, seconds) => "${minutes}分 ${seconds}秒";

  static String m13(count) => "${count}分";

  static String m15(count) => "${count}秒";

  static String m17(displayName) => "\'{\'displayName\'}\' 下载完成";

  static String m18(displayName) => "\'{\'displayName\'}\' 正在下载";

  static String m19(displayName) => "下载 \'{\'displayName\'}\'时发生错误";

  static String m20(length) => "总时长: ${length}";

  static String m21(numChapters) => "章节数: ${numChapters}";

  static String m22(year) => "出版年份: ${year}";

  static String m24(progress) => "当前进度: ${progress} %";

  static String m25(time) => "剩余时间: ${time}";

  static String m26(time) => "${time} 分钟";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage("添加新用户"),
    "addUser": MessageLookupByLibrary.simpleMessage("添加用户"),
    "added": MessageLookupByLibrary.simpleMessage("添加"),
    "advanced": MessageLookupByLibrary.simpleMessage("高级设置"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage("本地缓存"),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "启用后，应用将在本地进行缓存。缓存数据可能包含需要定期更新的数据，例如所有项目的进度。在这种情况下，除非您专门打开并请求单个项目，否则将使用最后一个已知位置。这些缓存数据的持续时间较短。",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("所有下载列表"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED模式"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage("一个未知的错误"),
    "ascending": MessageLookupByLibrary.simpleMessage("升序"),
    "attribution": MessageLookupByLibrary.simpleMessage("关于"),
    "author": MessageLookupByLibrary.simpleMessage("作者"),
    "authors": MessageLookupByLibrary.simpleMessage("作者"),
    "back": MessageLookupByLibrary.simpleMessage("后退"),
    "boostLoading": MessageLookupByLibrary.simpleMessage("实时更新"),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "启用此功能后，应用将有效地绕过实时缓存。它将始终尝试从服务器获取最新数据，同时使用缓存数据立即加载内容。检索到更新的数据后，它将替换旧缓存，确保下次加载应用时显示最新数据。因此，您将始终看到服务器当前数据后面一个获取周期的数据。",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("缓存"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("缓存"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("车载播放器"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("切换媒体库"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("清理缓存"),
    "close": MessageLookupByLibrary.simpleMessage("关闭"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("收起系列"),
    "connectionError": MessageLookupByLibrary.simpleMessage("连接错误"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage("连续收听天数"),
    "continueListening": MessageLookupByLibrary.simpleMessage("继续收听"),
    "continueSeries": MessageLookupByLibrary.simpleMessage("继续收听系列"),
    "copy": MessageLookupByLibrary.simpleMessage("复制"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage("复制（尝试转移私人数据）"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("复制日志"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "重要提示：\n点击 \'复制\' 将会把所有当前显示的日志复制到剪贴板，其中包括应用启动以来或上次清除后的所有记录。这些日志可能包含敏感信息，例如令牌（token）、用户名、电子邮件地址和服务器 URL。请谨慎粘贴和分享这些信息！\\n如果你选择 \'复制并尝试隐藏敏感信息\' ，应用将尝试屏蔽令牌、用户名、电子邮件地址和服务器 URL 等内容。但你仍需自行审查日志，确保所有个人信息已彻底移除。",
    ),
    "create": MessageLookupByLibrary.simpleMessage("创建"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("创建书签"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage("创建书签"),
    "currentDownloads": MessageLookupByLibrary.simpleMessage("当前下载"),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage("自定义Headers"),
    "darkMode": MessageLookupByLibrary.simpleMessage("黑夜模式"),
    "dateFormatDayHourMinuteSecondShort": m4,
    "dateFormatDayHourMinuteShort": m5,
    "dateFormatHourMinuteSecondShort": m8,
    "dateFormatHourMinuteShort": m9,
    "dateFormatMinuteSecondShort": m12,
    "dateFormatMinuteShort": m13,
    "dateFormatSecondShort": m15,
    "daysListened": MessageLookupByLibrary.simpleMessage("收听天数"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("调试日志"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage("删除所选"),
    "descending": MessageLookupByLibrary.simpleMessage("降序"),
    "description": MessageLookupByLibrary.simpleMessage("描述"),
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage("禁止跳过章节"),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "启用此选项将禁止通过应用外部的操作跳过章节（例如耳机按钮或通知控制）。如果你希望使用耳机的快进和快退功能，而不是跳过章节，请启用此设置。",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage("关闭震动"),
    "disabled": MessageLookupByLibrary.simpleMessage("禁用"),
    "discover": MessageLookupByLibrary.simpleMessage("发现"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("域名 或 IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage("下载完成"),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "文件未正确下载。你可以点击按钮删除设备上的数据，然后重新下载。",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("下载详情"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("下载路径"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "下载路径 以保存。如要更改此路径，需先删除所有已下载的内容。",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("正在下载"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("下载列表"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage("仅通过Wifi下载"),
    "duration": MessageLookupByLibrary.simpleMessage("持续时间"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook阅读器"),
    "editQueue": MessageLookupByLibrary.simpleMessage("编辑队列"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "请启用通知以接收下载进度更新并能够在后台下载文件。",
    ),
    "enableSubdirectory": MessageLookupByLibrary.simpleMessage("启用子目录"),
    "enabled": MessageLookupByLibrary.simpleMessage("启用"),
    "error": MessageLookupByLibrary.simpleMessage("错误"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage("下载失败"),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage("错误：未找到项目！"),
    "exit": MessageLookupByLibrary.simpleMessage("退出"),
    "failed": MessageLookupByLibrary.simpleMessage("失败的"),
    "fastForward": MessageLookupByLibrary.simpleMessage("快进"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage("快进秒数"),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "设置按下快进按钮时向前跳过的秒数。",
    ),
    "filename": MessageLookupByLibrary.simpleMessage("文件名"),
    "filepath": MessageLookupByLibrary.simpleMessage("文件路径"),
    "filter": MessageLookupByLibrary.simpleMessage("筛选"),
    "finished": MessageLookupByLibrary.simpleMessage("已完成"),
    "genres": MessageLookupByLibrary.simpleMessage("类型"),
    "hide": MessageLookupByLibrary.simpleMessage("隐藏"),
    "inProgress": MessageLookupByLibrary.simpleMessage("正在更新"),
    "information": MessageLookupByLibrary.simpleMessage("信息"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage("账号或密码错误"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "未找到该项。可能是网络错误导致，或该项已不存在但仍保留在缓存中。",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage("跳转到最后一个位置"),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "当启用时，播放器将跳转到最后一个位置时，按下播放",
    ),
    "language": MessageLookupByLibrary.simpleMessage("语言"),
    "languages": MessageLookupByLibrary.simpleMessage("语言"),
    "last30Days": MessageLookupByLibrary.simpleMessage("最后30天"),
    "last7Days": MessageLookupByLibrary.simpleMessage("最后7天"),
    "libraries": MessageLookupByLibrary.simpleMessage("媒体库"),
    "library": MessageLookupByLibrary.simpleMessage("媒体库"),
    "libraryStats": MessageLookupByLibrary.simpleMessage("媒体库统计"),
    "listenAgain": MessageLookupByLibrary.simpleMessage("再听一遍"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage("最后一年的收听"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage("锁定媒体进度条"),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "启用后，此功能将锁定媒体通知中的进度条（如果操作系统支持）",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("日志记录"),
    "logs": MessageLookupByLibrary.simpleMessage("日志"),
    "minimize": MessageLookupByLibrary.simpleMessage("最小化"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage("最小化至托盘"),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "此选项从任务栏隐藏应用程序并将其移动到系统托盘。",
    ),
    "moreOptions": MessageLookupByLibrary.simpleMessage("更多选择"),
    "narrators": MessageLookupByLibrary.simpleMessage("演播者"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("最新剧集"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("下一章"),
    "noConnection": MessageLookupByLibrary.simpleMessage("未连接"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("未下载列表"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "连接到服务器时遇到问题。",
    ),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage("未选择系列"),
    "notFinished": MessageLookupByLibrary.simpleMessage("未完成"),
    "notStarted": MessageLookupByLibrary.simpleMessage("未播放"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("尚未尝试"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage("请启用通知"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage("离线进度"),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage("离线保存进度"),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("打开下载"),
    "ownStats": MessageLookupByLibrary.simpleMessage("我的统计"),
    "password": MessageLookupByLibrary.simpleMessage("密码"),
    "pause": MessageLookupByLibrary.simpleMessage("暂停播放"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage("我的媒体库"),
    "play": MessageLookupByLibrary.simpleMessage("播放"),
    "playHistory": MessageLookupByLibrary.simpleMessage("播放历史"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage("播放下一集"),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("倍速"),
    "player": MessageLookupByLibrary.simpleMessage("播放器"),
    "playerSettings": MessageLookupByLibrary.simpleMessage("播放器设置"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "请检查您的Internet连接并重试。",
    ),
    "port": MessageLookupByLibrary.simpleMessage("端口"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("上一章"),
    "progress": MessageLookupByLibrary.simpleMessage("进度"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "启用此选项可在播放器中显示进度并按章节显示通知。如果禁用，则将根据整个项目显示进度。",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("发行商"),
    "readLess": MessageLookupByLibrary.simpleMessage("阅读较少"),
    "readMore": MessageLookupByLibrary.simpleMessage("阅读更多"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("近期系列"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage("最近添加"),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage("报告问题"),
    "requiredFields": MessageLookupByLibrary.simpleMessage("请填写所有必填项"),
    "restartRequired": MessageLookupByLibrary.simpleMessage("需要重新启动"),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "请重新启动应用程序以应用更改。",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("重试"),
    "rewind": MessageLookupByLibrary.simpleMessage("快退"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage("快退秒数"),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "设置按下快退按钮时向后跳过的秒数。",
    ),
    "search": MessageLookupByLibrary.simpleMessage("搜索"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage("禁用搜索"),
    "sequence": MessageLookupByLibrary.simpleMessage("顺序"),
    "series": MessageLookupByLibrary.simpleMessage("系列"),
    "serverAddress": MessageLookupByLibrary.simpleMessage("服务器地址"),
    "serverNotFound": MessageLookupByLibrary.simpleMessage("未找到服务器"),
    "serverSelection": MessageLookupByLibrary.simpleMessage("服务器选择"),
    "settings": MessageLookupByLibrary.simpleMessage("设置"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage("摇动以重置睡眠定时器"),
    "show": MessageLookupByLibrary.simpleMessage("显示"),
    "showMediaType": MessageLookupByLibrary.simpleMessage("显示媒体类型"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "在每个项目底部显示媒体类型。",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage("显示每章的进度"),
    "signOut": MessageLookupByLibrary.simpleMessage("注销"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("睡眠定时器"),
    "sort": MessageLookupByLibrary.simpleMessage("排序"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage("按系列升序排列"),
    "stats": MessageLookupByLibrary.simpleMessage("统计"),
    "stop": MessageLookupByLibrary.simpleMessage("停止播放"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage("停止播放直至同步"),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "启用此选项可防止播放器在同步最新播放位置之前启动。这可确保从正确位置恢复播放。如果禁用，播放位置可能会在开始后不久发生变化，从而可能导致数据丢失。启用此选项有助于节省数据使用量。",
    ),
    "subdirectory": MessageLookupByLibrary.simpleMessage("子目录"),
    "success": MessageLookupByLibrary.simpleMessage("成功"),
    "sync": MessageLookupByLibrary.simpleMessage("同步"),
    "syncInterval": MessageLookupByLibrary.simpleMessage("同步间隔（秒）"),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "指定应用程序与服务器同步的频率。请重启应用程序以使更改生效。",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage("仅通过Wifi同步"),
    "tags": MessageLookupByLibrary.simpleMessage("标签"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("标题"),
    "today": MessageLookupByLibrary.simpleMessage("今日收听时长"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage("总收听时长"),
    "tryAgain": MessageLookupByLibrary.simpleMessage("重试"),
    "unknown": MessageLookupByLibrary.simpleMessage("未知"),
    "user": MessageLookupByLibrary.simpleMessage("用户"),
    "username": MessageLookupByLibrary.simpleMessage("用户名"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("GitHub页面"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "请等待重定向至 /init。您目前尚未登录。",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage("等待下载开始"),
    "wrapText": MessageLookupByLibrary.simpleMessage("自动换行"),
    "wrapTextDescription": MessageLookupByLibrary.simpleMessage(
      "启用后，部分文本（如章节标题）会自动换行，而不是被截断。但这可能会破坏部分设计布局。",
    ),
  };
}
