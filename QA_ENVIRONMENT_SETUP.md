# QA Environment Setup for Flutter App (hotel-search)

## Objective
Set up a local and cross-platform testing environment for manual and automated testing of the Flutter app.

---

## 1. Prerequisites

| Tool           | Version     | Purpose                          |
|----------------|-------------|----------------------------------|
| Flutter SDK    | 3.32.0      | Flutter app development & testing |
| Dart SDK       | 3.8.0       | Required for Flutter             |
| Android Studio | Flamingo+   | Emulator & debugging tools       |
| Git            | Any         | Version control & collaboration  |
| Android Device | Any         | Local test device (optional)     |

---

## 2. Device & Emulator Setup

### Android Emulator
1. Open Android Studio → Tools → Device Manager
2. Click “+ Create Device”
3. Choose a device (e.g., Pixel 6)
4. Select a system image (API 31+)
5. Finish and launch the emulator

### Physical Android Device (Recommended)
1. Enable **Developer Options** on your phone:
   - Go to **Settings > About phone > Tap 'Build number' 7 times**
2. Enable **USB Debugging** in **Developer Options**
3. Connect your device to your computer via USB
4. Authorize the connection when prompted on the phone
5. Verify device is connected:
   ```bash
   flutter devices

---

## 3. Running Tests


To run widget tests:

```bash
flutter test integration_test/app_test.dart

```
# Run Tests on Specific Device
