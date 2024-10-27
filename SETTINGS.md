# Settings

## General

### Dark Mode
> Enable or disable dark mode.

### Show Account Switcher
> If more than one account is available, an additional account switcher will be shown at the top, allowing you to switch between accounts, servers, and libraries with just two clicks.

### Collapse Series
> Currently, this setting has no effect.

### Downloads Only via WiFi
> Only download items when connected to WiFi.

### Sync Only via WiFi
> Only sync items when connected to WiFi.

## Player Settings

### Stop Player Until Sync
> When starting playback (e.g., after a pause), the player will wait until the latest sync is received before starting playback. If this is disabled, the player will start playback immediately, which may cause a slight jump after the start.

### Show Progress per Chapter
> The progress bar will display the progress per chapter instead of the overall progress of the entire item.

### Shake to Reset Sleep Timer
> If the sleep timer is set, you can shake your device to reset the timer.

### Lock Media Progress Bar
> Locks the media progress bar in the notification, preventing accidental changes to the playback progress. This change requires a restart of the app to take effect.

### Fast Forward and Rewind Time
> Sets the time in seconds for fast forward or rewind when the buttons are pressed. This applies to all controls, including notifications.

### Sync Interval
> Sets the interval in seconds to sync the local progress with the server. A recommended setting is 10 seconds to keep progress up to date. If no connection is available or an error occurs, the sync will be saved locally and sent the next time a connection is established.

## Caching

### Caching
> Enable or disable caching. If enabled, the app will cache items for faster use.

### Agressive Caching
> When enabled, the app will enable more aggressive caching. This includes caching routes that might contain data needing regular updates, such as fetching the progress of all items. In these cases, the last known position will be used unless you specifically open and request a single item. These routes will have a shorter cache duration.

### Fast Loading
> When this feature is enabled, the app effectively bypasses real-time caching. It will always attempt to fetch the latest data from the server while using cached data to load content immediately. Once the updated data is retrieved, it replaces the old cache, ensuring that the most recent data is displayed the next time you load the app. As a result, you will always see the data from one fetch cycle behind the server's current data.

### Minimize to Tray
> When enabled, the app will not have a taskbar entry and will only be accessible via the system tray.