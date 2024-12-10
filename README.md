# Buchable
<a href="https://hosted.weblate.org/engage/audiobookshelf-flutter-client/">
<img src="https://hosted.weblate.org/widget/audiobookshelf-flutter-client/app/svg-badge.svg" alt="Translation status" />
</a>

For Android, iOS*<sup>1,2</sup>, macOS*<sup>1,2</sup>, Windows, Linux, and Web*<sup>3</sup>

<a href="https://apps.microsoft.com/detail/9n3m43ss4889?mode=direct">
	<img src="https://get.microsoft.com/images/en-us%20dark.svg" style='height: 70px'/>
</a>
<a href='https://play.google.com/store/apps/details?id=de.vito.absapp.abs_flutter'>
  <img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' style='height: 80px'/>
</a>

“Buch” (German for "book") + "able" = "Buchable"

### Demo

To explore the app, you can either log in to your private server or use the official ABS demo server. The demo server is an nice way to experience the app, especially when testing the web version of Buchable.

**Demo URL:** [https://audiobooks.dev/](https://audiobooks.dev/)  
**Login Credentials:**  
- **Username:** `demo`  
- **Password:** `demo`  

*Note:* Demo user accounts are automatically deleted after 48 hours.


## Important
> If you're interested in trying out the Android version of this app, please reach out to me via [email](mailto:fito0912@duck.com) (fito0912@duck.com). I'll add you to the beta testing group on the Google Play Store. It is currently private. Your participation is crucial, as I need testers to be able to create a public beta.
>
> Alternatively, you can download the APK from the release section. However, joining the beta would greatly assist in bringing the app to the Play Store sooner.

This is a third-party app for the Audiobookshelf server, designed to maintain a single codebase for multiple OS platforms.\
The app is written in Dart and utilizes the Flutter framework.\
While the current version may not include all the features of the first-party app, it is a work in progress with ongoing development.

*<sup>1</sup> iOS functionality requires additional work. Since I do not own a Mac, I cannot fully test it. However, I have only used libraries compatible with iOS.\
*<sup>2</sup> The Audiobookshelf server must be accessible via SSL, so you need a domain with a valid SSL certificate.\
*<sup>3</sup> The web version requires the server to allow CORS.

## Translation
For more details and to contribute, please refer to [TRANSLATION.md](md/TRANSLATION.md).  
All translations are managed through [Weblate Hosted](https://hosted.weblate.org/projects/audiobookshelf-flutter-client/app/).

A big thank you to [Weblate](https://weblate.org) for providing their services!

<a href="https://hosted.weblate.org/engage/audiobookshelf-flutter-client/">
<img src="https://hosted.weblate.org/widget/audiobookshelf-flutter-client/app/multi-blue.svg" alt="Translation status" />
</a>

Preview

<img src="/images/introduction.png" alt="Download View" style="width: 600px">

## Platform Matrix

| Platform Matrix                       | Android |      iOS       | Windows | Linux |      Web       |
|---------------------------------------|:-------:|:--------------:|:-------:|:-----:|:--------------:|
| Playing Audio                         |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| Playing Podcasts                      |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| Reading eBooks*<sup>5</sup>           |    🟨    |       🟨        |    🟨    |   🟨   |       🟨        |
| Up-to-date Sync                       |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| Advanced Player Controls*<sup>1</sup> |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| Car Support*<sup>2</sup>              |   🟨    |       🟨       |    ❌    |   ❌   |       ❌        |
| Car Mode (Big Buttons for Car)        |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| No Extra Setup Needed                 |    ✅    | ❌*<sup>6</sup> |    ✅    |   ✅   | ❌*<sup>3</sup> |
| Media Notifications                   |    ✅    |       ✅        |    ❌    |   ✅   |       ❌        |
| Caching                               |    ✅    |       ✅        |    ✅    |   ✅   |       ✅        |
| Offline Support                       |    ✅    |       ✅        |    ✅    |   ✅   | ❌*<sup>5</sup> |
| Socket Support*<sup>5</sup>           |    ❌    |       ❌        |    ❌    |   ❌   |       ❌        |

> *<sup>1</sup> Chapter support, sleep timer, playback speed, custom skip time, and more\
> *<sup>2</sup> Android Auto and Apple CarPlay are not supported as standalone apps, but media controls are supported\
> *<sup>3</sup> You need to allow CORS on the server so the web app can access it\
> *<sup>5</sup> Will be added in the future\
> *<sup>6</sup> A secure SSL connection is needed.

iOS requires some additional setup to configure the necessary plugins. Unfortunately, I’m unable to test, build, or fix errors on iOS since I don’t have access to a Mac. However, I’ve only used packages and libraries that are compatible with Apple, so once the setup is complete, there shouldn't be any issues building the app for iOS.

As for Linux, the app hasn’t been tested on that platform yet.

## Features

#### Currently worked on

🎙️ **Widgets** - Widgets!

### Summary

🔀 **Fast Account Switching** - Switch between multiple Audiobookshelf accounts with different servers in just two clicks.\
🚀 **Advanced Caching** - Caches items, libraries and more to save a ton of mobile data\
📄 **Pagination** - Load more items when you reach the end of lists to save data.\
📈 **Does Not Rely on a Socket** - Use the app even with an occasionally interrupted connection.\
📅 **Up-to-date Sync** - The app stays synchronized with the server when connected to the internet.\
🔁 **Queue Support** - Add multiple items to the queue and play them in order. Even works offline.\
🔊 **Advanced Player Controls** - Skip chapters, set a sleep timer, adjust playback speed, and more.\
📴 **Offline Support** - Listen to your audiobooks even when you're offline. Sync offline up to one year\
🔎 **Fast Search** - Search for audiobooks. Preserves query while switching library or user.\
📖 **History** - Track where you paused, skipped, and resumed.\
📊 **Stats** - View your listening habits over the past 365 days, including total time, frequency, and recent activity.\
   **HTML Support** - Converts HTML in descriptions and makes links clickable.\
🚀 **Fast Loading** - Option to enable fast loading that loads even the biggest libraries in a fraction of time.\
🚗 **Car Player Mode (Big Buttons)** - Big buttons for easy control while driving.\
⚙️ **Many Settings** - Customize the app to your liking. Head to [Settings](md/SETTINGS.md) to learn more.\
   **Tray Icon** - Control the app from the tray icon. (Desktops)\

### Additional to First-party App

> The features listed below have been requested for the first-party app.\
> If no specific platform is mentioned, the feature is available on all platforms.

🚀 **Fast Account Switching**\
📅 **Up-to-date Sync**\
🔁 **Queue Support**\
**HTML Support**\
🚀 **Advanced Caching**\
🚗 **Car Player Mode (Big Buttons)**\
**Tray Icon**

### Missing from First-party App

> The features listed below are available in the first-party app but are not yet included in this app.\
> The goal is to eventually include all first-party features.

🚗 **Car Support** - Currently limited to media controls.\
📖 **Reading eBooks**

### Attribution
> The following attributions highlight contributions that were essential to this project.\
> For a complete list of libraries used, please refer to the [pubspec.yaml](pubspec.yaml) file.\
> The libraries mentioned below had a particularly significant impact on the development of the app.

| Library                                                                     | License      | Publisher                                                                  | Repository                                                   |
|-----------------------------------------------------------------------------|--------------|----------------------------------------------------------------------------|--------------------------------------------------------------|
| [openapi_generator](https://pub.dev/packages/openapi_generator) (flutter)   | BSD-3-Clause | [devappliance.com](https://pub.dev/publishers/devappliance.com/packages)   | [GitHub](https://github.com/gibahjoe/openapi-generator-dart) |
| OpenAPI Generator                                                           | Apache-2.0   | -                                                                          | [GitHub](https://github.com/OpenAPITools/openapi-generator)  |
| [Riverpod](https://pub.dev/packages/flutter_riverpod)                       | MIT          | [dash-overflow.net](https://pub.dev/publishers/dash-overflow.net/packages) | [GitHub](https://github.com/rrousselGit/riverpod)            |
| [Freezed](https://pub.dev/packages/freezed)                                 | MIT          | [dash-overflow.net](https://pub.dev/publishers/dash-overflow.net/packages) | [GitHub](https://github.com/rrousselGit/freezed)             |

> Thanks to everybody contributing to [Audiobookshelf](https://github.com/advplyr/audiobookshelf) to make this software so awesome.
> Thanks to everybody who contributed to [Audiobookshelf-App](https://github.com/advplyr/audiobookshelf-app) to make this software so awesome.
> Many features of this app are based on the first-party app.

## Images

#### Guided Login
> The login screen allows users to easily toggle between `https://` and `http://`. 
> 
> This ensures that you can enter your server address correctly and avoid any connection issues.

<img src="/images/login.png" alt="Guided Login Screen" style="width: 300px">

#### Rich Player
> The player interface is packed with features designed to enhance your listening experience. 
> 
> It includes a history tracker so you can easily resume from where you left off, speed control to adjust playback to your preference, and volume control for a seamless audio experience. 
> 
> Additionally, the chapter view allows you to navigate through your audiobook easily, and the sleep timer can be reset simply by shaking your device.

<img src="/images/player.png" alt="Rich Player Interface" style="width: 300px">

#### Listen Offline!
> With offline listening, you can enjoy your audiobooks even when you’re off the grid, whether traveling, commuting, or in an area with limited connectivity. 
> 
> The app provides clear indicators of what has been downloaded and what remains to be synced, ensuring you never lose track of your progress. 
> 
> Once connected to the internet, your offline progress will automatically sync with the server.

<img src="/images/download_view.png" alt="Download View" style="width: 300px">
<img src="/images/download_see.png" alt="Downloaded Files View" style="width: 300px">
<img src="/images/download.png" alt="Download Button" style="width: 300px">

#### Rich Settings
> The settings section offers a comprehensive range of customization options, allowing you to tailor the app to your specific needs. 
>
> From enabling dark mode to setting download preferences, you have full control over your listening experience.
>
> Jump to [Settings](md/SETTINGS.md)

<img src="/images/settings.png" alt="Settings Screen" style="width: 300px">

#### History
> The history feature keeps a detailed log of your listening activities, including when you paused, skipped, or resumed playback. 
> 
> This makes it easy to track your progress and revisit previous sections of your audiobooks.

<img src="/images/history.png" alt="Listening History" style="width: 300px">

#### Item View
> The item view screen provides details about each audiobook. 
> 
> Here you can access the book's description, which supports clickable HTML links, allowing for easy navigation to related content. 
> 
> You can also view important metadata such as the current position, overall progress, remaining time, and more. 
> 
> Additionally, the item view allows you to filter content by author, narrator, or genre, helping you find related titles quickly.

<img src="/images/item_view.png" alt="Book Item View" style="width: 300px">

#### Detailed Stats View
> The stats view gives you a detailed breakdown of your listening over time. 
> 
> You can track how much time you've spent listening each day, view your progress over the last seven or thirty days, and analyze your overall listening trends.

<img src="/images/stats_1.png" alt="Listening Stats" style="width: 300px">
<img src="/images/stats_2.png" alt="Additional Listening Stats" style="width: 300px">

#### Logs
<img src="/images/logs.png" alt="Logs" style="width: 300px">

### Known Bugs

#### Sleep Timer

- If you select the sleep timer to stop at the end of the chapter, it will stop at the actual time. Skipping the chapter will not adjust the timer.

### Limitations
#### Filters and search
- The search cannot be combined with filters or sorting. This is a limitation of the Audiobookshelf API.
- The search is limited to 25 results, because there is no pagination available. This is a limitation of the Audiobookshelf API.

# Contributing

See [CONTRIBUTING.md](md/CONTRIBUTING.md) for more information.

Please sort the keys in the `en.json` file (and other edited) alphabetically before submitting a pull request.\
You can use the following command to sort the keys:
```bash
dart pub global activate arb_utils
```
```bash
arb_utils generate-meta .\lib\l10n\intl_en.arb
```
```bash
arb_utils sort .\lib\l10n\intl_en.arb
```
Or for an IDE that supports running code from a README, you can use the following Dart code:

```bash
arb_utils generate-meta .\lib\l10n\intl_en.arb
arb_utils sort .\lib\l10n\intl_en.arb
```
