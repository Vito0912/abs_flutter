# Audiobookshelf Flutter App

For Android, iOS*<sup>1</sup>, Windows, Linux, and Web*<sup>2</sup>

This is a third-party app for the Audiobookshelf server, designed to maintain a single codebase for multiple OS platforms.\
The app is written in Dart and utilizes the Flutter framework.\
While the current version may not include all the features of the first-party app, it is a work in progress with ongoing development.

*<sup>1</sup> iOS functionality requires additional work. Since I do not own a Mac, I cannot fully test it. However, I have only used libraries compatible with iOS.\
*<sup>2</sup> The Audiobookshelf server must be accessible via SSL, so you need a domain with a valid SSL certificate.

## Platform Matrix

| Platform Matrix                        | Android |       iOS       | Windows | Linux |       Web       |
|----------------------------------------|:-------:|:---------------:|:-------:|:-----:|:---------------:|
| Playing Audio                          |    ✅    |        ✅        |    ✅    |   ✅   |        ✅        |
| Playing Podcasts*<sup>5</sup>          |    ❌    |        ❌        |    ❌    |   ❌   |        ❌        |
| Reading eBooks*<sup>5</sup>            |    ❌    |        ❌        |    ❌    |   ❌   |        ❌        |
| Up-to-date Sync                        |    ✅    |        ✅        |    ✅    |   ✅   |        ✅        |
| Advanced Player Controls*<sup>1</sup>  |    ✅    |        ✅        |    ✅    |   ✅   |        ✅        |
| Car Support*<sup>2</sup>               |    ✅    |        ✅        |    ✅    |   ✅   |        ✅        |
| No Extra Setup Needed                  |    ✅    | ❌*<sup>6</sup>  |    ✅    |   ✅   | ❌*<sup>3</sup>  |
| Media Notifications                    |    ✅    |        ✅        |    ❌    |   ✅   |        ❌        |
| Caching*<sup>4</sup>                   |    ✅    |        ✅        |    ✅    |   ✅   |        ✅        |
| Socket Support*<sup>5</sup>            |    ❌    |        ❌        |    ❌    |   ❌   |        ❌        |

> *<sup>1</sup> Chapter support, sleep timer, playback speed, custom skip time, and more\
> *<sup>2</sup> Android Auto and Apple CarPlay are not supported as standalone apps, but media controls are supported\
> *<sup>3</sup> You need to allow CORS on the server so the web app can access it\
> *<sup>4</sup> Currently only caches images\
> *<sup>5</sup> Will be added in the future\
> *<sup>6</sup> A secure SSL connection is needed.

## Features

### Summary

🚀 **Fast Account Switching** - Switch between multiple Audiobookshelf accounts with different servers in just two clicks.\
🚀 **Caching** - Caches images for faster loading times.\
🚀 **Pagination** - Load more items when you reach the end of lists to save data.\
📈 **Does Not Rely on a Socket** - Use the app even with an occasionally interrupted connection.\
📅 **Up-to-date Sync** - The app stays synchronized with the server when connected to the internet.

### Additional to First-party App

> The features listed below have been requested for the first-party app.\
> If no specific platform is mentioned, the feature is available on all platforms.

🚀 **Fast Account Switching**\
📅 **Up-to-date Sync**

### Missing from First-party App

> The features listed below are available in the first-party app but are not yet included in this app.\
> The goal is to eventually include all first-party features.

🚗 **Car Support** - Currently limited to media controls.\
📖 **Reading eBooks**\
🎙️ **Playing Podcasts**

### Known Bugs

#### Sleep Timer

- If you select the sleep timer to stop at the end of the chapter, it will stop at the actual time. Skipping the chapter will not adjust the timer.

#### Sign-in

- When logging in for the first time, the library may not load. Please restart the app to resolve this issue.
