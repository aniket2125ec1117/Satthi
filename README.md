# Satthi App

Satthi is a healthcare management app aimed at enhancing the interaction between patients, doctors, and hospital admins. The frontend is built using Flutter with Riverpod for state management, while the backend uses Node.js and MongoDB for scalable data handling and secure API management.

---

## Project Overview

### Frontend (Flutter)

The frontend app, developed with Flutter, provides a clean, user-friendly experience for all roles in the healthcare ecosystem: patients, doctors, and hospital admins. Riverpod is used for efficient and scalable state management.

### Backend (Node.js)

The backend, built with Node.js and MongoDB, is responsible for handling API requests, user authentication, data management, and real-time updates, ensuring secure and reliable communication across the app.

---

## Project Structure

### Frontend Structure

satthi-frontend/ ├── android/ # Android-specific files ├── ios/ # iOS-specific files ├── lib/ # Main application code │ ├── api/ # API-related files │ ├── models/ # Data models │ ├── providers/ # State management using Riverpod │ ├── screens/ # Screens for different user roles │ │ ├── onboarding/ # Unified onboarding screens for all users │ │ ├── auth/ # Authentication screens (Login, Signup, Onboarding) │ │ ├── patient/ # Patient-specific screens │ │ ├── doctor/ # Doctor-specific screens │ │ ├── admin/ # Screens for hospital admins │ │ ├── common/ # Shared screens (Home, Settings, Profile) │ ├── services/ # Services for authentication, API, notifications, etc. │ ├── utils/ # Utility functions and constants (formatters, themes, validators) │ ├── widgets/ # Reusable UI components (buttons, cards, forms) │ ├── main.dart # Entry point of the application │ └── routes.dart # App navigation and route management ├── assets/ # Static assets (images, fonts, etc.) │ ├── images/ # App images (logos, icons, etc.) │ └── fonts/ # Custom fonts ├── test/ # Unit and widget tests ├── pubspec.yaml # Flutter project configuration and dependencies ├── README.md # Project overview and instructions └── .gitignore # Git ignore file


---

## Features

### Frontend

- **Authentication**: Login and signup with email and mobile number.
- **Onboarding**: Guided onboarding for new users.
- **Role-Specific Interfaces**:
  - **Patient**: Appointment booking, health record management, emergency services.
  - **Doctor**: Patient management and appointment scheduling.
  - **Admin**: Dashboard to manage hospital data and staff.
- **Shared Features**: Home, settings, and profile screens for all roles.
- **Notifications**: Real-time updates and notifications.
- **Responsive UI**: Adapted for various screen sizes.

### Backend

- **API**: Secure and optimized endpoints for user data, authentication, appointments, and notifications.
- **Database**: MongoDB database with Mongoose for data modeling.
- **Authentication**: JWT-based authentication for secure access.
- **Error Handling**: Consistent error handling across all endpoints.
- **Logging**: Logs for monitoring API requests and performance.

---

## Getting Started

### Prerequisites

- **Frontend**:
  - Flutter SDK
  - Dart
  
- **Backend**:
  - Node.js
  - MongoDB

### Installation

#### Frontend

1. Clone the repository:
   ```bash
   git clone https://github.com/aniket2125ec1117/satthi-frontend.git
