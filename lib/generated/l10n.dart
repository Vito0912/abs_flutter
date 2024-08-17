// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Add a New User`
  String get addANewUser {
    return Intl.message(
      'Add a New User',
      name: 'addANewUser',
      desc: '',
      args: [],
    );
  }

  /// `Add User`
  String get addUser {
    return Intl.message(
      'Add User',
      name: 'addUser',
      desc: '',
      args: [],
    );
  }

  /// `Ascending`
  String get ascending {
    return Intl.message(
      'Ascending',
      name: 'ascending',
      desc: '',
      args: [],
    );
  }

  /// `Attribution`
  String get attribution {
    return Intl.message(
      'Attribution',
      name: 'attribution',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get author {
    return Intl.message(
      'Author',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Authors`
  String get authors {
    return Intl.message(
      'Authors',
      name: 'authors',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Book Cover`
  String get bookCover {
    return Intl.message(
      'Book Cover',
      name: 'bookCover',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Change Library`
  String get changeLibrary {
    return Intl.message(
      'Change Library',
      name: 'changeLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Chapters`
  String get chapters {
    return Intl.message(
      'Chapters',
      name: 'chapters',
      desc: '',
      args: [],
    );
  }

  /// `Chapters ({num})`
  String chaptersNum(int num) {
    return Intl.message(
      'Chapters ($num)',
      name: 'chaptersNum',
      desc: '',
      args: [num],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Collapse Series`
  String get collapseSeries {
    return Intl.message(
      'Collapse Series',
      name: 'collapseSeries',
      desc: '',
      args: [],
    );
  }

  /// `When enabled, items in a series will be grouped together in the library view, displaying only a single item to represent the entire series.`
  String get collapseSeriesDescription {
    return Intl.message(
      'When enabled, items in a series will be grouped together in the library view, displaying only a single item to represent the entire series.',
      name: 'collapseSeriesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Consecutive days`
  String get consecutiveDays {
    return Intl.message(
      'Consecutive days',
      name: 'consecutiveDays',
      desc: '',
      args: [],
    );
  }

  /// `Current Downloads`
  String get currentDownloads {
    return Intl.message(
      'Current Downloads',
      name: 'currentDownloads',
      desc: '',
      args: [],
    );
  }

  /// `Current Position: {position}`
  String currentPositionNum(String position) {
    return Intl.message(
      'Current Position: $position',
      name: 'currentPositionNum',
      desc: '',
      args: [position],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one {{count}  day} other {{count} days}}`
  String dateFormatDay(int count) {
    return Intl.plural(
      count,
      one: '$count  day',
      other: '$count days',
      name: 'dateFormatDay',
      desc: '',
      args: [count],
    );
  }

  /// `{days, plural, one {{days} day} other {{days} days}} {hours, plural, one {{hours} hour} other {{hours} hours}}`
  String dateFormatDayHour(int days, int hours) {
    return Intl.message(
      '${Intl.plural(days, one: '$days day', other: '$days days')} ${Intl.plural(hours, one: '$hours hour', other: '$hours hours')}',
      name: 'dateFormatDayHour',
      desc: '',
      args: [days, hours],
    );
  }

  /// `{days, plural, one {{days} day} other {{days} days}} {hours, plural, one {{hours} hour} other {{hours} hours}} {minutes, plural, one {{minutes} minute} other {{minutes} minutes}}`
  String dateFormatDayHourMinute(int days, int hours, int minutes) {
    return Intl.message(
      '${Intl.plural(days, one: '$days day', other: '$days days')} ${Intl.plural(hours, one: '$hours hour', other: '$hours hours')} ${Intl.plural(minutes, one: '$minutes minute', other: '$minutes minutes')}',
      name: 'dateFormatDayHourMinute',
      desc: '',
      args: [days, hours, minutes],
    );
  }

  /// `{days, plural, one {{days} day} other {{days} days}} {hours, plural, one {{hours} hour} other {{hours} hours}} {minutes, plural, one {{minutes} minute} other {{minutes} minutes}} {seconds, plural, one {{seconds} second} other {{seconds} seconds}}`
  String dateFormatDayHourMinuteSecond(
      int days, int hours, int minutes, int seconds) {
    return Intl.message(
      '${Intl.plural(days, one: '$days day', other: '$days days')} ${Intl.plural(hours, one: '$hours hour', other: '$hours hours')} ${Intl.plural(minutes, one: '$minutes minute', other: '$minutes minutes')} ${Intl.plural(seconds, one: '$seconds second', other: '$seconds seconds')}',
      name: 'dateFormatDayHourMinuteSecond',
      desc: '',
      args: [days, hours, minutes, seconds],
    );
  }

  /// `{days}d {hours}h {minutes}m {seconds}s`
  String dateFormatDayHourMinuteSecondShort(
      int days, int hours, int minutes, int seconds) {
    return Intl.message(
      '${days}d ${hours}h ${minutes}m ${seconds}s',
      name: 'dateFormatDayHourMinuteSecondShort',
      desc: '',
      args: [days, hours, minutes, seconds],
    );
  }

  /// `{days}d {hours}h {minutes}m`
  String dateFormatDayHourMinuteShort(int days, int hours, int minutes) {
    return Intl.message(
      '${days}d ${hours}h ${minutes}m',
      name: 'dateFormatDayHourMinuteShort',
      desc: '',
      args: [days, hours, minutes],
    );
  }

  /// `{days}d {hours}h`
  String dateFormatDayHourShort(int days, int hours) {
    return Intl.message(
      '${days}d ${hours}h',
      name: 'dateFormatDayHourShort',
      desc: '',
      args: [days, hours],
    );
  }

  /// `{count}d`
  String dateFormatDayShort(int count) {
    return Intl.message(
      '${count}d',
      name: 'dateFormatDayShort',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, one {{count} hour} other {{count} hours}}`
  String dateFormatHour(int count) {
    return Intl.plural(
      count,
      one: '$count hour',
      other: '$count hours',
      name: 'dateFormatHour',
      desc: '',
      args: [count],
    );
  }

  /// `{hours, plural, one {{hours} hour} other {{hours} hours}} {minutes, plural, one {{minutes} minute} other {{minutes} minutes}}`
  String dateFormatHourMinute(int hours, int minutes) {
    return Intl.message(
      '${Intl.plural(hours, one: '$hours hour', other: '$hours hours')} ${Intl.plural(minutes, one: '$minutes minute', other: '$minutes minutes')}',
      name: 'dateFormatHourMinute',
      desc: '',
      args: [hours, minutes],
    );
  }

  /// `{hours, plural, one {{hours} hour} other {{hours} hours}} {minutes, plural, one {{minutes} minute} other {{minutes} minutes}} {seconds, plural, one {{seconds} second} other {{seconds} seconds}}`
  String dateFormatHourMinuteSecond(int hours, int minutes, int seconds) {
    return Intl.message(
      '${Intl.plural(hours, one: '$hours hour', other: '$hours hours')} ${Intl.plural(minutes, one: '$minutes minute', other: '$minutes minutes')} ${Intl.plural(seconds, one: '$seconds second', other: '$seconds seconds')}',
      name: 'dateFormatHourMinuteSecond',
      desc: '',
      args: [hours, minutes, seconds],
    );
  }

  /// `{hours}h {minutes}m {seconds}s`
  String dateFormatHourMinuteSecondShort(int hours, int minutes, int seconds) {
    return Intl.message(
      '${hours}h ${minutes}m ${seconds}s',
      name: 'dateFormatHourMinuteSecondShort',
      desc: '',
      args: [hours, minutes, seconds],
    );
  }

  /// `{hours}h {minutes}m`
  String dateFormatHourMinuteShort(int hours, int minutes) {
    return Intl.message(
      '${hours}h ${minutes}m',
      name: 'dateFormatHourMinuteShort',
      desc: '',
      args: [hours, minutes],
    );
  }

  /// `{count}h`
  String dateFormatHourShort(int count) {
    return Intl.message(
      '${count}h',
      name: 'dateFormatHourShort',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, one {{count} minute} other {{count} minutes}}`
  String dateFormatMinute(int count) {
    return Intl.plural(
      count,
      one: '$count minute',
      other: '$count minutes',
      name: 'dateFormatMinute',
      desc: '',
      args: [count],
    );
  }

  /// `{minutes, plural, one {{minutes} minute} other {{minutes} minutes}} {seconds, plural, one {{seconds} second} other {{seconds} seconds}}`
  String dateFormatMinuteSecond(int minutes, int seconds) {
    return Intl.message(
      '${Intl.plural(minutes, one: '$minutes minute', other: '$minutes minutes')} ${Intl.plural(seconds, one: '$seconds second', other: '$seconds seconds')}',
      name: 'dateFormatMinuteSecond',
      desc: '',
      args: [minutes, seconds],
    );
  }

  /// `{minutes}m {seconds}s`
  String dateFormatMinuteSecondShort(int minutes, int seconds) {
    return Intl.message(
      '${minutes}m ${seconds}s',
      name: 'dateFormatMinuteSecondShort',
      desc: '',
      args: [minutes, seconds],
    );
  }

  /// `{count}m`
  String dateFormatMinuteShort(int count) {
    return Intl.message(
      '${count}m',
      name: 'dateFormatMinuteShort',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, one {{count}  second} other {{count} seconds}}`
  String dateFormatSecond(int count) {
    return Intl.plural(
      count,
      one: '$count  second',
      other: '$count seconds',
      name: 'dateFormatSecond',
      desc: '',
      args: [count],
    );
  }

  /// `{count}s`
  String dateFormatSecondShort(int count) {
    return Intl.message(
      '${count}s',
      name: 'dateFormatSecondShort',
      desc: '',
      args: [count],
    );
  }

  /// `Days listened`
  String get daysListened {
    return Intl.message(
      'Days listened',
      name: 'daysListened',
      desc: '',
      args: [],
    );
  }

  /// `Delete Selected`
  String get deleteSelected {
    return Intl.message(
      'Delete Selected',
      name: 'deleteSelected',
      desc: '',
      args: [],
    );
  }

  /// `Descending`
  String get descending {
    return Intl.message(
      'Descending',
      name: 'descending',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Device: {device}\nOS: {os}\nApp Version: {version}`
  String deviceInfo(String device, String os, String version) {
    return Intl.message(
      'Device: $device\nOS: $os\nApp Version: $version',
      name: 'deviceInfo',
      desc: '',
      args: [device, os, version],
    );
  }

  /// `Disabled`
  String get disabled {
    return Intl.message(
      'Disabled',
      name: 'disabled',
      desc: '',
      args: [],
    );
  }

  /// `Domain or IP`
  String get domainOrIp {
    return Intl.message(
      'Domain or IP',
      name: 'domainOrIp',
      desc: '',
      args: [],
    );
  }

  /// `Download complete`
  String get downloadComplete {
    return Intl.message(
      'Download complete',
      name: 'downloadComplete',
      desc: '',
      args: [],
    );
  }

  /// `Download of '{'displayName'}' complete`
  String get downloadCompleteBody {
    return Intl.message(
      'Download of \'{\'displayName\'}\' complete',
      name: 'downloadCompleteBody',
      desc: '',
      args: [],
    );
  }

  /// `Downloading`
  String get downloading {
    return Intl.message(
      'Downloading',
      name: 'downloading',
      desc: '',
      args: [],
    );
  }

  /// `Downloading '{'displayName'}'`
  String get downloadingBody {
    return Intl.message(
      'Downloading \'{\'displayName\'}\'',
      name: 'downloadingBody',
      desc: '',
      args: [],
    );
  }

  /// `Downloads`
  String get downloads {
    return Intl.message(
      'Downloads',
      name: 'downloads',
      desc: '',
      args: [],
    );
  }

  /// `Downloads only via WiFi`
  String get downloadsOnlyViaWifi {
    return Intl.message(
      'Downloads only via WiFi',
      name: 'downloadsOnlyViaWifi',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Edit Queue`
  String get editQueue {
    return Intl.message(
      'Edit Queue',
      name: 'editQueue',
      desc: '',
      args: [],
    );
  }

  /// `Please enable notifications to receive download progress updates and be able to download files in the background.`
  String get enableNotificationsDownload {
    return Intl.message(
      'Please enable notifications to receive download progress updates and be able to download files in the background.',
      name: 'enableNotificationsDownload',
      desc: '',
      args: [],
    );
  }

  /// `Enabled`
  String get enabled {
    return Intl.message(
      'Enabled',
      name: 'enabled',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid IP/Domain and port before entering your username and password.`
  String get enterValidUsernameOrPassword {
    return Intl.message(
      'Please enter a valid IP/Domain and port before entering your username and password.',
      name: 'enterValidUsernameOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Error downloading`
  String get errorDownloading {
    return Intl.message(
      'Error downloading',
      name: 'errorDownloading',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while downloading '{'displayName'}'`
  String get errorDownloadingBody {
    return Intl.message(
      'An error occurred while downloading \'{\'displayName\'}\'',
      name: 'errorDownloadingBody',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get failed {
    return Intl.message(
      'Failed',
      name: 'failed',
      desc: '',
      args: [],
    );
  }

  /// `Fast Forward Seconds`
  String get fastForwardSeconds {
    return Intl.message(
      'Fast Forward Seconds',
      name: 'fastForwardSeconds',
      desc: '',
      args: [],
    );
  }

  /// `Set the number of seconds to skip forward when the fast forward button is pressed.`
  String get fastForwardSecondsDescription {
    return Intl.message(
      'Set the number of seconds to skip forward when the fast forward button is pressed.',
      name: 'fastForwardSecondsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Feed Open`
  String get feedOpen {
    return Intl.message(
      'Feed Open',
      name: 'feedOpen',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get finished {
    return Intl.message(
      'Finished',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Genres`
  String get genres {
    return Intl.message(
      'Genres',
      name: 'genres',
      desc: '',
      args: [],
    );
  }

  /// `If the quick account switcher should be shown`
  String get ifTheQuickAccountSwitcherShouldBeShown {
    return Intl.message(
      'If the quick account switcher should be shown',
      name: 'ifTheQuickAccountSwitcherShouldBeShown',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get inProgress {
    return Intl.message(
      'In Progress',
      name: 'inProgress',
      desc: '',
      args: [],
    );
  }

  /// `Length: {length}`
  String itemLength(String length) {
    return Intl.message(
      'Length: $length',
      name: 'itemLength',
      desc: '',
      args: [length],
    );
  }

  /// `Number of Chapters: {numChapters}`
  String itemNumChapters(String numChapters) {
    return Intl.message(
      'Number of Chapters: $numChapters',
      name: 'itemNumChapters',
      desc: '',
      args: [numChapters],
    );
  }

  /// `Progress: {progress}%`
  String itemProgress(String progress) {
    return Intl.message(
      'Progress: $progress%',
      name: 'itemProgress',
      desc: '',
      args: [progress],
    );
  }

  /// `Published Year: {year}`
  String itemPublishedYear(String year) {
    return Intl.message(
      'Published Year: $year',
      name: 'itemPublishedYear',
      desc: '',
      args: [year],
    );
  }

  /// `Jump to last position`
  String get jumpToLastPosition {
    return Intl.message(
      'Jump to last position',
      name: 'jumpToLastPosition',
      desc: '',
      args: [],
    );
  }

  /// `When enabled, the player will jump to the last position when pressing play`
  String get jumpToLastPositionDescription {
    return Intl.message(
      'When enabled, the player will jump to the last position when pressing play',
      name: 'jumpToLastPositionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Last 30 days`
  String get last30Days {
    return Intl.message(
      'Last 30 days',
      name: 'last30Days',
      desc: '',
      args: [],
    );
  }

  /// `Last 7 days`
  String get last7Days {
    return Intl.message(
      'Last 7 days',
      name: 'last7Days',
      desc: '',
      args: [],
    );
  }

  /// `Library`
  String get library {
    return Intl.message(
      'Library',
      name: 'library',
      desc: '',
      args: [],
    );
  }

  /// `Library Stats`
  String get libraryStats {
    return Intl.message(
      'Library Stats',
      name: 'libraryStats',
      desc: '',
      args: [],
    );
  }

  /// `Listening in the last year`
  String get listeningInTheLastYear {
    return Intl.message(
      'Listening in the last year',
      name: 'listeningInTheLastYear',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loading {
    return Intl.message(
      'Loading…',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Lock Media Progress Bar`
  String get lockProgressBar {
    return Intl.message(
      'Lock Media Progress Bar',
      name: 'lockProgressBar',
      desc: '',
      args: [],
    );
  }

  /// `When enabled, this feature locks the progress bar in the media notification, if supported by the operating system`
  String get lockProgressBarDescription {
    return Intl.message(
      'When enabled, this feature locks the progress bar in the media notification, if supported by the operating system',
      name: 'lockProgressBarDescription',
      desc: '',
      args: [],
    );
  }

  /// `Mark Items Finished`
  String get markItemsFinished {
    return Intl.message(
      'Mark Items Finished',
      name: 'markItemsFinished',
      desc: '',
      args: [],
    );
  }

  /// `Specify the time in seconds before the end of an item at which it should be marked as finished. Setting this to 0 marks the item as finished only when the player reaches the very end. If a positive value is set, the item is marked as finished when the player reaches that time before the end.`
  String get markItemsFinishedAfterDescription {
    return Intl.message(
      'Specify the time in seconds before the end of an item at which it should be marked as finished. Setting this to 0 marks the item as finished only when the player reaches the very end. If a positive value is set, the item is marked as finished when the player reaches that time before the end.',
      name: 'markItemsFinishedAfterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Miscellaneous`
  String get miscellaneous {
    return Intl.message(
      'Miscellaneous',
      name: 'miscellaneous',
      desc: '',
      args: [],
    );
  }

  /// `More options`
  String get moreOptions {
    return Intl.message(
      'More options',
      name: 'moreOptions',
      desc: '',
      args: [],
    );
  }

  /// `If you want to use multiple server addresses, you can add them later`
  String get multipleServerAdressess {
    return Intl.message(
      'If you want to use multiple server addresses, you can add them later',
      name: 'multipleServerAdressess',
      desc: '',
      args: [],
    );
  }

  /// `You must enter a valid server address`
  String get mustEnterValidAddress {
    return Intl.message(
      'You must enter a valid server address',
      name: 'mustEnterValidAddress',
      desc: '',
      args: [],
    );
  }

  /// `Narrators`
  String get narrators {
    return Intl.message(
      'Narrators',
      name: 'narrators',
      desc: '',
      args: [],
    );
  }

  /// `No Connection`
  String get noConnection {
    return Intl.message(
      'No Connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `No downloads`
  String get noDownloads {
    return Intl.message(
      'No downloads',
      name: 'noDownloads',
      desc: '',
      args: [],
    );
  }

  /// `We are having trouble connecting to the server.`
  String get noInternetDescription {
    return Intl.message(
      'We are having trouble connecting to the server.',
      name: 'noInternetDescription',
      desc: '',
      args: [],
    );
  }

  /// `No items found`
  String get noItemsFound {
    return Intl.message(
      'No items found',
      name: 'noItemsFound',
      desc: '',
      args: [],
    );
  }

  /// `Login failed: No user data received`
  String get noUserData {
    return Intl.message(
      'Login failed: No user data received',
      name: 'noUserData',
      desc: '',
      args: [],
    );
  }

  /// `Not Finished`
  String get notFinished {
    return Intl.message(
      'Not Finished',
      name: 'notFinished',
      desc: '',
      args: [],
    );
  }

  /// `Not Started`
  String get notStarted {
    return Intl.message(
      'Not Started',
      name: 'notStarted',
      desc: '',
      args: [],
    );
  }

  /// `Not tried yet`
  String get notTriedYet {
    return Intl.message(
      'Not tried yet',
      name: 'notTriedYet',
      desc: '',
      args: [],
    );
  }

  /// `Notifications should be enabled`
  String get notificationHeading {
    return Intl.message(
      'Notifications should be enabled',
      name: 'notificationHeading',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Open Downloads`
  String get openDownloads {
    return Intl.message(
      'Open Downloads',
      name: 'openDownloads',
      desc: '',
      args: [],
    );
  }

  /// `Audiobookshelf/Server`
  String get openProjectLink {
    return Intl.message(
      'Audiobookshelf/Server',
      name: 'openProjectLink',
      desc: '',
      args: [],
    );
  }

  /// `Own Stats`
  String get ownStats {
    return Intl.message(
      'Own Stats',
      name: 'ownStats',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Play History`
  String get playHistory {
    return Intl.message(
      'Play History',
      name: 'playHistory',
      desc: '',
      args: [],
    );
  }

  /// `Play next episode`
  String get playNextEpisode {
    return Intl.message(
      'Play next episode',
      name: 'playNextEpisode',
      desc: '',
      args: [],
    );
  }

  /// `Speed`
  String get playbackSpeed {
    return Intl.message(
      'Speed',
      name: 'playbackSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Player`
  String get player {
    return Intl.message(
      'Player',
      name: 'player',
      desc: '',
      args: [],
    );
  }

  /// `Player Settings`
  String get playerSettings {
    return Intl.message(
      'Player Settings',
      name: 'playerSettings',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again.`
  String get pleaseCheckInternet {
    return Intl.message(
      'Please check your internet connection and try again.',
      name: 'pleaseCheckInternet',
      desc: '',
      args: [],
    );
  }

  /// `Port`
  String get port {
    return Intl.message(
      'Port',
      name: 'port',
      desc: '',
      args: [],
    );
  }

  /// `Progress`
  String get progress {
    return Intl.message(
      'Progress',
      name: 'progress',
      desc: '',
      args: [],
    );
  }

  /// `Enable this option to display progress in the player and notifications on a per-chapter basis. If disabled, progress will be shown based on the entire item.`
  String get progressAsChaptersDescription {
    return Intl.message(
      'Enable this option to display progress in the player and notifications on a per-chapter basis. If disabled, progress will be shown based on the entire item.',
      name: 'progressAsChaptersDescription',
      desc: '',
      args: [],
    );
  }

  /// `Current Progress: {progress} %`
  String progressNum(String progress) {
    return Intl.message(
      'Current Progress: $progress %',
      name: 'progressNum',
      desc: '',
      args: [progress],
    );
  }

  /// `Publisher`
  String get publisher {
    return Intl.message(
      'Publisher',
      name: 'publisher',
      desc: '',
      args: [],
    );
  }

  /// `Read less`
  String get readLess {
    return Intl.message(
      'Read less',
      name: 'readLess',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get readMore {
    return Intl.message(
      'Read more',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Report an issue`
  String get reportAnIssue {
    return Intl.message(
      'Report an issue',
      name: 'reportAnIssue',
      desc: '',
      args: [],
    );
  }

  /// `Restart Required`
  String get restartRequired {
    return Intl.message(
      'Restart Required',
      name: 'restartRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please restart the app to apply the changes.`
  String get restartRequiredDescription {
    return Intl.message(
      'Please restart the app to apply the changes.',
      name: 'restartRequiredDescription',
      desc: '',
      args: [],
    );
  }

  /// `Rewind Seconds`
  String get rewindSeconds {
    return Intl.message(
      'Rewind Seconds',
      name: 'rewindSeconds',
      desc: '',
      args: [],
    );
  }

  /// `Set the number of seconds to skip backward when the rewind button is pressed.`
  String get rewindSecondsDescription {
    return Intl.message(
      'Set the number of seconds to skip backward when the rewind button is pressed.',
      name: 'rewindSecondsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Seek`
  String get seek {
    return Intl.message(
      'Seek',
      name: 'seek',
      desc: '',
      args: [],
    );
  }

  /// `Series`
  String get series {
    return Intl.message(
      'Series',
      name: 'series',
      desc: '',
      args: [],
    );
  }

  /// `Enter your server address to continue`
  String get serverAdressContinue {
    return Intl.message(
      'Enter your server address to continue',
      name: 'serverAdressContinue',
      desc: '',
      args: [],
    );
  }

  /// `Server Selection`
  String get serverSelection {
    return Intl.message(
      'Server Selection',
      name: 'serverSelection',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Shake to reset sleep timer`
  String get shakeResetTimer {
    return Intl.message(
      'Shake to reset sleep timer',
      name: 'shakeResetTimer',
      desc: '',
      args: [],
    );
  }

  /// `Share Open`
  String get shareOpen {
    return Intl.message(
      'Share Open',
      name: 'shareOpen',
      desc: '',
      args: [],
    );
  }

  /// `Show Account Switcher`
  String get showAccountSwitcher {
    return Intl.message(
      'Show Account Switcher',
      name: 'showAccountSwitcher',
      desc: '',
      args: [],
    );
  }

  /// `Enable this option to add an icon button to the app bar for quick account switching. This will reduce the size of the app bar.`
  String get showAccountSwitcherDescription {
    return Intl.message(
      'Enable this option to add an icon button to the app bar for quick account switching. This will reduce the size of the app bar.',
      name: 'showAccountSwitcherDescription',
      desc: '',
      args: [],
    );
  }

  /// `Show Progress per Chapter`
  String get showProgressPerChapters {
    return Intl.message(
      'Show Progress per Chapter',
      name: 'showProgressPerChapters',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Sleep Timer`
  String get sleepTimer {
    return Intl.message(
      'Sleep Timer',
      name: 'sleepTimer',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Stats`
  String get stats {
    return Intl.message(
      'Stats',
      name: 'stats',
      desc: '',
      args: [],
    );
  }

  /// `Stop`
  String get stop {
    return Intl.message(
      'Stop',
      name: 'stop',
      desc: '',
      args: [],
    );
  }

  /// `Stop Player Until Sync`
  String get stopPlayerUntilSync {
    return Intl.message(
      'Stop Player Until Sync',
      name: 'stopPlayerUntilSync',
      desc: '',
      args: [],
    );
  }

  /// `Enable this option to prevent the player from starting until the most recent playback position has been synced. This ensures that playback resumes from the correct position. If disabled, the playback position may change shortly after starting, potentially leading to data loss. Turning this on helps conserve data usage.`
  String get stopPlayerWhileSyncingDescription {
    return Intl.message(
      'Enable this option to prevent the player from starting until the most recent playback position has been synced. This ensures that playback resumes from the correct position. If disabled, the playback position may change shortly after starting, potentially leading to data loss. Turning this on helps conserve data usage.',
      name: 'stopPlayerWhileSyncingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Sync`
  String get sync {
    return Intl.message(
      'Sync',
      name: 'sync',
      desc: '',
      args: [],
    );
  }

  /// `Sync Interval (seconds)`
  String get syncInterval {
    return Intl.message(
      'Sync Interval (seconds)',
      name: 'syncInterval',
      desc: '',
      args: [],
    );
  }

  /// `Specifies how often the app should sync with the server. Please restart the app for the changes to take effect.`
  String get syncIntervalDescription {
    return Intl.message(
      'Specifies how often the app should sync with the server. Please restart the app for the changes to take effect.',
      name: 'syncIntervalDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sync only via WiFi`
  String get syncOnlyViaWifi {
    return Intl.message(
      'Sync only via WiFi',
      name: 'syncOnlyViaWifi',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Time Remaining: {time}`
  String timeRemainingNum(String time) {
    return Intl.message(
      'Time Remaining: $time',
      name: 'timeRemainingNum',
      desc: '',
      args: [time],
    );
  }

  /// `{time} min`
  String timerText(String time) {
    return Intl.message(
      '$time min',
      name: 'timerText',
      desc: '',
      args: [time],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Total time listened`
  String get totalTimeListened {
    return Intl.message(
      'Total time listened',
      name: 'totalTimeListened',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Title`
  String get unknownTitle {
    return Intl.message(
      'Unknown Title',
      name: 'unknownTitle',
      desc: '',
      args: [],
    );
  }

  /// `Updated At`
  String get updatedAt {
    return Intl.message(
      'Updated At',
      name: 'updatedAt',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Username and password cannot be empty`
  String get usernameOrPasswordNotEmpty {
    return Intl.message(
      'Username and password cannot be empty',
      name: 'usernameOrPasswordNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `View on GitHub`
  String get viewOnGithub {
    return Intl.message(
      'View on GitHub',
      name: 'viewOnGithub',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for download to start`
  String get waitingForDownload {
    return Intl.message(
      'Waiting for download to start',
      name: 'waitingForDownload',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Libraries`
  String get libraries {
    return Intl.message(
      'Libraries',
      name: 'libraries',
      desc: '',
      args: [],
    );
  }

  /// `All Downloads`
  String get allDownloads {
    return Intl.message(
      'All Downloads',
      name: 'allDownloads',
      desc: '',
      args: [],
    );
  }

  /// `Offline saved progress`
  String get offlineSavedProgress {
    return Intl.message(
      'Offline saved progress',
      name: 'offlineSavedProgress',
      desc: '',
      args: [],
    );
  }

  /// `Continue Listening`
  String get continueListening {
    return Intl.message(
      'Continue Listening',
      name: 'continueListening',
      desc: '',
      args: [],
    );
  }

  /// `Personalized Library`
  String get personalizedLibrary {
    return Intl.message(
      'Personalized Library',
      name: 'personalizedLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Recently Added`
  String get recentlyAdded {
    return Intl.message(
      'Recently Added',
      name: 'recentlyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Recent Series`
  String get recentSeries {
    return Intl.message(
      'Recent Series',
      name: 'recentSeries',
      desc: '',
      args: [],
    );
  }

  /// `Listen again`
  String get listenAgain {
    return Intl.message(
      'Listen again',
      name: 'listenAgain',
      desc: '',
      args: [],
    );
  }

  /// `Offline Progress`
  String get offlineProgress {
    return Intl.message(
      'Offline Progress',
      name: 'offlineProgress',
      desc: '',
      args: [],
    );
  }

  /// `Newest Episodes`
  String get newestEpisodes {
    return Intl.message(
      'Newest Episodes',
      name: 'newestEpisodes',
      desc: '',
      args: [],
    );
  }

  /// `Sequence`
  String get sequence {
    return Intl.message(
      'Sequence',
      name: 'sequence',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'nb', countryCode: 'NO'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
