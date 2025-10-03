# Flutter Android Setup Guide (Windows)

This guide helps Windows developers set up the environment to build and run Flutter apps for Android.

---

## 1. Install Required Tools

### Android Studio

- Download from: [Android Studio](https://developer.android.com/studio)
- During installation, check:
  - **Android SDK**
  - **Android SDK Platform-Tools**
  - **Android SDK Build-Tools**
  - **Android NDK**
  - **CMake**

### Java JDK 17

- Download from Oracle: [JDK 17 (Windows x64 Installer)](httpshttps://adoptium.net/temurin/releases/?version=17)
- Install and set `JAVA_HOME` (see Environment Variables section).

### Ninja (Required for CMake)

- Download from: [Ninja Releases](https://github.com/ninja-build/ninja/releases)
  - Get `ninja-win.zip`
  - Extract to `C:\ninja`
  - Add `C:\ninja` to your `Path` environment variable.

---

## 2. Environment Variables (Windows)

Set these via **System Properties** → **Environment Variables**:

1. Press `Win + R`, type `sysdm.cpl`, press **Enter**  
2. Go to **Advanced** → **Environment Variables**  
3. Add these under **User variables**:

   - **ANDROID_HOME**

     ```text
     C:\Users\<YourUser>\AppData\Local\Android\Sdk
     ```

   - **ANDROID_SDK_ROOT**

     ```text
     C:\Users\<YourUser>\AppData\Local\Android\Sdk
     ```

   - **JAVA_HOME**

     ```text
     C:\Program Files\Eclipse Adoptium\jdk-17.0.16.8-hotspot # or where it is installed
     ```

4. Edit the **Path** variable and add:

   ```text
   C:\Users\<YourUser>\AppData\Local\Android\Sdk\platform-tools
   C:\Users\<YourUser>\AppData\Local\Android\Sdk\emulator
   ```

5. Restart your PC (or at least restart terminal/IDE).  

---

## 3. SDK & Tools

Open **Android Studio → SDK Manager** and ensure:

- SDK Platforms:
  - Android 14 (API 34) or higher
- SDK Tools:
  - Android SDK Build-Tools
  - Android Emulator
  - CMake (if native code is used)

SDK installs to:  

```text
C:\Users\<YourUser>\AppData\Local\Android\Sdk
```

---

## 4. Emulator Setup

1. Open **Android Studio → Tools → Device Manager**  
2. Create a new device (e.g., **Pixel 7** with API 34)  
3. Start it once to confirm it runs  

---

## 5. Running the Flutter App

### Local host API Connection

The Android emulator runs inside a VM, so localhost (or 127.0.0.1) inside the emulator does not point to your host machine.

#### Use Special Host Address

On Android Emulator, the host machine is accessible at:

```text
http://10.0.2.2:<port>
```

⚠️ This only works for the standard Android Emulator (AVD).

#### If Using Physical Device

```text
http://192.168.1.100:<port>
```

(replace with your PC’s IP from ipconfig).


### Start Emulator

From command line:

```sh
emulator -avd Pixel_7
```

Or from **Android Studio Device Manager**.

#### Run From VS Code launch.json

Check the android emulator device id:

```bash
flutter devices
```

In launch.json change the deviceid:

```json
{
   "name": "Pixel 7",
   "request": "launch",
   "type": "dart",
   "program": "lib/main.dart",
   "deviceId": "emulator-5554"
 },
```

#### Run Flutter App

From project root:

```sh
flutter pub get
flutter run
```

To see devices:

```sh
flutter devices
```

---

## 6. Gradle & Kotlin

- **Gradle** → Managed automatically by Flutter (`gradlew`)  
- **Android Gradle Plugin (AGP)** → Defined in `android/settings.gradle` or `android/build.gradle`  
- **Kotlin version** → If needed, it’s in `android/gradle.properties` or `android/build.gradle`  

⚠️ Don’t manually upgrade these unless the team agrees. Changing Gradle/Kotlin/AGP versions can break builds for other devs.  

---

## 7. Common Issues

- **Device not found** → Make sure emulator is started and visible via:

  ```sh
  adb devices
  ```

- **CMake missing** → Install it from SDK Manager.  
- **Gradle sync fails** → Run:

  ```sh
  flutter clean
  flutter pub get
  ```

---

✅ Now you can run the app on Windows with a Pixel emulator.  
