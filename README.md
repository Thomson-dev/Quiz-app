# tech_trivia_quiz

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:


For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tech Quiz

A cross-platform Flutter app for technology trivia quizzes. Users can select a subject, answer timed questions, and view their results with a professional UI and custom fonts.

## Features
- Gradient backgrounds and modern UI
- Poppins custom font
- SafeArea for all screens
- Per-question navigation (Next/Previous)
- Timed questions (auto-advance when time runs out)
- Answer selection and correctness feedback
- Result screen with score and rank
- GetX-inspired folder structure for scalability

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio or VS Code

### Installation
1. Clone the repository:
	```sh
	git clone <your-repo-url>
	cd tech_trivia_quiz
	```
2. Get dependencies:
	```sh
	flutter pub get
	```
3. Run the app:
	```sh
	flutter run
	```

### Build APK
To generate a release APK:
```sh
flutter build apk --release
```
Find the APK at:
```
build/app/outputs/flutter-apk/app-release.apk
```

## Folder Structure
- `lib/`
  - `main.dart` — App entry point
  - `screens/` — Home, Quiz, Result screens
  - `widgets/` — Reusable UI components
  - `data/` — Question data
  - `assets/` — Fonts and images

## Customization
- Change quiz questions in `lib/data/quesion.dart`
- Update UI styles in `lib/screens/` and `lib/widgets/`
- Add new subjects or categories as needed

## License
This project is licensed under the MIT License.
