# Android
Generate a keystore (e.g. `upload-keystore.jks`) with:
```bash
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

Create and add the following to your `~/android/key.properties`:
```properties
storePassword=<keystore-password>
keyPassword=<key-password>
keyAlias=upload
storeFile=<keystore-file-location>
```
> Note:\
> Never commit your `key.properties` file to your repository and keep it private.

Configure gradle to use the upload key. To configure gradle, edit the `~/android/app/build.gradle` file and add the following at root level:
```gradle
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
```

and add the following to the `android` block:
```gradle
signingConfigs {
    release {
        keyAlias keystoreProperties['keyAlias']
        keyPassword keystoreProperties['keyPassword']
        storeFile file(keystoreProperties['storeFile'])
        storePassword keystoreProperties['storePassword']
    }
}
```

and change the `buildTypes` block to:
```gradle
buildTypes {
    release {
        signingConfig signingConfigs.release
    }
}
```