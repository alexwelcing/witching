# Project Outline

Keeping track of project development

## Frontend in Flutter

- [ ] Basic 3D object placement, scene creation, and viewing.
- [ ] Advanced features like object customization, real-time viewing, etc., based on pricing tiers.
- [ ] Theming parameters defined separately.


## Backend using Firebase:

- [ ] Firestore for storing user data, room configurations, etc.
- [ ] Real-time data updates.
- [ ] Security rules for Firestore and Storage.

### 3D Rendering with React-Three-Fiber:

Reusable 3D object components.
Real-time updates and state management.
Given the scope, let's break it down further.

### Flutter

- [ ] State Management with Riverpod
- [ ] Directory Structure for Clean Architecture
- [ ] Theming parameters

### Firebase

- [ ] Firestore Security Rules
- [ ] CRUD operations encapsulated within a service class
- [ ] Real-time updates

### React-Three-Fiber

- [ ] Reusable 3D object components
- [ ] Performance optimization
- [ ] State management using Zustand


Revised Folder Structure:

lib/
|-- main.dart
|-- app/
|   |-- presentation/
|   |   |-- widgets/
|   |   |-- pages/
|   |   |-- theme.dart
|   |-- application/
|   |   |-- room_manager.dart
|   |   |-- object_manager.dart
|   |-- domain/
|   |   |-- entities/
|   |   |-- repositories/
|   |-- infrastructure/
|       |-- api/
|       |-- local_storage/
|-- state/
|   |-- app_state.dart
