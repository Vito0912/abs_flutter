//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:abs_api/src/date_serializer.dart';
import 'package:abs_api/src/model/date.dart';

import 'package:abs_api/src/model/audio_file.dart';
import 'package:abs_api/src/model/audio_meta_tags.dart';
import 'package:abs_api/src/model/audio_track.dart';
import 'package:abs_api/src/model/author.dart';
import 'package:abs_api/src/model/author_expanded.dart';
import 'package:abs_api/src/model/author_minified.dart';
import 'package:abs_api/src/model/author_series.dart';
import 'package:abs_api/src/model/book.dart';
import 'package:abs_api/src/model/book_base.dart';
import 'package:abs_api/src/model/book_chapter.dart';
import 'package:abs_api/src/model/book_expanded.dart';
import 'package:abs_api/src/model/book_metadata.dart';
import 'package:abs_api/src/model/book_metadata_base.dart';
import 'package:abs_api/src/model/book_metadata_expanded.dart';
import 'package:abs_api/src/model/book_metadata_minified.dart';
import 'package:abs_api/src/model/book_minified.dart';
import 'package:abs_api/src/model/bookmark.dart';
import 'package:abs_api/src/model/bulk_create_podcasts_from_opml_feed_urls_request.dart';
import 'package:abs_api/src/model/check_new_episodes200_response.dart';
import 'package:abs_api/src/model/configure_notification_settings_request.dart';
import 'package:abs_api/src/model/create_library_request.dart';
import 'package:abs_api/src/model/create_notification200_response.dart';
import 'package:abs_api/src/model/create_notification_request.dart';
import 'package:abs_api/src/model/device_info.dart';
import 'package:abs_api/src/model/ebook_file.dart';
import 'package:abs_api/src/model/email_settings.dart';
import 'package:abs_api/src/model/ereader_device_object.dart';
import 'package:abs_api/src/model/file_metadata.dart';
import 'package:abs_api/src/model/folder.dart';
import 'package:abs_api/src/model/get_author_image_by_id_request.dart';
import 'package:abs_api/src/model/get_episode_downloads200_response.dart';
import 'package:abs_api/src/model/get_feeds_from_opml_text200_response.dart';
import 'package:abs_api/src/model/get_feeds_from_opml_text200_response_feeds_inner.dart';
import 'package:abs_api/src/model/get_feeds_from_opml_text_request.dart';
import 'package:abs_api/src/model/get_libraries200_response.dart';
import 'package:abs_api/src/model/get_library_authors200_response.dart';
import 'package:abs_api/src/model/get_library_item200_response.dart';
import 'package:abs_api/src/model/get_library_items200_response.dart';
import 'package:abs_api/src/model/get_library_series200_response.dart';
import 'package:abs_api/src/model/get_listening_sessions200_response.dart';
import 'package:abs_api/src/model/get_listening_stats200_response.dart';
import 'package:abs_api/src/model/get_listening_stats200_response_items_value.dart';
import 'package:abs_api/src/model/get_listening_stats200_response_items_value_media_metadata.dart';
import 'package:abs_api/src/model/get_notifications200_response.dart';
import 'package:abs_api/src/model/get_notifications200_response_data.dart';
import 'package:abs_api/src/model/get_podcast_feed200_response.dart';
import 'package:abs_api/src/model/get_podcast_feed_request.dart';
import 'package:abs_api/src/model/get_series_request.dart';
import 'package:abs_api/src/model/get_sessions200_response.dart';
import 'package:abs_api/src/model/library_file.dart';
import 'package:abs_api/src/model/library_item.dart';
import 'package:abs_api/src/model/library_item_base.dart';
import 'package:abs_api/src/model/library_item_expanded.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:abs_api/src/model/library_item_search_result.dart';
import 'package:abs_api/src/model/library_item_sequence.dart';
import 'package:abs_api/src/model/library_settings.dart';
import 'package:abs_api/src/model/login200_response.dart';
import 'package:abs_api/src/model/login_request.dart';
import 'package:abs_api/src/model/logout200_response.dart';
import 'package:abs_api/src/model/logout_request.dart';
import 'package:abs_api/src/model/match_author_by_id200_response.dart';
import 'package:abs_api/src/model/match_author_by_id_request.dart';
import 'package:abs_api/src/model/media_minified.dart';
import 'package:abs_api/src/model/media_progress.dart';
import 'package:abs_api/src/model/media_progress_podcast_episode.dart';
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/model_library.dart';
import 'package:abs_api/src/model/notification.dart';
import 'package:abs_api/src/model/notification_event.dart';
import 'package:abs_api/src/model/notification_event_defaults.dart';
import 'package:abs_api/src/model/notification_event_name.dart';
import 'package:abs_api/src/model/notification_settings.dart';
import 'package:abs_api/src/model/notification_type.dart';
import 'package:abs_api/src/model/permissions.dart';
import 'package:abs_api/src/model/play_library_item_request.dart';
import 'package:abs_api/src/model/playback_session.dart';
import 'package:abs_api/src/model/playback_session_base.dart';
import 'package:abs_api/src/model/playback_session_book.dart';
import 'package:abs_api/src/model/playback_session_book_expanded.dart';
import 'package:abs_api/src/model/playback_session_expanded.dart';
import 'package:abs_api/src/model/playback_session_podcast.dart';
import 'package:abs_api/src/model/playback_session_podcast_expanded.dart';
import 'package:abs_api/src/model/podcast.dart';
import 'package:abs_api/src/model/podcast_episode.dart';
import 'package:abs_api/src/model/podcast_metadata.dart';
import 'package:abs_api/src/model/quick_match_episodes200_response.dart';
import 'package:abs_api/src/model/search_library200_response.dart';
import 'package:abs_api/src/model/send_e_book_to_device_request.dart';
import 'package:abs_api/src/model/series.dart';
import 'package:abs_api/src/model/series_books.dart';
import 'package:abs_api/src/model/series_progress.dart';
import 'package:abs_api/src/model/series_sequence.dart';
import 'package:abs_api/src/model/series_with_progress_and_rss.dart';
import 'package:abs_api/src/model/series_with_progress_and_rss_one_of.dart';
import 'package:abs_api/src/model/sync_open_session_request.dart';
import 'package:abs_api/src/model/update_author_by_id200_response.dart';
import 'package:abs_api/src/model/update_author_by_id_request.dart';
import 'package:abs_api/src/model/update_e_reader_devices_request.dart';
import 'package:abs_api/src/model/update_library_by_id_request.dart';
import 'package:abs_api/src/model/update_notification_request.dart';
import 'package:abs_api/src/model/update_series_request.dart';
import 'package:abs_api/src/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  AudioFile,
  AudioMetaTags,
  AudioTrack,
  Author,
  $Author,
  AuthorExpanded,
  AuthorMinified,
  AuthorSeries,
  Book,
  BookBase,
  $BookBase,
  BookChapter,
  BookExpanded,
  BookMetadata,
  BookMetadataBase,
  $BookMetadataBase,
  BookMetadataExpanded,
  BookMetadataMinified,
  BookMinified,
  Bookmark,
  BulkCreatePodcastsFromOpmlFeedUrlsRequest,
  CheckNewEpisodes200Response,
  ConfigureNotificationSettingsRequest,
  CreateLibraryRequest,
  CreateNotification200Response,
  CreateNotificationRequest,
  DeviceInfo,
  EbookFile,
  EmailSettings,
  EreaderDeviceObject,
  FileMetadata,
  Folder,
  GetAuthorImageByIdRequest,
  GetEpisodeDownloads200Response,
  GetFeedsFromOPMLText200Response,
  GetFeedsFromOPMLText200ResponseFeedsInner,
  GetFeedsFromOPMLTextRequest,
  GetLibraries200Response,
  GetLibraryAuthors200Response,
  GetLibraryItem200Response,
  GetLibraryItems200Response,
  GetLibrarySeries200Response,
  GetListeningSessions200Response,
  GetListeningStats200Response,
  GetListeningStats200ResponseItemsValue,
  GetListeningStats200ResponseItemsValueMediaMetadata,
  GetNotifications200Response,
  GetNotifications200ResponseData,
  GetPodcastFeed200Response,
  GetPodcastFeedRequest,
  GetSeriesRequest,
  GetSessions200Response,
  LibraryFile,
  LibraryItem,
  LibraryItemBase,
  $LibraryItemBase,
  LibraryItemExpanded,
  LibraryItemMinified,
  LibraryItemSearchResult,
  LibraryItemSequence,
  LibrarySettings,
  Login200Response,
  LoginRequest,
  Logout200Response,
  LogoutRequest,
  MatchAuthorById200Response,
  MatchAuthorByIdRequest,
  MediaMinified,
  MediaProgress,
  MediaProgressPodcastEpisode,
  MediaType,
  ModelLibrary,
  Notification,
  NotificationEvent,
  NotificationEventDefaults,
  NotificationEventName,
  NotificationSettings,
  NotificationType,
  Permissions,
  PlayLibraryItemRequest,
  PlaybackSession,
  PlaybackSessionBase,
  $PlaybackSessionBase,
  PlaybackSessionBook,
  $PlaybackSessionBook,
  PlaybackSessionBookExpanded,
  PlaybackSessionExpanded,
  PlaybackSessionPodcast,
  $PlaybackSessionPodcast,
  PlaybackSessionPodcastExpanded,
  Podcast,
  PodcastEpisode,
  PodcastMetadata,
  QuickMatchEpisodes200Response,
  SearchLibrary200Response,
  SendEBookToDeviceRequest,
  Series,
  SeriesBooks,
  SeriesProgress,
  SeriesSequence,
  SeriesWithProgressAndRSS,
  SeriesWithProgressAndRSSOneOf,
  SyncOpenSessionRequest,
  UpdateAuthorById200Response,
  UpdateAuthorByIdRequest,
  UpdateEReaderDevicesRequest,
  UpdateLibraryByIdRequest,
  UpdateNotificationRequest,
  UpdateSeriesRequest,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(PlaybackSession)]),
        () => ListBuilder<PlaybackSession>(),
      )
      ..add(Author.serializer)
      ..add(BookBase.serializer)
      ..add(BookMetadataBase.serializer)
      ..add(LibraryItemBase.serializer)
      ..add(PlaybackSessionBase.serializer)
      ..add(PlaybackSessionBook.serializer)
      ..add(PlaybackSessionPodcast.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
