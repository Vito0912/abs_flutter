// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(num) => "Chapters (${num})";

  static String m1(position) => "Current Position: ${position}";

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
      "Device: ${device}\nOS: ${os}\nApp Version: ${version}";

  static String m17(displayName) => "Download of ${displayName} complete";

  static String m18(displayName) => "Downloading ${displayName}";

  static String m19(displayName) =>
      "An error occurred while downloading ${displayName}";

  static String m20(length) => "Length: ${length}";

  static String m21(numChapters) => "Number of Chapters: ${numChapters}";

  static String m22(year) => "Published Year: ${year}";

  static String m23(numBooks) =>
      "${Intl.plural(numBooks, zero: 'No Books', one: '1 Book', other: '${numBooks} Books')}";

  static String m24(progress) => "Current Progress: ${progress} %";

  static String m25(time) => "Time Remaining: ${time}";

  static String m26(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "addANewUser": MessageLookupByLibrary.simpleMessage("Add a New User"),
    "addUser": MessageLookupByLibrary.simpleMessage("Add User"),
    "added": MessageLookupByLibrary.simpleMessage("Added"),
    "addedAt": MessageLookupByLibrary.simpleMessage("Added At"),
    "advanced": MessageLookupByLibrary.simpleMessage("Advanced"),
    "aggressiveCaching": MessageLookupByLibrary.simpleMessage(
      "Aggressive Caching",
    ),
    "aggressiveCachingDescription": MessageLookupByLibrary.simpleMessage(
      "When enabled, the app will enable more aggressive caching. This includes caching routes that might contain data needing regular updates, such as fetching the progress of all items. In these cases, the last known position will be used unless you specifically open and request a single item. These routes will have a shorter cache duration.",
    ),
    "allDownloads": MessageLookupByLibrary.simpleMessage("All Downloads"),
    "amoledMode": MessageLookupByLibrary.simpleMessage("AMOLED Mode"),
    "anUnknownErrorOccurred": MessageLookupByLibrary.simpleMessage(
      "An unknown error occurred",
    ),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascending"),
    "attribution": MessageLookupByLibrary.simpleMessage("Attribution"),
    "author": MessageLookupByLibrary.simpleMessage("Author"),
    "authors": MessageLookupByLibrary.simpleMessage("Authors"),
    "back": MessageLookupByLibrary.simpleMessage("Back"),
    "boostLoading": MessageLookupByLibrary.simpleMessage("Boost loading"),
    "boostLoadingDescription": MessageLookupByLibrary.simpleMessage(
      "When this feature is enabled, the app effectively bypasses real-time caching. It will always attempt to fetch the latest data from the server while using cached data to load content immediately. Once the updated data is retrieved, it replaces the old cache, ensuring that the most recent data is displayed the next time you load the app. As a result, you will always see the data from one fetch cycle behind the server\'s current data.",
    ),
    "caching": MessageLookupByLibrary.simpleMessage("Caching"),
    "cachingHeader": MessageLookupByLibrary.simpleMessage("Caching"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "carPlayer": MessageLookupByLibrary.simpleMessage("Car Player"),
    "changeLibrary": MessageLookupByLibrary.simpleMessage("Change Library"),
    "chaptersNum": m0,
    "clearCache": MessageLookupByLibrary.simpleMessage("Clear Cache"),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "collapseSeries": MessageLookupByLibrary.simpleMessage("Collapse Series"),
    "collections": MessageLookupByLibrary.simpleMessage("Collections"),
    "connectionError": MessageLookupByLibrary.simpleMessage("Connection error"),
    "consecutiveDays": MessageLookupByLibrary.simpleMessage("Consecutive days"),
    "continueListening": MessageLookupByLibrary.simpleMessage(
      "Continue Listening",
    ),
    "continueSeries": MessageLookupByLibrary.simpleMessage("Continue Series"),
    "copy": MessageLookupByLibrary.simpleMessage("Copy"),
    "copyAnonymous": MessageLookupByLibrary.simpleMessage(
      "Copy (Try removed personal data)",
    ),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Copy logs"),
    "copyLogsDescription": MessageLookupByLibrary.simpleMessage(
      "Important:\nClicking \'Copy\' will transfer all currently displayed logs to your clipboard, including data recorded since the app was started or last cleared. These logs may contain sensitive information such as tokens, usernames, emails, and server URLs. Be cautious about where you paste this information!\\nIf you choose \'Copy and Attempt to Hide Sensitive Information,\' the app will try to mask items like tokens, usernames, emails, and server URLs. However, you are responsible for reviewing the logs to ensure all personal data is fully removed.",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Create"),
    "createBookmark": MessageLookupByLibrary.simpleMessage("Create Bookmark"),
    "createBookmarkTitle": MessageLookupByLibrary.simpleMessage(
      "Create bookmark",
    ),
    "currentDownloads": MessageLookupByLibrary.simpleMessage(
      "Current Downloads",
    ),
    "currentPositionNum": m1,
    "customHeaders": MessageLookupByLibrary.simpleMessage("Custom Headers"),
    "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
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
    "daysListened": MessageLookupByLibrary.simpleMessage("Days listened"),
    "debugLogs": MessageLookupByLibrary.simpleMessage("Debug Logs"),
    "deleteSelected": MessageLookupByLibrary.simpleMessage("Delete Selected"),
    "descending": MessageLookupByLibrary.simpleMessage("Descending"),
    "description": MessageLookupByLibrary.simpleMessage("Description"),
    "deviceInfo": m16,
    "disableSkippingChapters": MessageLookupByLibrary.simpleMessage(
      "Disable skipping chapters",
    ),
    "disableSkippingChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "This will disable the ability to skip chapters from OUTSIDE the application (e.g., via a headset or notification controls). Enable this if you want your headphones to use fast-forward and rewind functions instead of skipping chapters.",
    ),
    "disableVibration": MessageLookupByLibrary.simpleMessage(
      "Disable Vibration",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Disabled"),
    "discover": MessageLookupByLibrary.simpleMessage("Discover"),
    "domainOrIp": MessageLookupByLibrary.simpleMessage("Domain or IP"),
    "downloadComplete": MessageLookupByLibrary.simpleMessage(
      "Download complete",
    ),
    "downloadCompleteBody": m17,
    "downloadErrorDescription": MessageLookupByLibrary.simpleMessage(
      "The file was not downloaded correctly. You can try to delete the data on the device by clicking the button and download it again.",
    ),
    "downloadInfo": MessageLookupByLibrary.simpleMessage("Download Info"),
    "downloadPath": MessageLookupByLibrary.simpleMessage("Download Path"),
    "downloadPathDescription": MessageLookupByLibrary.simpleMessage(
      "The path where downloads are stored. To change this you need to delete all downloads first.",
    ),
    "downloading": MessageLookupByLibrary.simpleMessage("Downloading"),
    "downloadingBody": m18,
    "downloads": MessageLookupByLibrary.simpleMessage("Downloads"),
    "downloadsOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Downloads only via WiFi",
    ),
    "duration": MessageLookupByLibrary.simpleMessage("Duration"),
    "ebookreader": MessageLookupByLibrary.simpleMessage("eBook-Reader"),
    "editQueue": MessageLookupByLibrary.simpleMessage("Edit Queue"),
    "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
      "Please enable notifications to receive download progress updates and be able to download files in the background.",
    ),
    "enableSubdirectory": MessageLookupByLibrary.simpleMessage(
      "Enable Subdirectory",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Enabled"),
    "episodeId": MessageLookupByLibrary.simpleMessage("Episode Id"),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "errorDownloading": MessageLookupByLibrary.simpleMessage(
      "Error downloading",
    ),
    "errorDownloadingBody": m19,
    "errorItemNotFound": MessageLookupByLibrary.simpleMessage(
      "Error: Item not found!",
    ),
    "exit": MessageLookupByLibrary.simpleMessage("Exit"),
    "failed": MessageLookupByLibrary.simpleMessage("Failed"),
    "fastForward": MessageLookupByLibrary.simpleMessage("Fast forward"),
    "fastForwardSeconds": MessageLookupByLibrary.simpleMessage(
      "Fast Forward Seconds",
    ),
    "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Set the number of seconds to skip forward when the fast forward button is pressed.",
    ),
    "feedOpen": MessageLookupByLibrary.simpleMessage("Feed Open"),
    "filename": MessageLookupByLibrary.simpleMessage("Filename"),
    "filepath": MessageLookupByLibrary.simpleMessage("Filepath"),
    "filter": MessageLookupByLibrary.simpleMessage("Filter"),
    "finished": MessageLookupByLibrary.simpleMessage("Finished"),
    "general": MessageLookupByLibrary.simpleMessage("General"),
    "genres": MessageLookupByLibrary.simpleMessage("Genres"),
    "hide": MessageLookupByLibrary.simpleMessage("Hide"),
    "inProgress": MessageLookupByLibrary.simpleMessage("In Progress"),
    "information": MessageLookupByLibrary.simpleMessage("Information"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Invalid credentials",
    ),
    "itemId": MessageLookupByLibrary.simpleMessage("Item Id"),
    "itemLength": m20,
    "itemNotFoundDescription": MessageLookupByLibrary.simpleMessage(
      "The item could not be found. This may be due to a network error or because the item no longer exists but remains cached.",
    ),
    "itemNumChapters": m21,
    "itemPublishedYear": m22,
    "itemType": MessageLookupByLibrary.simpleMessage("Item type"),
    "jumpToLastPosition": MessageLookupByLibrary.simpleMessage(
      "Jump to last position",
    ),
    "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
      "When enabled, the player will jump to the last position when pressing play",
    ),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "languages": MessageLookupByLibrary.simpleMessage("Languages"),
    "largestItems": MessageLookupByLibrary.simpleMessage("Largest Items"),
    "last30Days": MessageLookupByLibrary.simpleMessage("Last 30 days"),
    "last7Days": MessageLookupByLibrary.simpleMessage("Last 7 days"),
    "libraries": MessageLookupByLibrary.simpleMessage("Libraries"),
    "library": MessageLookupByLibrary.simpleMessage("Library"),
    "libraryName": MessageLookupByLibrary.simpleMessage("Library Name"),
    "libraryStats": MessageLookupByLibrary.simpleMessage("Library Stats"),
    "listenAgain": MessageLookupByLibrary.simpleMessage("Listen again"),
    "listeningInTheLastYear": MessageLookupByLibrary.simpleMessage(
      "Listening in the last year",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("Loading…"),
    "lockProgressBar": MessageLookupByLibrary.simpleMessage(
      "Lock Media Progress Bar",
    ),
    "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
      "When enabled, this feature locks the progress bar in the media notification, if supported by the operating system",
    ),
    "logging": MessageLookupByLibrary.simpleMessage("Logging"),
    "login": MessageLookupByLibrary.simpleMessage("LOGIN"),
    "logs": MessageLookupByLibrary.simpleMessage("Logs"),
    "longestItems": MessageLookupByLibrary.simpleMessage("Longest Items"),
    "minimize": MessageLookupByLibrary.simpleMessage("Minimize"),
    "minimizeToTray": MessageLookupByLibrary.simpleMessage("Minimize to tray"),
    "minimizeToTrayDescription": MessageLookupByLibrary.simpleMessage(
      "This option hides the app from the taskbar and moves it to the system tray.",
    ),
    "miscellaneous": MessageLookupByLibrary.simpleMessage("Miscellaneous"),
    "moreOptions": MessageLookupByLibrary.simpleMessage("More options"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "narrators": MessageLookupByLibrary.simpleMessage("Narrators"),
    "newestEpisodes": MessageLookupByLibrary.simpleMessage("Newest Episodes"),
    "nextChapter": MessageLookupByLibrary.simpleMessage("Next Chapter"),
    "noConnection": MessageLookupByLibrary.simpleMessage("No Connection"),
    "noDownloads": MessageLookupByLibrary.simpleMessage("No downloads"),
    "noInternetDescription": MessageLookupByLibrary.simpleMessage(
      "We are having trouble connecting to the server.",
    ),
    "noPath": MessageLookupByLibrary.simpleMessage("No Path"),
    "noSeriesSelected": MessageLookupByLibrary.simpleMessage(
      "No series selected",
    ),
    "notFinished": MessageLookupByLibrary.simpleMessage("Not Finished"),
    "notStarted": MessageLookupByLibrary.simpleMessage("Not Started"),
    "notTriedYet": MessageLookupByLibrary.simpleMessage("Not tried yet"),
    "notificationHeading": MessageLookupByLibrary.simpleMessage(
      "Notifications should be enabled",
    ),
    "numBooksInSeries": m23,
    "numberOfBooks": MessageLookupByLibrary.simpleMessage("Number of Books"),
    "offlineProgress": MessageLookupByLibrary.simpleMessage("Offline Progress"),
    "offlineSavedProgress": MessageLookupByLibrary.simpleMessage(
      "Offline saved progress",
    ),
    "ok": MessageLookupByLibrary.simpleMessage("OK"),
    "openDownloads": MessageLookupByLibrary.simpleMessage("Open Downloads"),
    "openProjectLink": MessageLookupByLibrary.simpleMessage(
      "Audiobookshelf/Server",
    ),
    "ownStats": MessageLookupByLibrary.simpleMessage("Own Stats"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "pause": MessageLookupByLibrary.simpleMessage("Pause"),
    "personalizedLibrary": MessageLookupByLibrary.simpleMessage(
      "Personalized Library",
    ),
    "play": MessageLookupByLibrary.simpleMessage("Play"),
    "playHistory": MessageLookupByLibrary.simpleMessage("Play History"),
    "playNextEpisode": MessageLookupByLibrary.simpleMessage(
      "Play next episode",
    ),
    "playbackSpeed": MessageLookupByLibrary.simpleMessage("Speed"),
    "player": MessageLookupByLibrary.simpleMessage("Player"),
    "playerSettings": MessageLookupByLibrary.simpleMessage("Player Settings"),
    "playlists": MessageLookupByLibrary.simpleMessage("Playlists"),
    "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
      "Please check your internet connection and try again.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "previousChapter": MessageLookupByLibrary.simpleMessage("Previous Chapter"),
    "progress": MessageLookupByLibrary.simpleMessage("Progress"),
    "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
      "Enable this option to display progress in the player and notifications on a per-chapter basis. If disabled, progress will be shown based on the entire item.",
    ),
    "progressNum": m24,
    "publisher": MessageLookupByLibrary.simpleMessage("Publisher"),
    "readLess": MessageLookupByLibrary.simpleMessage("Read less"),
    "readMore": MessageLookupByLibrary.simpleMessage("Read more"),
    "recentSeries": MessageLookupByLibrary.simpleMessage("Recent Series"),
    "recentlyAdded": MessageLookupByLibrary.simpleMessage("Recently Added"),
    "reportAnIssue": MessageLookupByLibrary.simpleMessage("Report an issue"),
    "requiredFields": MessageLookupByLibrary.simpleMessage(
      "Please fill all required fields",
    ),
    "restartRequired": MessageLookupByLibrary.simpleMessage("Restart Required"),
    "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
      "Please restart the app to apply the changes.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "rewind": MessageLookupByLibrary.simpleMessage("Rewind"),
    "rewindSeconds": MessageLookupByLibrary.simpleMessage("Rewind Seconds"),
    "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
      "Set the number of seconds to skip backward when the rewind button is pressed.",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "searchDisabled": MessageLookupByLibrary.simpleMessage("Search disabled"),
    "seek": MessageLookupByLibrary.simpleMessage("Seek"),
    "sequence": MessageLookupByLibrary.simpleMessage("Sequence"),
    "series": MessageLookupByLibrary.simpleMessage("Series"),
    "serverAddress": MessageLookupByLibrary.simpleMessage("Server Address"),
    "serverNotFound": MessageLookupByLibrary.simpleMessage("Server not found"),
    "serverSelection": MessageLookupByLibrary.simpleMessage("Server Selection"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "shakeResetTimer": MessageLookupByLibrary.simpleMessage(
      "Shake to reset sleep timer",
    ),
    "shareOpen": MessageLookupByLibrary.simpleMessage("Share Open"),
    "show": MessageLookupByLibrary.simpleMessage("Show"),
    "showMediaType": MessageLookupByLibrary.simpleMessage("Show Media Type"),
    "showMediaTypeDescription": MessageLookupByLibrary.simpleMessage(
      "Displays the media type badges at the bottom of each item.",
    ),
    "showProgressPerChapters": MessageLookupByLibrary.simpleMessage(
      "Show Progress per Chapter",
    ),
    "signOut": MessageLookupByLibrary.simpleMessage("Sign Out"),
    "size": MessageLookupByLibrary.simpleMessage("Size"),
    "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep Timer"),
    "sort": MessageLookupByLibrary.simpleMessage("Sort"),
    "sortSeriesAsc": MessageLookupByLibrary.simpleMessage(
      "Sort Series in Ascending Order",
    ),
    "stats": MessageLookupByLibrary.simpleMessage("Stats"),
    "stop": MessageLookupByLibrary.simpleMessage("Stop"),
    "stopPlayerUntilSync": MessageLookupByLibrary.simpleMessage(
      "Stop Player Until Sync",
    ),
    "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
      "Enable this option to prevent the player from starting until the most recent playback position has been synced. This ensures that playback resumes from the correct position. If disabled, the playback position may change shortly after starting, potentially leading to data loss. Turning this on helps conserve data usage.",
    ),
    "subdirectory": MessageLookupByLibrary.simpleMessage("Subdirectory"),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "sync": MessageLookupByLibrary.simpleMessage("Sync"),
    "syncInterval": MessageLookupByLibrary.simpleMessage(
      "Sync Interval (seconds)",
    ),
    "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
      "Specifies how often the app should sync with the server. Please restart the app for the changes to take effect.",
    ),
    "syncOnlyViaWifi": MessageLookupByLibrary.simpleMessage(
      "Sync only via WiFi",
    ),
    "tags": MessageLookupByLibrary.simpleMessage("Tags"),
    "timeRemainingNum": m25,
    "timerText": m26,
    "title": MessageLookupByLibrary.simpleMessage("Title"),
    "today": MessageLookupByLibrary.simpleMessage("Today"),
    "topAuthors": MessageLookupByLibrary.simpleMessage("Top Authors"),
    "topGenres": MessageLookupByLibrary.simpleMessage("Top Genres"),
    "totalAudioTracks": MessageLookupByLibrary.simpleMessage(
      "Total Audio Tracks",
    ),
    "totalAuthors": MessageLookupByLibrary.simpleMessage("Total Authors"),
    "totalDuration": MessageLookupByLibrary.simpleMessage("Total Duration"),
    "totalGenres": MessageLookupByLibrary.simpleMessage("Total Genres"),
    "totalItems": MessageLookupByLibrary.simpleMessage("Total Items"),
    "totalSize": MessageLookupByLibrary.simpleMessage("Total size"),
    "totalTimeListened": MessageLookupByLibrary.simpleMessage(
      "Total time listened",
    ),
    "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
    "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "user": MessageLookupByLibrary.simpleMessage("User"),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "viewBookmarks": MessageLookupByLibrary.simpleMessage("View Bookmarks"),
    "viewChapters": MessageLookupByLibrary.simpleMessage("View Chapters"),
    "viewOnGithub": MessageLookupByLibrary.simpleMessage("View on GitHub"),
    "waitTillRedirect": MessageLookupByLibrary.simpleMessage(
      "Please wait for redirect to /init. You are currently not logged in.",
    ),
    "waitingForDownload": MessageLookupByLibrary.simpleMessage(
      "Waiting for download to start",
    ),
    "wrapText": MessageLookupByLibrary.simpleMessage("Wrap Text"),
    "wrapTextDescription": MessageLookupByLibrary.simpleMessage(
      "When enabled, some texts, such as chapters, are wrapped instead of being cut off. This will break some designs.",
    ),
  };
}
