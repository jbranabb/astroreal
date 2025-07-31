# AstroReal
**AstroReal** is a multi-functional Flutter application that combines **IoT device management**, **financial tracking**, and **task management** in a unified platform. Using **BLoC** architecture for state management and **Firebase** for backend services, AstroReal provides an integrated dashboard for smart device monitoring, financial data visualization, and personal productivity.

---
## 🚀 Overview

AstroReal is a multi-functional Flutter application that combines IoT device management, financial tracking, and task management in a unified platform. The application uses BLoC architecture for state management and Firebase for backend services.

> ⚠️ **Note**: This documentation represents the planned architecture and features. Current implementation focuses on UI/UX development with backend integration in progress. 

> 📌 For detailed architectural patterns and BLoC implementation, see [Application Architecture](#-architecture).  
> 📌 For specific UI component analysis, see [User Interface Components](#-features).  
> 📌 For onboarding flow details, see [Onboarding Experience](#-user-journey).

---

## 📱 Features

The application has three main functional areas accessed through a tab navigation system:

- 💰 **Wallets Tab**  
  Financial data visualization and wallet management with interactive charts and expense tracking.

- 🏠 **Home Tab**  
  IoT device control dashboard and environmental monitoring with real-time status updates.

- ✅ **Todos Tab**  
  Task management and personal productivity with priority and deadline tracking.

- 🎨 **Modern UI/UX Design**  
  Material Design 3 with color scheme based on `Colors.blue.shade700` and Lottie animations.

- 🔐 **Firebase Integration**  
  Real-time database sync and secure authentication with Firebase services.

- 📱 **Multi-Platform Support**  
  Supports Android, iOS, and Windows with unified Firebase configuration.

---

## 🧩 Architecture

AstroReal uses `MultiBlocProvider` at the root level to provide three main BLoCs:

| BLoC Component     | Description                                    |
|-------------------|------------------------------------------------|
| **OnboardingCubit** | State management for onboarding navigation   |
| **ContainerBloc**   | Container chart and data visualization management |
| **StatusDeviceBloc** | IoT device state management and monitoring |
| **UI Layer**       | Flutter widgets with Material Design 3      |
| **Firebase**       | Real-time database and authentication         |

---

## ⚙️ Tech Stack & Dependencies

### State Management & Core
| Package        | Version     | Role                           |
|---------------|-------------|--------------------------------|
| flutter_bloc  | ^9.0.0      | BLoC pattern implementation    |
| bloc          | ^9.0.0      | Core BLoC library              |

### Firebase Services
| Package           | Version     | Role                           |
|------------------|-------------|--------------------------------|
| firebase_core    | ^3.12.1     | Firebase initialization        |
| firebase_database| ^11.3.4     | Real-time database sync        |

### UI & Animation
| Package                | Version        | Role                           |
|-----------------------|----------------|--------------------------------|
| lottie                | ^3.1.3         | Complex animations and micro-interactions |
| flutter_svg           | ^2.0.17        | SVG vector graphics support    |
| google_fonts          | ^6.2.1         | Custom font integration        |
| smooth_page_indicator | ^1.2.0+3       | Onboarding page indicators     |

### Networking & Utilities
| Package | Version     | Role                           |
|---------|-------------|--------------------------------|
| dio     | ^5.8.0+1    | HTTP client for API communication |
| gap     | ^3.0.1      | Widget spacing utility         |

---

## 🧑‍💻 Core Features

| Feature Area        | Description                                           |
|--------------------|-------------------------------------------------------|
| Wallets Dashboard  | Financial data visualization and wallet management   |
| IoT Device Control | Device control dashboard and environmental monitoring |
| Task Management    | Personal task management and productivity tracking    |
| Onboarding System  | PageView with Lottie animations and smooth navigation |
| Real-time Sync     | Firebase real-time database synchronization          |
| Multi-platform     | Android, iOS, and Windows support                    |

---

## 🎨 Assets & Media

The application uses various multimedia assets:

### Lottie Animations
- `onboarding1-3.json` - Onboarding sequence animations
- `loading.json` - Loading state animations
- `dizzy.json` - Error state animations

### IoT Device Images
- `vacum.png` - Vacuum cleaner device interface
- `mac.png` - Mac device interface
- `ac.jpg` - Air conditioner unit display

### SVG Graphics
- `svg1-3.svg` - Custom illustrations
- `googlelogo.svg` - Google authentication logo

---

## 🗺️ User Journey

1. User views onboarding with 3 pages featuring Lottie animations.
2. Navigation to login page after onboarding completion.
3. Access main dashboard with three-tab navigation system.
4. Monitor IoT devices through Home tab with real-time updates.
5. Manage finances through Wallets tab with chart visualization.
6. Handle tasks through Todos tab with priority tracking.
7. Real-time data synchronization using Firebase database.

---

## 📱 Screenshots

<h3>Onboarding Experience (Lottie)</h3> 
<p align="center">
  <img src="assets/screenshots/onboarding_11.png" alt="Onboarding Screen 1" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/onboarding_12.png" alt="Onboarding Screen 2" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/onboarding_13.png" alt="Onboarding Screen 3" width="30%"/>
</p>

---

<h3>Login & Register </h3>
<p align="center">
  <img src="assets/screenshots/1.png" alt="Login Page" width="45%"/>
  &nbsp;
  <img src="assets/screenshots/5.png" alt="Register Page" width="45%"/>
</p>

---

<h3>Forgot Passwords </h3>
<p align="center">
  <img src="assets/screenshots/2.png" alt="Wallets Tab" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/3.png" alt="Home Tab" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/4.png" alt="Todos Tab" width="30%"/>
</p>

---

<h3>Main Navigation Tabs</h3>
<p align="center">
  <img src="assets/screenshots/8.png" alt="Wallets Tab" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/6.png" alt="Home Tab" width="30%"/>
  &nbsp;
  <img src="assets/screenshots/7.png" alt="Todos Tab" width="30%"/>
</p>

---

## 🚧 Development Status

**Current Version**: UI Implementation Phase  
This application currently focuses on **user interface and design implementation**. Core functionalities including IoT device integration, Firebase backend services, and real-time data synchronization are **under active development**.

### What's Available:
- ✅ Complete UI/UX design implementation
- ✅ Navigation system and tab structure  
- ✅ Onboarding flow with animations
- ✅ Static screen layouts and components

### In Development:
- 🔄 IoT device integration and real-time control
- 🔄 Firebase backend implementation
- 🔄 Financial data processing and charts
- 🔄 Task management functionality

## 🛠️ How to Run

```bash
# Clone the repository
git clone https://github.com/your-username/AstroReal.git

# Navigate to the project folder
cd AstroReal

# Get the Flutter packages
flutter pub get

# Run the app
flutter run