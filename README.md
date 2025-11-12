# Flutter To-Do App# Flutter To Do App



A modern, feature-rich to-do application built with Flutter and integrated with a REST API.This is an example to do app built in Flutter.



## FeaturesThe app uses an external REST API (built with Laravel) that can be accessed at [laravelreact.com](http://laravelreact.com). The source code for the API and React front-end is available at [laravel-react-bootstrap](https://github.com/devinsays/laravel-react-bootstrap).



- ✅ User Authentication (Login, Register, Password Reset)Here's a quick video showing how the app works:

- ✅ Task Management (Create, Toggle Status, View)https://www.youtube.com/watch?v=MwGy3unwhgM

- ✅ Open and Closed Tasks View

- ✅ Lazy Loading from Paginated API|![Register Screen](https://github.com/devinsays/flutter_todo/raw/master/docs/register.jpg)| ![Login Screen](https://github.com/devinsays/flutter_todo/raw/master/docs/login.jpg)|

- ✅ State Management with Provider|--|--|

- ✅ Cross-platform (Web, Windows, Mobile)![To Do List](https://github.com/devinsays/flutter_todo/raw/master/docs/todo-list.jpg)|![Add To Do](https://github.com/devinsays/flutter_todo/raw/master/docs/add-todo.jpg)



## Tech StackThe app handles:



- **Flutter** - UI Framework* Login

- **Provider** - State Management* Registration

- **HTTP** - API Communication* Password reset

- **Shared Preferences** - Local Storage* Displays "Open" and "Closed" tasks

* Lazy loads tasks from a paginated API

## Screenshots* Toggles to do status (opened/closed)

* Adds new to dos

Coming soon...* Log out



## Getting StartedThe Provider package is used to manage app state.

### Prerequisites

- Flutter SDK (>=2.12.0)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd flutter_todo-master
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
# For Chrome/Web
flutter run -d chrome

# For Windows
flutter run -d windows

# For mobile (with emulator/device connected)
flutter run
```

## Project Structure

```
lib/
├── main.dart              # App entry point
├── models/                # Data models
├── providers/             # State management
├── services/              # API services
├── views/                 # UI screens
├── widgets/               # Reusable widgets
├── styles/                # App styling
└── utils/                 # Utility functions
```

## API Configuration

The app connects to a REST API. You can configure the API endpoint in:
- `lib/providers/auth.dart`
- `lib/services/api.dart`

Default API: `https://laravelreact.com/api/v1/`

## Building for Production

### Web
```bash
flutter build web
```

### Windows
```bash
flutter build windows
```

### Android
```bash
flutter build apk
```

### iOS
```bash
flutter build ios
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Contact

For questions or feedback, please open an issue on GitHub.

---

Made with ❤️ using Flutter
