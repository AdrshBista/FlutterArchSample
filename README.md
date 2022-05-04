# Flutter architecture sample

## Prerequisites

The application is built with [Flutter](https://flutter.dev/). Setup Flutter by going through the official installation guide available [here](https://docs.flutter.dev/get-started/install).

Once Flutter is installed, run the following command:
```
flutter doctor
```
Make sure there are no issues with Flutter and the required platforms

## Connecting a device

After installing flutter, connect a any supported platform's device to run the application on.

## Running the app (through terminal)

**Step 1:**

Download or clone this repo by using the link below:
```
https://github.com/AdrshBista/FlutterArchSample.git
```

**Step 2:**

Go to project root and execute the following command to get the required dependencies:
```
flutter pub get
```

**Step 3:**

Run the app using the following commands.

Debug mode:
```
flutter run
```
Release mode:
```
flutter run --release
```

You can also run the app on a specific device by using the `-d` flag.
```
flutter run -d deviceId
```

The `deviceId` can be obtained by running the `flutter devices command`.

## Running the app (through VS Code)

**Step 1:**

Ensure you have VS Code installed. You can download it from [here](https://code.visualstudio.com/download).

**Step 2:**

Install the `Flutter` extension for VS Code. It should automatically install the `Dart` extension as well. If it doesn't, install the `Dart` extension as well.

**Step 3:**

Open the project folder with VS Code. It may take a while for the Flutter analyzer to analyze the project. Once that is done, go to `Run` and select `Start Debugging` or `Start without Debugging` to run the app.

## Code

All code for the app can be found inside the `lib/` folder.