# First Flutter Project – Hello World + Name

This app displays a greeting (Hello World - Your Name) and today’s date. It is tailored for an assignment that requires running on an Android emulator or physical device (web not allowed).

## Quick Run
```
flutter pub get
flutter devices          # ensure an Android emulator shows
flutter run -d <emulator-id>
```

## Edit Your Name
Update `studentName` constant in `lib/main.dart` before recording the demo video.

## Emulator Troubleshooting (Android)
If the emulator shows black screen or stays `offline`:
1. Prefer a stable API 34 (non-preview) Google APIs x86_64 image.
2. Cold boot: Android Studio > Device Manager > ▼ > Cold Boot.
3. Wipe data if still stuck: ▼ > Wipe Data (will re-initialize).
4. Launch with software GPU (helps low-end hardware):
	```
	emulator -avd LiteAPI34 -no-snapshot-load -gpu swiftshader_indirect -noaudio
	```
5. If device stays `offline`:
	```
	adb kill-server
	adb start-server
	adb devices
	```
6. Create a new lightweight AVD if preview image (API 36) fails repeatedly.

## Creating a New Lightweight AVD (CLI)
```
sdkmanager "system-images;android-34;google_apis;x86_64"
avdmanager create avd -n LiteAPI34 -k "system-images;android-34;google_apis;x86_64" -d pixel_4
emulator -avd LiteAPI34 -no-snapshot -gpu swiftshader_indirect -memory 1536
```

## Common Errors
| Symptom | Fix |
|---------|-----|
| emulator `offline` | Restart adb, cold boot, avoid preview system image |
| Black screen | Use `-no-snapshot-load` and software GPU, wipe data |
| Very slow build | Reduced Gradle heap in `android/gradle.properties`, optional `--release` run |
| Licensing errors | `flutter doctor --android-licenses` |

## Assignment PDF Checklist
Include: environment setup notes, errors & resolutions, screenshot of running emulator with date, accessible video link, reflection.

## References
- [Flutter Docs](https://docs.flutter.dev/)
- [Android Emulator Troubleshooting](https://developer.android.com/studio/run/emulator-troubleshooting)

---
Auto-added guidance to streamline submission.
