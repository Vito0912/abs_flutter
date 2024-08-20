## 0.2.1

* [fix]: `currentIndex` is now always getting reported correctly in events ([#15](https://github.com/bdlukaa/just_audio_windows/issues/15), [#16](https://github.com/bdlukaa/just_audio_windows/issues/16))
* [fix]: Support multi-byte language paths ([#34](https://github.com/bdlukaa/just_audio_windows/pull/34))

## [0.2.0]

* [new]: Support playlists ([#8](https://github.com/bdlukaa/just_audio_windows/pull/8), [#9](https://github.com/bdlukaa/just_audio_windows/pull/9))
* [fix]: Fixed build in VS17.3 ([#10](https://github.com/bdlukaa/just_audio_windows/pull/10))

## 0.1.0

* [fix]: `seek` no longer throws error
* [new]: Added support for data event stream
* [new]: Support for looping over a single track

## 0.0.1

* Initial Base Implementation
  * `init`, `disposePlayer`, `disposeAllPlayers`
  * `load`, `play`, `pause`, `setVolume`, `setSpeed`, `setPitch`, `seek`
  * `dispose`
  * Error reporting