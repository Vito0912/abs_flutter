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

  static String m29(device, os, version) =>
      "Device: ${device}\nOS: ${os}\nApp Version: ${version}";

  static String m22(hours, minutes) => "Length: ${hours}:${minutes}";

  static String m23(numChapters) => "Number of Chapters: ${numChapters}";

  static String m24(progress) => "Progress: ${progress}%";

  static String m25(year) => "Published Year: ${year}";

  static String m26(progress) => "Current Progress: ${progress} %";

  static String m27(time) => "Time Remaining: ${time}";

  static String m28(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser": MessageLookupByLibrary.simpleMessage("Add a New User"),
        "addUser": MessageLookupByLibrary.simpleMessage("Add User"),
        "ascending": MessageLookupByLibrary.simpleMessage("Ascending"),
        "attribution": MessageLookupByLibrary.simpleMessage("Attribution"),
        "author": MessageLookupByLibrary.simpleMessage("Author"),
        "authors": MessageLookupByLibrary.simpleMessage("Authors"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Book Cover"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "changeLibrary": MessageLookupByLibrary.simpleMessage("Change Library"),
        "chapters": MessageLookupByLibrary.simpleMessage("Chapters"),
        "chaptersNum": m0,
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Collapse Series"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "When enabled, items in a series will be grouped together in the library view, displaying only a single item to represent the entire series."),
        "consecutiveDays":
            MessageLookupByLibrary.simpleMessage("Consecutive days"),
        "currentDownloads":
            MessageLookupByLibrary.simpleMessage("Current Downloads"),
        "currentPositionNum": m1,
        "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
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
        "daysListened": MessageLookupByLibrary.simpleMessage("Days listened"),
        "deleteSelected":
            MessageLookupByLibrary.simpleMessage("Delete Selected"),
        "descending": MessageLookupByLibrary.simpleMessage("Descending"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "deviceInfo": m29,
        "disabled": MessageLookupByLibrary.simpleMessage("Disabled"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("Domain or IP"),
        "downloadComplete":
            MessageLookupByLibrary.simpleMessage("Download complete"),
        "downloadCompleteBody": MessageLookupByLibrary.simpleMessage(
            "Download of \'{\'displayName\'}\' complete"),
        "downloading": MessageLookupByLibrary.simpleMessage("Downloading"),
        "downloadingBody": MessageLookupByLibrary.simpleMessage(
            "Downloading \'{\'displayName\'}\'"),
        "downloads": MessageLookupByLibrary.simpleMessage("Downloads"),
        "downloadsOnlyViaWifi":
            MessageLookupByLibrary.simpleMessage("Downloads only via WiFi"),
        "duration": MessageLookupByLibrary.simpleMessage("Duration"),
        "editQueue": MessageLookupByLibrary.simpleMessage("Edit Queue"),
        "enableNotificationsDownload": MessageLookupByLibrary.simpleMessage(
            "Please enable notifications to receive download progress updates and be able to download files in the background."),
        "enabled": MessageLookupByLibrary.simpleMessage("Enabled"),
        "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid IP/Domain and port before entering your username and password."),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorDownloading":
            MessageLookupByLibrary.simpleMessage("Error downloading"),
        "errorDownloadingBody": MessageLookupByLibrary.simpleMessage(
            "An error occurred while downloading \'{\'displayName\'}\'"),
        "failed": MessageLookupByLibrary.simpleMessage("Failed"),
        "fastForwardSeconds":
            MessageLookupByLibrary.simpleMessage("Fast Forward Seconds"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Set the number of seconds to skip forward when the fast forward button is pressed."),
        "feedOpen": MessageLookupByLibrary.simpleMessage("Feed Open"),
        "filter": MessageLookupByLibrary.simpleMessage("Filter"),
        "finished": MessageLookupByLibrary.simpleMessage("Finished"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage(
                "If the quick account switcher should be shown"),
        "inProgress": MessageLookupByLibrary.simpleMessage("In Progress"),
        "itemLength": m22,
        "itemNumChapters": m23,
        "itemProgress": m24,
        "itemPublishedYear": m25,
        "jumpToLastPosition":
            MessageLookupByLibrary.simpleMessage("Jump to last position"),
        "jumpToLastPositionDescription": MessageLookupByLibrary.simpleMessage(
            "When enabled, the player will jump to the last position when pressing play"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "languages": MessageLookupByLibrary.simpleMessage("Languages"),
        "last30Days": MessageLookupByLibrary.simpleMessage("Last 30 days"),
        "last7Days": MessageLookupByLibrary.simpleMessage("Last 7 days"),
        "library": MessageLookupByLibrary.simpleMessage("Library"),
        "libraryStats": MessageLookupByLibrary.simpleMessage("Library Stats"),
        "listeningInTheLastYear":
            MessageLookupByLibrary.simpleMessage("Listening in the last year"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading…"),
        "lockProgressBar":
            MessageLookupByLibrary.simpleMessage("Lock Media Progress Bar"),
        "lockProgressBarDescription": MessageLookupByLibrary.simpleMessage(
            "When enabled, this feature locks the progress bar in the media notification, if supported by the operating system"),
        "markItemsFinished":
            MessageLookupByLibrary.simpleMessage("Mark Items Finished"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "Specify the time in seconds before the end of an item at which it should be marked as finished. Setting this to 0 marks the item as finished only when the player reaches the very end. If a positive value is set, the item is marked as finished when the player reaches that time before the end."),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Miscellaneous"),
        "moreOptions": MessageLookupByLibrary.simpleMessage("More options"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "If you want to use multiple server addresses, you can add them later"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "You must enter a valid server address"),
        "narrators": MessageLookupByLibrary.simpleMessage("Narrators"),
        "noConnection": MessageLookupByLibrary.simpleMessage("No Connection"),
        "noDownloads": MessageLookupByLibrary.simpleMessage("No downloads"),
        "noInternetDescription": MessageLookupByLibrary.simpleMessage(
            "We are having trouble connecting to the server."),
        "noItemsFound": MessageLookupByLibrary.simpleMessage("No items found"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Login failed: No user data received"),
        "notFinished": MessageLookupByLibrary.simpleMessage("Not Finished"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Not Started"),
        "notTriedYet": MessageLookupByLibrary.simpleMessage("Not tried yet"),
        "notificationHeading": MessageLookupByLibrary.simpleMessage(
            "Notifications should be enabled"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "openDownloads": MessageLookupByLibrary.simpleMessage("Open Downloads"),
        "openProjectLink":
            MessageLookupByLibrary.simpleMessage("Audiobookshelf/Server"),
        "ownStats": MessageLookupByLibrary.simpleMessage("Own Stats"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "pause": MessageLookupByLibrary.simpleMessage("Pause"),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "playHistory": MessageLookupByLibrary.simpleMessage("Play History"),
        "playNextEpisode":
            MessageLookupByLibrary.simpleMessage("Play next episode"),
        "playbackSpeed": MessageLookupByLibrary.simpleMessage("Speed"),
        "player": MessageLookupByLibrary.simpleMessage("Player"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Player Settings"),
        "pleaseCheckInternet": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection and try again."),
        "port": MessageLookupByLibrary.simpleMessage("Port"),
        "progress": MessageLookupByLibrary.simpleMessage("Progress"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to display progress in the player and notifications on a per-chapter basis. If disabled, progress will be shown based on the entire item."),
        "progressNum": m26,
        "publisher": MessageLookupByLibrary.simpleMessage("Publisher"),
        "readLess": MessageLookupByLibrary.simpleMessage("Read less"),
        "readMore": MessageLookupByLibrary.simpleMessage("Read more"),
        "reportAnIssue":
            MessageLookupByLibrary.simpleMessage("Report an issue"),
        "restartRequired":
            MessageLookupByLibrary.simpleMessage("Restart Required"),
        "restartRequiredDescription": MessageLookupByLibrary.simpleMessage(
            "Please restart the app to apply the changes."),
        "rewindSeconds": MessageLookupByLibrary.simpleMessage("Rewind Seconds"),
        "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Set the number of seconds to skip backward when the rewind button is pressed."),
        "seek": MessageLookupByLibrary.simpleMessage("Seek"),
        "series": MessageLookupByLibrary.simpleMessage("Series"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Enter your server address to continue"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Server Selection"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shakeResetTimer":
            MessageLookupByLibrary.simpleMessage("Shake to reset sleep timer"),
        "shareOpen": MessageLookupByLibrary.simpleMessage("Share Open"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Show Account Switcher"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to add an icon button to the app bar for quick account switching. This will reduce the size of the app bar."),
        "showProgressPerChapters":
            MessageLookupByLibrary.simpleMessage("Show Progress per Chapter"),
        "signOut": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "size": MessageLookupByLibrary.simpleMessage("Size"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep Timer"),
        "sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "stats": MessageLookupByLibrary.simpleMessage("Stats"),
        "stop": MessageLookupByLibrary.simpleMessage("Stop"),
        "stopPlayerUntilSync":
            MessageLookupByLibrary.simpleMessage("Stop Player Until Sync"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to prevent the player from starting until the most recent playback position has been synced. This ensures that playback resumes from the correct position. If disabled, the playback position may change shortly after starting, potentially leading to data loss. Turning this on helps conserve data usage."),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "sync": MessageLookupByLibrary.simpleMessage("Sync"),
        "syncInterval":
            MessageLookupByLibrary.simpleMessage("Sync Interval (seconds)"),
        "syncIntervalDescription": MessageLookupByLibrary.simpleMessage(
            "Specifies how often the app should sync with the server. Please restart the app for the changes to take effect."),
        "syncOnlyViaWifi":
            MessageLookupByLibrary.simpleMessage("Sync only via WiFi"),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "timeRemainingNum": m27,
        "timerText": m28,
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "totalTimeListened":
            MessageLookupByLibrary.simpleMessage("Total time listened"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try Again"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknownTitle": MessageLookupByLibrary.simpleMessage("Unknown Title"),
        "updatedAt": MessageLookupByLibrary.simpleMessage("Updated At"),
        "user": MessageLookupByLibrary.simpleMessage("User"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Username and password cannot be empty"),
        "viewOnGithub": MessageLookupByLibrary.simpleMessage("View on GitHub"),
        "waitingForDownload": MessageLookupByLibrary.simpleMessage(
            "Waiting for download to start"),
        "year": MessageLookupByLibrary.simpleMessage("Year")
      };
}
