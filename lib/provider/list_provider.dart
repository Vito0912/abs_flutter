import 'package:abs_flutter/api/list/response/collection_response.dart';
import 'package:abs_flutter/api/list/response/playlist_response.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final playlistCollectionProvider =
    ChangeNotifierProvider<PlaylistCollectionNotifier>((ref) {
  return PlaylistCollectionNotifier(ref);
});

class PlaylistCollectionNotifier extends ChangeNotifier {
  final Ref ref;
  PlaylistResponse? _playlists;
  CollectionResponse? _collections;
  Object? _error;
  bool _isLoading = false;

  PlaylistCollectionNotifier(this.ref);

  PlaylistResponse? get playlists => _playlists;
  CollectionResponse? get collections => _collections;
  Object? get error => _error;
  bool get isLoading => _isLoading;

  Future<void> fetchAll() async {
    await _fetchPlaylists();
    await _fetchCollections();
  }

  Future<void> _fetchPlaylists() async {
    _isLoading = true;
    notifyListeners();

    try {
      final ABSApi? api = ref.read(apiProviderNew);
      final Response<PlaylistResponse>? response =
          await api?.getListApi().getUserPlaylist();
      _playlists = response?.data;
      _error = null;
    } catch (e) {
      _error = e;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _fetchCollections() async {
    _isLoading = true;
    notifyListeners();

    try {
      final ABSApi? api = ref.read(apiProviderNew);
      final Response<CollectionResponse>? response =
          await api?.getListApi().getCollections();
      _collections = response?.data;
      _error = null;
    } catch (e) {
      _error = e;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    _playlists = null;
    _collections = null;
    await fetchAll();
  }
}
