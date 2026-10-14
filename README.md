# 🎮 EVOFOX — Gaming Store App

**EVOFOX** is a gaming-store mobile application UI built with Flutter as part of **Flutter Boot Camp — Assignment 01**. Inspired by modern digital game distribution platforms such as Steam and Epic Games Store, the project focuses on creating an engaging gaming-themed experience with a consistent dark interface, bold typography, red accents, animated splash screen, onboarding screens, and authentication UI.

The project emphasizes Flutter fundamentals, reusable widgets, theme customization, form validation, and navigation between screens.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Assignment Objectives](#-assignment-objectives)
- [Features](#-features)
- [Screens and Navigation](#-screens-and-navigation)
- [UI Design and Theme](#-ui-design-and-theme)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Assets and Dependencies](#-assets-and-dependencies)
- [Implementation Highlights](#-implementation-highlights)
- [Future Improvements](#-future-improvements)
- [Learning Outcomes](#-learning-outcomes)
- [Author](#-author)
- [License](#-license)

---

## 🎯 Project Overview

EVOFOX is a concept for a modern gaming marketplace where users can discover games, explore gaming content, and access their accounts through a streamlined interface.

The primary goal of this assignment is to build the introductory experience of a gaming-store application. The design combines a dark background, vibrant red highlights, gaming-inspired typography, and reusable UI components to establish a consistent visual identity.

**Project details**

| Item | Description |
|---|---|
| Project Name | EVOFOX |
| Project Type | Gaming Store Mobile App UI |
| Framework | Flutter |
| Programming Language | Dart |
| Assignment | Flutter Boot Camp — Assignment 01 |
| Design Style | Dark Gaming UI |
| Primary Accent | Red |
| Target Platforms | Android and iOS, subject to platform setup |

## 📋 Assignment Objectives

This project is developed to meet the following assignment requirements:

- Create a splash screen with a suitable animation.
- Design at least three onboarding screens with a consistent UI.
- Implement proper navigation between onboarding screens.
- Create login and registration interfaces.
- Add form validation and appropriate user feedback.
- Maintain a clean and organized project structure.
- Use reusable classes and widgets to improve code maintainability.
- Develop a coherent visual design for the application.

## ✨ Features

### 1. Animated Splash Screen

- Gaming-themed introduction to the application.
- Lottie animation for a more engaging startup experience.
- Dark background consistent with the overall theme.
- Timed transition to the welcome screen.
- Uses Flutter navigation to replace the splash route after the animation delay.

### 2. Welcome Screen

- Introduces the EVOFOX gaming-store concept.
- Uses consistent branding and gaming-inspired visuals.
- Provides an entry point to the onboarding experience.

### 3. Onboarding Experience

- Three onboarding screens designed around a consistent visual style.
- Navigation between onboarding pages.
- Page indicators to communicate onboarding progress.
- Reusable buttons and navigation components.
- Skip and continue actions to help users move through the introduction.

### 4. Authentication UI

- Registration screen.
- Login screen, where implemented.
- Consistent styling across authentication interfaces.
- Form validation with user feedback, according to the implemented form rules.
- Reusable button components for a consistent user experience.

*Note: A fully functional authentication backend, account creation service, and persistent user sessions are not implied by the presence of authentication screens.*

### 5. Reusable UI Components

The application uses reusable widgets to reduce duplication and keep the interface consistent. Examples include:

- Custom application bar.
- Reusable elevated button.
- Text-based action button with styled text.
- Onboarding page indicator.
- Shared color and theme definitions.

### 6. Centralized Theme and Colors

- Shared application color constants.
- Dark-themed interface.
- Red primary accent for important actions.
- Consistent button styling, typography, and rounded corners.
- Reusable theme configuration through Flutter's `ThemeData`.

---

## 📱 Screens and Navigation

The application is organized around the following introductory flow:

1. **Splash Screen** — displays the EVOFOX animation.
2. **Welcome Screen** — introduces the app.
3. **Onboarding Screens** — presents the app's concept across three pages.
4. **Authentication Screens** — provides entry points for login and registration.

The intended user journey is to introduce the gaming-store concept before allowing users to access the authentication interface.

---

## 🎨 UI Design and Theme

EVOFOX uses a dark gaming aesthetic inspired by contemporary gaming platforms.

### Color Palette

| Color | Hex Code | Purpose |
|---|---|---|
| Background Black | `#101010` | Main screen background |
| Foreground Red | `#FF0000` | Primary actions and accents |
| Text White | `#FFFFFF` | Main text and icons |
| Text Gray | `#B8B8B8` | Secondary text |
| Dot Dark Gray | `#2A2F2C` | Inactive onboarding indicators |
| Text Field Fill Gray | `#151515` | Input backgrounds |
| Text Field Stroke Gray | `#2A2A2A` | Input borders |

### Design Principles

- **Consistency:** Shared colors, typography, buttons, and spacing across screens.
- **Readability:** High contrast between text and background.
- **Reusability:** Common UI elements are implemented as custom widgets.
- **Simplicity:** Each screen focuses on a clear purpose.
- **Brand identity:** Red accents and gaming-inspired typography reinforce the EVOFOX identity.

The design is an original gaming-store concept rather than a direct reproduction of an existing storefront.

Here's the Figma Design Frame: [Project Design](https://www.figma.com/design/yd1YWXhx3Fq40iVk5uo03x/EVOFOX--Flutter-Assignment-01-?node-id=0-1&t=lqzjZj5yZ8uW18Su-1)

---

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform UI development |
| Dart | Application programming language |
| Material Design | UI components and theming |
| Lottie | Animated splash-screen asset |
| Google Fonts | Custom typography |
| Git | Version control |
| GitHub | Source-code hosting |

---

## 📂 Project Structure

The project follows a feature-oriented organization, separating shared theme definitions, application pages, and reusable widgets.

```text
evofox_assignment_01/
│
├── android/                   # Android platform configuration
├── ios/                       # iOS platform configuration
├── assets/
│   ├── Images/                # Branding and image assets
│   └── animation/
│       └── lottie/            # Lottie animation assets
│
├── lib/
│   ├── main.dart              # Application entry point
│   │
│   ├── core/
│   │   └── theme/
│   │       └── app_colors.dart
│   │                          # Shared color constants
│   │
│   ├── pages/
│   │   ├── onboarding/
│   │   │   ├── welcome_page.dart
│   │   │   └── ...            # Onboarding and splash pages
│   │   │
│   │   └── auth/
│   │       ├── registration_page.dart
│   │       └── ...            # Authentication pages
│   │
│   └── widgets/
│       ├── elevated_app_button.dart
│       ├── text_app_button.dart
│       ├── onboarding_page_indicator.dart
│       └── ...                # Shared UI components
│
├── test/                      # Automated tests
├── pubspec.yaml               # Dependencies and asset configuration
├── pubspec.lock               # Resolved dependency versions
└── README.md                  # Project documentation
```

*This is an illustrative structure based on the project components. Update the tree to match the exact files and directories in the repository.*

### Folder Responsibilities

- **`core/theme/`** — contains shared styling definitions, including application colors.
- **`pages/onboarding/`** — contains the welcome, splash, and onboarding-related screens.
- **`pages/auth/`** — contains login and registration interfaces.
- **`widgets/`** — contains reusable components shared across multiple screens.
- **`assets/`** — stores images, branding resources, and animation files.

This separation helps make the application easier to navigate, maintain, and extend.

---

## 🚀 Getting Started

Follow these steps to run EVOFOX locally.

### Prerequisites

Install the following tools before getting started:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- [Git](https://git-scm.com/downloads)
- [Android Studio](https://developer.android.com/studio) or another compatible development environment
- An Android emulator, iOS simulator on macOS, or a connected physical device

### 1. Clone the Repository

Open a terminal and run:

```bash
git clone https://github.com/Mohammad-Nahid-Islam-Joy/evofox_flutter_assignment_01.git
```

### 2. Navigate to the Project Directory

```bash
cd evofox_flutter_assignment_01
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Verify the Flutter Environment

```bash
flutter doctor
```

Resolve any relevant environment or device configuration issues reported by Flutter.

### 5. Run the Application

Start an emulator or connect a compatible device, then execute:

```bash
flutter run
```

### 6. Build an Android APK

To create a release APK, run:

```bash
flutter build apk --release
```

After a successful build, the APK is typically located at:

```text
build/app/outputs/flutter-apk/app-release.apk
```

---

## 📦 Assets and Dependencies

### Asset Configuration

The application uses image assets for branding and a Lottie JSON file for the splash animation.

Ensure the relevant assets are registered in `pubspec.yaml`. For example:

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/Images/
    - assets/animation/lottie/
```

The directory names and capitalization must match the actual paths in the repository. Flutter asset paths are case-sensitive on many build environments.

### Package Dependencies

The project uses packages for animation and typography, including:

- [`lottie`](https://pub.dev/packages/lottie) — renders the splash animation.
- [`google_fonts`](https://pub.dev/packages/google_fonts) — provides custom font styling.

Install the versions declared in `pubspec.yaml` with `flutter pub get`. Avoid adding duplicate dependency declarations if these packages are already configured.

---

## 🧩 Implementation Highlights

### Centralized Color Management

Shared colors are defined in `AppColors`, making it easier to update the application's visual identity without changing individual screens.

### Reusable Buttons

Custom button widgets provide consistent styling and help reduce repetitive UI code. Optional icons and styled text actions can be incorporated where needed.

### Theme-Based Styling

Flutter's `ThemeData` allows common properties, such as primary colors and button appearance, to be configured centrally rather than independently on every screen.

### Animated Navigation

The splash screen uses a timed transition to move the user to the welcome screen. Named routes can help organize navigation between pages and make the application easier to extend.

### Maintainable UI Architecture

Separating pages, shared widgets, and theme constants encourages a cleaner codebase and makes future modifications easier.

---

## 🔮 Future Improvements

The following features could expand EVOFOX beyond its current introductory UI:

- [ ] Complete login and registration flows with stronger validation.
- [ ] Integrate a backend authentication service.
- [ ] Add a home screen with featured games and new releases.
- [ ] Implement game categories, search, and filtering.
- [ ] Create game details pages with descriptions, screenshots, and pricing.
- [ ] Add a wishlist and shopping cart.
- [ ] Integrate a backend or API for dynamic game data.
- [ ] Add persistent onboarding completion state.
- [ ] Improve accessibility and support additional screen sizes.
- [ ] Add unit and widget tests for important application behavior.

These items are potential enhancements, not claims about existing functionality.

---

## 📚 Learning Outcomes

This assignment provides practical experience with:

- Building multi-screen Flutter applications.
- Creating responsive interfaces using Flutter widgets.
- Managing colors and shared styling.
- Implementing custom reusable widgets.
- Working with Lottie animations and image assets.
- Navigating between application screens.
- Creating authentication forms and handling validation.
- Organizing Dart code into logical directories.
- Using Git and GitHub for source-code management.

---
## 📥 Download APK

Want to try EVOFOX on your Android device?

**[⬇️ Download EVOFOX APK](https://github.com/Mohammad-Nahid-Islam-Joy/evofox_flutter_assignment_01/releases/latest)**

1. Open the download page using the link above.
2. Download `EVOFOX-v1.0.0-Android.apk` from the release assets.
3. Open the downloaded APK on your Android device and follow the installation instructions.

> **Note:** This APK is intended for Android devices. You may need to allow installation from this source in your device settings.
---

## 👨‍💻 Author

**Nahid Islam Joy**

- GitHub: [@Mohammad-Nahid-Islam-Joy](https://github.com/Mohammad-Nahid-Islam-Joy)
- Project Repository: [evofox_flutter_assignment_01](https://github.com/Mohammad-Nahid-Islam-Joy/evofox_flutter_assignment_01)

---

## 📄 License

This project was created for educational purposes as part of a Flutter Boot Camp assignment.

Unless a separate license is added to the repository, no additional open-source reuse permissions are granted by this README.

---

<p align="center">
  <strong>EVOFOX — Your Next Great Play Starts Here.</strong>
</p>
