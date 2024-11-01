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

  static String m6(days, hours, minutes, seconds) =>
      "${days}天 ${hours}时 ${minutes}分 ${seconds}秒";

  static String m7(days, hours, minutes) => "${days}天 ${hours}时 ${minutes}分";

  static String m8(days, hours) => "${days}天 ${hours}时";

  static String m13(hours, minutes, seconds) =>
      "${hours}时 ${minutes}分 ${seconds}秒";

  static String m14(hours, minutes) => "${hours}时 ${minutes}分";

  static String m15(count) => "${count}小时";

  static String m18(minutes, seconds) => "${minutes}分 ${seconds}秒";

  static String m23(displayName) => "\'{\'displayName\'}\' 下载完成";

  static String m24(displayName) => "\'{\'displayName\'}\' 正在下载";

  static String m25(displayName) => "下载 \'{\'displayName\'}\'时发生错误";

  static String m26(length) => "总时长: ${length}";

  static String m27(numChapters) => "章节数: ${numChapters}";

  static String m28(progress) => "进度: ${progress}%";

  static String m29(year) => "出版年份: ${year}";

  static String m31(progress) => "当前进度: ${progress} %";

  static String m32(time) => "剩余时间: ${time}";

  static String m33(time) => "${time} 分钟";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser": MessageLookupByLibrary.simpleMessage("添加新用户"),
        "addUser": MessageLookupByLibrary.simpleMessage("添加用户"),
        "aggressiveCaching": MessageLookupByLibrary.simpleMessage("本地缓存"),
        "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
            "启用后，应用将在本地进行缓存。缓存数据可能包含需要定期更新的数据，例如所有项目的进度。在这种情况下，除非您专门打开并请求单个项目，否则将使用最后一个已知位置。这些缓存数据的持续时间较短。"),
        "allDownloads": MessageLookupByLibrary.simpleMessage("所有下载列表"),
        "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED模式"),
        "ascending": MessageLookupByLibrary.simpleMessage("升序"),
        "attribution": MessageLookupByLibrary.simpleMessage("关于"),
        "author": MessageLookupByLibrary.simpleMessage("作者"),
        "authors": MessageLookupByLibrary.simpleMessage("作者"),
        "back": MessageLookupByLibrary.simpleMessage("后退"),
        "bookCover": MessageLookupByLibrary.simpleMessage("书籍封面"),
        "boostLoading": MessageLookupByLibrary.simpleMessage("实时更新"),
        "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
            "启用此功能后，应用将有效地绕过实时缓存。它将始终尝试从服务器获取最新数据，同时使用缓存数据立即加载内容。检索到更新的数据后，它将替换旧缓存，确保下次加载应用时显示最新数据。因此，您将始终看到服务器当前数据后面一个获取周期的数据。"),
        "boostLoadingSubtitle":
            MessageLookupByLibrary.simpleMessage("请阅读说明以了解此功能。"),
        "caching": MessageLookupByLibrary.simpleMessage("缓存"),
        "cachingHeader": MessageLookupByLibrary.simpleMessage("缓存"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "carPlayer": MessageLookupByLibrary.simpleMessage("车载播放器"),
        "changeLibrary": MessageLookupByLibrary.simpleMessage("切换媒体库"),
        "chapters": MessageLookupByLibrary.simpleMessage("章节"),
        "chaptersNum": m0,
        "clearCache": MessageLookupByLibrary.simpleMessage("清理缓存"),
        "close": MessageLookupByLibrary.simpleMessage("关闭"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "启用后，系列中的项目将在库视图中分组，仅显示单个项目来代表整个系列。"),
        "consecutiveDays": MessageLookupByLibrary.simpleMessage("连续收听天数"),
        "continueListening": MessageLookupByLibrary.simpleMessage("继续收听"),
        "currentDownloads": MessageLookupByLibrary.simpleMessage("当前下载"),
        "currentPositionNum": m1,
        "darkMode": MessageLookupByLibrary.simpleMessage("黑夜模式"),
        "dateFormatDayHourMinuteSecondShort": m6,
        "dateFormatDayHourMinuteShort": m7,
        "dateFormatDayHourShort": m8,
        "dateFormatHourMinuteSecondShort": m13,
        "dateFormatHourMinuteShort": m14,
        "dateFormatHourShort": m15,
        "dateFormatMinuteSecondShort": m18,
        "daysListened": MessageLookupByLibrary.simpleMessage("收听天数"),
        "debugLogs": MessageLookupByLibrary.simpleMessage("调试日志"),
        "deleteSelected": MessageLookupByLibrary.simpleMessage("删除所选"),
        "descending": MessageLookupByLibrary.simpleMessage("降序"),
        "description": MessageLookupByLibrary.simpleMessage("描述"),
        "disabled": MessageLookupByLibrary.simpleMessage("禁用"),
        "discover": MessageLookupByLibrary.simpleMessage("发现"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("域名 或 IP"),
        "downloadComplete": MessageLookupByLibrary.simpleMessage("下载完成"),
        "downloadCompleteBody": m23,
        "downloading": MessageLookupByLibrary.simpleMessage("正在下载"),
        "downloadingBody": m24,
        "downloads": MessageLookupByLibrary.simpleMessage("下载列表"),
        "downloadsOnlyViaWifi":
            MessageLookupByLibrary.simpleMessage("仅通过Wifi下载"),
        "duration": MessageLookupByLibrary.simpleMessage("持续时间"),
        "editQueue": MessageLookupByLibrary.simpleMessage("编辑队列"),
        "enableNotificationsDownload":
            MessageLookupByLibrary.simpleMessage("请启用通知以接收下载进度更新并能够在后台下载文件。"),
        "enabled": MessageLookupByLibrary.simpleMessage("启用"),
        "enterValidUsernameOrPassword":
            MessageLookupByLibrary.simpleMessage("请输入您的用户名和密码。"),
        "error": MessageLookupByLibrary.simpleMessage("错误"),
        "errorDownloading": MessageLookupByLibrary.simpleMessage("下载失败"),
        "errorDownloadingBody": m25,
        "exit": MessageLookupByLibrary.simpleMessage("退出"),
        "failed": MessageLookupByLibrary.simpleMessage("失败的"),
        "fastForward": MessageLookupByLibrary.simpleMessage("快进"),
        "fastForwardSeconds": MessageLookupByLibrary.simpleMessage("快进秒数"),
        "fastForwardSecondsDescription":
            MessageLookupByLibrary.simpleMessage("设置按下快进按钮时向前跳过的秒数。"),
        "filter": MessageLookupByLibrary.simpleMessage("筛选"),
        "finished": MessageLookupByLibrary.simpleMessage("已完成"),
        "genres": MessageLookupByLibrary.simpleMessage("类型"),
        "hide": MessageLookupByLibrary.simpleMessage("隐藏"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage("如果需要启用账号快速切换功能"),
        "inProgress": MessageLookupByLibrary.simpleMessage("正在更新"),
        "information": MessageLookupByLibrary.simpleMessage("信息"),
        "itemLength": m26,
        "itemNumChapters": m27,
        "itemProgress": m28,
        "itemPublishedYear": m29,
        "jumpToLastPosition": MessageLookupByLibrary.simpleMessage("跳转到最后一个位置"),
        "jumpToLastPositionDescription":
            MessageLookupByLibrary.simpleMessage("当启用时，播放器将跳转到最后一个位置时，按下播放"),
        "language": MessageLookupByLibrary.simpleMessage("语言"),
        "languages": MessageLookupByLibrary.simpleMessage("语言"),
        "last30Days": MessageLookupByLibrary.simpleMessage("最后30天"),
        "last7Days": MessageLookupByLibrary.simpleMessage("最后7天"),
        "libraries": MessageLookupByLibrary.simpleMessage("媒体库"),
        "library": MessageLookupByLibrary.simpleMessage("媒体库"),
        "libraryStats": MessageLookupByLibrary.simpleMessage("媒体库统计"),
        "listenAgain": MessageLookupByLibrary.simpleMessage("再听一遍"),
        "listeningInTheLastYear":
            MessageLookupByLibrary.simpleMessage("最后一年的收听"),
        "lockProgressBar": MessageLookupByLibrary.simpleMessage("锁定媒体进度条"),
        "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
            "启用后，此功能将锁定媒体通知中的进度条（如果操作系统支持）"),
        "logging": MessageLookupByLibrary.simpleMessage("日志记录"),
        "logs": MessageLookupByLibrary.simpleMessage("日志"),
        "markItemsFinished": MessageLookupByLibrary.simpleMessage("将项目标记为已完成"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "指定项目结束前应标记为完成的时间（以秒为单位） 。将其设置为 0 表示只有当玩家到达最后时，项目才会标记为完成。如果设置了正值，则当玩家在结束前到达该时间时，项目才会标记为完成。"),
        "minimize": MessageLookupByLibrary.simpleMessage("最小化"),
        "minimizeToTray": MessageLookupByLibrary.simpleMessage("最小化至托盘"),
        "minimizeToTrayDescription":
            MessageLookupByLibrary.simpleMessage("此选项从任务栏隐藏应用程序并将其移动到系统托盘。"),
        "moreOptions": MessageLookupByLibrary.simpleMessage("更多选择"),
        "multipleServerAdressess":
            MessageLookupByLibrary.simpleMessage("如果要使用多个服务器地址，可以稍后添加"),
        "mustEnterValidAddress":
            MessageLookupByLibrary.simpleMessage("您必须输入有效的服务器地址"),
        "narrators": MessageLookupByLibrary.simpleMessage("演播者"),
        "newestEpisodes": MessageLookupByLibrary.simpleMessage("最新剧集"),
        "next": MessageLookupByLibrary.simpleMessage("下一个"),
        "nextChapter": MessageLookupByLibrary.simpleMessage("下一章"),
        "noConnection": MessageLookupByLibrary.simpleMessage("未连接"),
        "noDownloads": MessageLookupByLibrary.simpleMessage("未下载列表"),
        "noInternetDescription":
            MessageLookupByLibrary.simpleMessage("连接到服务器时遇到问题。"),
        "noItemsFound": MessageLookupByLibrary.simpleMessage("未找到任何商品"),
        "noSeriesSelected": MessageLookupByLibrary.simpleMessage("未选择系列"),
        "noUserData": MessageLookupByLibrary.simpleMessage("登录失败：未获取到用户数据"),
        "notFinished": MessageLookupByLibrary.simpleMessage("未完成"),
        "notStarted": MessageLookupByLibrary.simpleMessage("未播放"),
        "notTriedYet": MessageLookupByLibrary.simpleMessage("尚未尝试"),
        "notificationHeading": MessageLookupByLibrary.simpleMessage(""),
        "offlineProgress": MessageLookupByLibrary.simpleMessage("离线进度"),
        "offlineSavedProgress": MessageLookupByLibrary.simpleMessage("离线保存进度"),
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
        "pleaseCheckInternet":
            MessageLookupByLibrary.simpleMessage("请检查您的Internet连接并重试。"),
        "port": MessageLookupByLibrary.simpleMessage("端口"),
        "previous": MessageLookupByLibrary.simpleMessage("以前的"),
        "previousChapter": MessageLookupByLibrary.simpleMessage("上一章"),
        "progress": MessageLookupByLibrary.simpleMessage("进度"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "启用此选项可在播放器中显示进度并按章节显示通知。如果禁用，则将根据整个项目显示进度。"),
        "progressNum": m31,
        "publisher": MessageLookupByLibrary.simpleMessage("发行商"),
        "readLess": MessageLookupByLibrary.simpleMessage("阅读较少"),
        "readMore": MessageLookupByLibrary.simpleMessage("阅读更多"),
        "recentSeries": MessageLookupByLibrary.simpleMessage("近期系列"),
        "recentlyAdded": MessageLookupByLibrary.simpleMessage("最近添加"),
        "reportAnIssue": MessageLookupByLibrary.simpleMessage("报告问题"),
        "restartRequired": MessageLookupByLibrary.simpleMessage("需要重新启动"),
        "restartRequiredDescription":
            MessageLookupByLibrary.simpleMessage("请重新启动应用程序以应用更改。"),
        "rewind": MessageLookupByLibrary.simpleMessage("快退"),
        "rewindSeconds": MessageLookupByLibrary.simpleMessage("快退秒数"),
        "rewindSecondsDescription":
            MessageLookupByLibrary.simpleMessage("设置按下快退按钮时向后跳过的秒数。"),
        "search": MessageLookupByLibrary.simpleMessage("搜索"),
        "searchDisabled": MessageLookupByLibrary.simpleMessage("禁用搜索"),
        "sequence": MessageLookupByLibrary.simpleMessage("顺序"),
        "series": MessageLookupByLibrary.simpleMessage("系列"),
        "serverAdressContinue":
            MessageLookupByLibrary.simpleMessage("输入您的服务器地址以继续"),
        "serverSelection": MessageLookupByLibrary.simpleMessage("服务器选择"),
        "settings": MessageLookupByLibrary.simpleMessage("设置"),
        "shakeResetTimer": MessageLookupByLibrary.simpleMessage("摇动以重置睡眠定时器"),
        "show": MessageLookupByLibrary.simpleMessage("显示"),
        "showAccountSwitcher": MessageLookupByLibrary.simpleMessage("显示帐户切换"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "启用此选项可在应用栏中添加图标按钮，以便快速切换帐户。这将减小应用栏的大小。"),
        "showProgressPerChapters":
            MessageLookupByLibrary.simpleMessage("显示每章的进度"),
        "signOut": MessageLookupByLibrary.simpleMessage("注销"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("睡眠定时器"),
        "sort": MessageLookupByLibrary.simpleMessage("排序"),
        "stats": MessageLookupByLibrary.simpleMessage("统计"),
        "stop": MessageLookupByLibrary.simpleMessage("停止播放"),
        "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage("停止播放直至同步"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "启用此选项可防止播放器在同步最新播放位置之前启动。这可确保从正确位置恢复播放。如果禁用，播放位置可能会在开始后不久发生变化，从而可能导致数据丢失。启用此选项有助于节省数据使用量。"),
        "success": MessageLookupByLibrary.simpleMessage("成功"),
        "sync": MessageLookupByLibrary.simpleMessage("同步"),
        "syncInterval": MessageLookupByLibrary.simpleMessage("同步间隔（秒）"),
        "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
            "指定应用程序与服务器同步的频率。请重启应用程序以使更改生效。"),
        "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage("仅通过Wifi同步"),
        "tags": MessageLookupByLibrary.simpleMessage("标签"),
        "timeRemainingNum": m32,
        "timerText": m33,
        "title": MessageLookupByLibrary.simpleMessage("标题"),
        "today": MessageLookupByLibrary.simpleMessage("今日收听时长"),
        "totalTimeListened": MessageLookupByLibrary.simpleMessage("总收听时长"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("重试"),
        "unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "unknownTitle": MessageLookupByLibrary.simpleMessage("未知标题"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("更新于"),
        "user": MessageLookupByLibrary.simpleMessage("用户"),
        "username": MessageLookupByLibrary.simpleMessage("用户名"),
        "usernameOrPasswordNotEmpty":
            MessageLookupByLibrary.simpleMessage("密码不能为空"),
        "viewOnGithub": MessageLookupByLibrary.simpleMessage("GitHub页面"),
        "waitTillRedirect":
            MessageLookupByLibrary.simpleMessage("请等待重定向至 /init。您目前尚未登录。"),
        "waitingForDownload": MessageLookupByLibrary.simpleMessage("等待下载开始"),
        "year": MessageLookupByLibrary.simpleMessage("年")
      };
}
