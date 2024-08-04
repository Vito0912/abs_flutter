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

  static String m0(hours, minutes) => "Length: ${hours}:${minutes}";

  static String m1(numChapters) => "Number of Chapters: ${numChapters}";

  static String m2(progress) => "Progress: ${progress}%";

  static String m3(year) => "Published Year: ${year}";

  static String m4(time) => "${time} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addANewUser": MessageLookupByLibrary.simpleMessage("Add a New User"),
        "addUser": MessageLookupByLibrary.simpleMessage("Add User"),
        "attribution": MessageLookupByLibrary.simpleMessage("Attribution"),
        "authors": MessageLookupByLibrary.simpleMessage("Authors"),
        "bookCover": MessageLookupByLibrary.simpleMessage("Book Cover"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "collapseSeries":
            MessageLookupByLibrary.simpleMessage("Collapse Series"),
        "collapseSeriesDescription": MessageLookupByLibrary.simpleMessage(
            "When enabled, items in a series will be grouped together in the library view, displaying only a single item to represent the entire series."),
        "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "disabled": MessageLookupByLibrary.simpleMessage("Disabled"),
        "domainOrIp": MessageLookupByLibrary.simpleMessage("Domain or IP"),
        "enabled": MessageLookupByLibrary.simpleMessage("Enabled"),
        "enterValidUsernameOrPassword": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid IP/Domain and port before entering your username and password."),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "fastForwardSeconds":
            MessageLookupByLibrary.simpleMessage("Fast Forward Seconds"),
        "fastForwardSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Set the number of seconds to skip forward when the fast forward button is pressed."),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "genres": MessageLookupByLibrary.simpleMessage("Genres"),
        "ifTheQuickAccountSwitcherShouldBeShown":
            MessageLookupByLibrary.simpleMessage(
                "If the quick account switcher should be shown"),
        "itemLength": m0,
        "itemNumChapters": m1,
        "itemProgress": m2,
        "itemPublishedYear": m3,
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "markItemsFinished":
            MessageLookupByLibrary.simpleMessage("Mark Items Finished"),
        "markItemsFinishedAfterDescription": MessageLookupByLibrary.simpleMessage(
            "Specify the time in seconds before the end of an item at which it should be marked as finished. Setting this to 0 marks the item as finished only when the player reaches the very end. If a positive value is set, the item is marked as finished when the player reaches that time before the end."),
        "miscellaneous": MessageLookupByLibrary.simpleMessage("Miscellaneous"),
        "multipleServerAdressess": MessageLookupByLibrary.simpleMessage(
            "If you want to use multiple server addresses, you can add them later"),
        "mustEnterValidAddress": MessageLookupByLibrary.simpleMessage(
            "You must enter a valid server address"),
        "noConnection": MessageLookupByLibrary.simpleMessage("No Connection"),
        "noUserData": MessageLookupByLibrary.simpleMessage(
            "Login failed: No user data received"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "playbackSpeed": MessageLookupByLibrary.simpleMessage("Speed"),
        "player": MessageLookupByLibrary.simpleMessage("Player"),
        "playerSettings":
            MessageLookupByLibrary.simpleMessage("Player Settings"),
        "port": MessageLookupByLibrary.simpleMessage("Port"),
        "progressAsChaptersDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to display progress in the player and notifications on a per-chapter basis. If disabled, progress will be shown based on the entire item."),
        "readLess": MessageLookupByLibrary.simpleMessage("Read less"),
        "readMore": MessageLookupByLibrary.simpleMessage("Read more"),
        "rewindSeconds": MessageLookupByLibrary.simpleMessage("Rewind Seconds"),
        "rewindSecondsDescription": MessageLookupByLibrary.simpleMessage(
            "Set the number of seconds to skip backward when the rewind button is pressed."),
        "series": MessageLookupByLibrary.simpleMessage("Series"),
        "serverAdressContinue": MessageLookupByLibrary.simpleMessage(
            "Enter your server address to continue"),
        "serverSelection":
            MessageLookupByLibrary.simpleMessage("Server Selection"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "showAccountSwitcher":
            MessageLookupByLibrary.simpleMessage("Show Account Switcher"),
        "showAccountSwitcherDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to add an icon button to the app bar for quick account switching. This will reduce the size of the app bar."),
        "showProgressPerChapters":
            MessageLookupByLibrary.simpleMessage("Show Progress per Chapter"),
        "signOut": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "sleepTimer": MessageLookupByLibrary.simpleMessage("Sleep Timer"),
        "stopPlayerUntilSync":
            MessageLookupByLibrary.simpleMessage("Stop Player Until Sync"),
        "stopPlayerWhileSyncingDescription": MessageLookupByLibrary.simpleMessage(
            "Enable this option to prevent the player from starting until the most recent playback position has been synced. This ensures that playback resumes from the correct position. If disabled, the playback position may change shortly after starting, potentially leading to data loss. Turning this on helps conserve data usage."),
        "tags": MessageLookupByLibrary.simpleMessage("Tags"),
        "timerText": m4,
        "user": MessageLookupByLibrary.simpleMessage("User"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameOrPasswordNotEmpty": MessageLookupByLibrary.simpleMessage(
            "Username and password cannot be empty")
      };
}
