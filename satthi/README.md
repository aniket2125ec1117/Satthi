satthi/
├── android/                # Android-specific files
├── ios/                    # iOS-specific files
├── lib/                    # Main application code
│   ├── api/                # API-related files
│   ├── models/             # Data models
│   ├── providers/          # State management using Riverpod
│   ├── screens/            # Screens for different user roles
|   |   |-- onboarding/     # Create a onboarding screen for every user (same onboarding screen)
│   │   ├── auth/           # Authentication-related screens (Login, Signup, Onboarding)
│   │   ├── patient/        # Screens for patients
│   │   ├── doctor/         # Screens for doctors
│   │   ├── admin/          # Screens for hospital admins
│   │   ├── common/         # Shared screens (Home, Settings, Profile)
│   ├── services/           # Services for authentication, API, notifications, etc.
│   ├── utils/              # Utility functions and constants (formatters, themes, validators)
│   ├── widgets/            # Reusable UI components (buttons, cards, forms)
│   ├── main.dart           # Entry point of the application
│   ├── routes.dart         # App navigation and route management
├── assets/                 # Static assets (images, fonts, etc.)
│   ├── images/             # App images (logos, icons, etc.)
│   ├── fonts/              # Custom fonts
├── test/                   # Unit and widget tests
├── pubspec.yaml            # Flutter project configuration and dependencies
├── README.md               # Project overview and instructions
└── .gitignore              # Git ignore file
