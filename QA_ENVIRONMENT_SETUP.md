# QA Environment Setup for Flutter hotel-search App

## Objective
Set up a local and cross-platform testing environment for manual and automated testing of the Flutter app. Also, implement E2E tests using the Patrol library.

---

## 1. Prerequisites

| Tool             | Version     | Purpose                            |
|------------------|-------------|------------------------------------|
| Flutter SDK      | 3.32.0      | Flutter app development & testing  |
| Dart SDK         | 3.8.0       | Required for Flutter               |
| Android Studio   | Flamingo+   | Emulator & debugging tools         |
| Git              | Any         | Version control & collaboration    |
| Android Device   | Any         | Local test device (optional)       |

---

## 2. Device & Emulator Setup

### Android Emulator
1. Open Android Studio → Tools → Device Manager  
2. Click **“+ Create Device”**  
3. Choose a device (e.g., Pixel 6)  
4. Select a system image (API 31+)  
5. Finish and launch the emulator  

### Physical Android Device (Recommended)
1. Enable **Developer Options**:  
   - Go to **Settings > About phone > Tap 'Build number' 7 times**  
2. Enable **USB Debugging** in Developer Options  
3. Connect your device via USB  
4. Accept the trust prompt  
5. Verify the connection:  
   ```bash
   flutter devices


⸻

## 3. Running Tests

To run widget tests:

flutter test integration_test/app_test.dart

Run Tests on Specific Device
	1.	List devices:
        flutter devices

	2.	Run test on a target device:
        flutter -d <device_id> test

⸻

## 4. Run Tests Across All Devices

A custom script is available to execute integration tests on all connected Android/iOS devices.

📄 Script Location:
./integration_test/multi_device_test.sh


⸻

## 5. End-to-End Tests Using Patrol

Patrol provides native-automation support and advanced E2E testing for Flutter apps.

✅ Setup
	•	Added patrol: ^3.15.2 to pubspec.yaml
	•	Run:
        flutter pub run patrol:install


▶️ Run a Patrol Test
        flutter test integration_test/patrol_test.dart
