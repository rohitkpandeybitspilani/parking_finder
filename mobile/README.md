# Parking Finder - Mobile & Web Application

A cross-platform mobile (Android) and web application built with Flutter for finding and managing parking spaces.

## Features

- 🚗 **Find Parking**: Browse available parking spaces with real-time pricing
- 🔐 **Secure Authentication**: Register and login with JWT tokens
- 💳 **Payments**: Secure payment processing for parking sessions
- 📍 **Location-Based**: View parking meters on an interactive map
- 🔔 **Notifications**: Real-time alerts and reminders
- 👤 **User Profile**: Manage account and preferences

## Project Structure

```
mobile/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── core/
│   │   ├── theme/                # App theming and design system
│   │   ├── constants/            # Application constants
│   │   ├── services/             # Core services (API, local storage)
│   │   └── utils/                # Utility functions
│   ├── data/
│   │   ├── models/               # Data models
│   │   ├── network/              # API client & services
│   │   └── repositories/         # Repository pattern implementation
│   ├── features/
│   │   ├── auth/                 # Authentication (login/register)
│   │   ├── meters/               # Parking meters listing
│   │   ├── sessions/             # Parking sessions management
│   │   ├── payments/             # Payment processing
│   │   └── profile/              # User profile
│   ├── routes/                   # Navigation routing
│   └── widgets/                  # Reusable UI widgets
├── assets/
│   ├── images/                   # App images and illustrations
│   ├── icons/                    # Custom icons
│   └── fonts/                    # Custom fonts
└── pubspec.yaml                  # Flutter dependencies
```

## Getting Started

### Prerequisites

- Flutter SDK >= 3.0.0
- Dart >= 3.0.0
- Android SDK (for Android development)
- Chrome or another browser (for web development)

### Installation

1. **Clone the repository**:
```bash
cd mobile
```

2. **Install dependencies**:
```bash
flutter pub get
```

3. **Generate code**:
```bash
flutter pub run build_runner build
```

### Running the Application

#### Android
```bash
flutter run -d android
```

#### Web
```bash
flutter run -d chrome
```

#### iOS (Future)
```bash
flutter run -d ios
```

### Building for Production

#### Android APK
```bash
flutter build apk --release
```

#### Android App Bundle
```bash
flutter build appbundle --release
```

#### Web
```bash
flutter build web --release
```

## Design System

The app uses a modern, consistent design system with the following color palette:

- **Primary**: #2563EB (Blue)
- **Secondary**: #10B981 (Green)
- **Accent**: #F59E0B (Orange)
- **Error**: #EF4444 (Red)
- **Text Primary**: #111827 (Dark)
- **Text Secondary**: #6B7280 (Gray)

Typography uses the **Poppins** font family for a modern, clean look.

## Architecture

The app follows **Clean Architecture** principles:

- **Presentation Layer**: UI screens and widgets
- **Domain Layer**: Business logic and use cases
- **Data Layer**: API services and local storage

State management is handled using **Provider** and **Riverpod** for reactive, efficient updates.

## API Integration

The app communicates with the backend API using **Dio** HTTP client with JWT authentication.

### API Base URL
- Development: `http://localhost:3000`
- Staging: `https://staging-api.parkingfinder.com`
- Production: `https://api.parkingfinder.com`

## Testing

Run unit tests:
```bash
flutter test
```

Generate coverage report:
```bash
flutter test --coverage
```

## Contributing

1. Create a feature branch
2. Make your changes
3. Run tests and linting
4. Submit a pull request

## Troubleshooting

### Common Issues

**Issue**: Flutter packages not found
```bash
flutter pub get
flutter clean
flutter pub get
```

**Issue**: Android build fails
```bash
flutter clean
flutter pub get
./gradlew clean
flutter build apk
```

**Issue**: Web build issues
```bash
flutter clean
flutter pub get
flutter build web
```

## License

This project is licensed under the MIT License - see LICENSE file for details.

## Contact

For questions or support, please reach out to the development team.
