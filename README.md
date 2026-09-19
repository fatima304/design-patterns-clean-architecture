# Design Patterns & Clean Architecture - Flutter Project

A comprehensive Flutter project demonstrating essential software design patterns and Clean Architecture principles in Dart. This project covers creational patterns (Builder, Factory, Singleton), SOLID principles, and a full Clean Architecture implementation with dependency injection and state management.

## Technologies Used

- **Flutter SDK & Dart** - Cross-platform mobile development
- **flutter_bloc** - State management using BLoC/Cubit pattern
- **GetIt** - Dependency injection service locator
- **Dart OOP** - Abstract classes, interfaces, inheritance

## Project Structure

```
lib/
├── builder/              # Phase 1: Builder Pattern
│   ├── user.dart
│   ├── user_builder.dart
│   └── builder_client.dart
├── factory/              # Phase 2: Factory Pattern
│   ├── shape.dart
│   ├── circle.dart
│   ├── rectangle.dart
│   ├── square.dart
│   ├── shape_factory.dart
│   └── factory_client.dart
├── singleton/            # Phase 3: Singleton Pattern
│   ├── database.dart
│   └── singleton_client.dart
├── solid/                # Phase 4: SOLID Principles
│   ├── payment.dart
│   ├── cash_payment.dart
│   ├── credit_payment.dart
│   ├── payment_service.dart
│   └── solid_client.dart
├── clean_architecture/   # Phase 5: Clean Architecture
│   ├── data/
│   │   ├── data_source/
│   │   │   └── user_data_source.dart
│   │   ├── models/
│   │   │   └── user_model.dart
│   │   └── repository/
│   │       └── user_repository_impl.dart
│   ├── domain/
│   │   ├── entities/
│   │   │   └── user.dart
│   │   ├── repository/
│   │   │   └── user_repository.dart
│   │   └── use_cases/
│   │       └── get_users.dart
│   ├── di/
│   │   └── injection.dart
│   └── presentation/
│       ├── manager/
│       │   └── cubit/
│       │       ├── user_cubit.dart
│       │       └── user_state.dart
│       ├── screens/
│       │   └── users_screen.dart
│       └── widgets/
│           ├── user_card.dart
│           ├── users_loading.dart
│           ├── users_empty.dart
│           └── users_error.dart
├── console_demos.dart    # Console demonstrations for Phases 1-4
└── main.dart              # Flutter app entry point
```

## Design Patterns Demonstrated

### Phase 1: Builder Pattern
**Location:** `lib/builder/`

The Builder pattern allows flexible object creation where only desired attributes are provided.

- **User**: Entity class with firstName, lastName, age, phone
- **UserBuilder**: Builder class with fluent interface for step-by-step object construction
- **BuilderClient**: Demonstrates creating a User with partial data (required + optional fields)

**Run demonstration:**
```bash
dart run lib/console_demos.dart
```

### Phase 2: Factory Pattern
**Location:** `lib/factory/`

The Factory pattern creates objects without specifying their concrete classes.

- **Shape**: Abstract class with `revealMe()` method
- **Circle, Rectangle, Square**: Concrete implementations
- **ShapeFactory**: Factory with `getShape(String type)` using switch statement
- **ShapeClient**: Demonstrates factory usage

**Run demonstration:**
```bash
dart run lib/console_demos.dart
```

### Phase 3: Singleton Pattern
**Location:** `lib/singleton/`

The Singleton pattern ensures only one instance of a class is ever created.

- **Database**: Class with private static instance and private constructor
- **SingletonClient**: Verifies singleton behavior by calling `createDatabase()` twice

**Run demonstration:**
```bash
dart run lib/console_demos.dart
```

### Phase 4: SOLID Principles
**Location:** `lib/solid/`

A payment system demonstrating all five SOLID principles:

- **Single Responsibility**: Each class has one clear purpose
- **Open/Closed**: Payment types can be added without modifying existing code
- **Liskov Substitution**: Payment implementations are interchangeable
- **Interface Segregation**: Minimal, focused interfaces
- **Dependency Inversion**: Dependencies on abstractions, not implementations

**Run demonstration:**
```bash
dart run lib/console_demos.dart
```

## Clean Architecture Implementation

### Phase 5: Clean Architecture with DI & State Management
**Location:** `lib/clean_architecture/`

Full Clean Architecture structure with dependency injection and BLoC/Cubit state management.

### Architecture Layers

**Data Layer:**
- **UserDataSource**: Provides raw data from external sources
- **UserModel**: Data representation extending domain entity
- **UserRepositoryImpl**: Implementation of domain repository contract

**Domain Layer:**
- **User**: Domain entity with business-level attributes
- **UserRepository**: Abstract contract for data access
- **GetUsers**: Use case encapsulating business logic

**Presentation Layer:**
- **UserCubit**: State management using BLoC pattern
- **UserState**: State classes (Initial, Loading, Loaded, Error)
- **UsersScreen**: UI screen displaying user list
- **Widgets**: Reusable UI components (UserCard, UsersLoading, UsersEmpty, UsersError)

### Dependency Injection

**Location:** `lib/clean_architecture/di/injection.dart`

GetIt service locator configured with:
- UserDataSource (LazySingleton)
- UserRepository → UserRepositoryImpl (LazySingleton)
- GetUsers use case (LazySingleton)
- UserCubit (Factory)

### State Management

BLoC/Cubit pattern for presentation layer state management:
- **UserCubit**: Manages user data state and fetch logic
- **BlocBuilder**: UI reacts to state changes
- **Error Handling**: Try-catch with error state emission
- **Loading States**: Proper loading indication

## How to Run the Project

### Flutter Application (Phase 5)
```bash
flutter pub get
flutter run
```

### Console Demonstrations (Phases 1-4)
```bash
# Run all design pattern demonstrations together
dart run lib/console_demos.dart
```

This will output console demonstrations for:
- Phase 1: Builder Pattern
- Phase 2: Factory Pattern  
- Phase 3: Singleton Pattern
- Phase 4: SOLID Principles

## Screenshots

### Console Output Demonstrations
Run `dart run lib/console_demos.dart` to capture console output screenshots:

- **Builder Pattern**: User object created with partial data
  ```
  --- Phase 1: Builder Pattern ---
  User(firstName: Fatma, lastName: Atef, age: 25, phone: null)
  ```

- **Factory Pattern**: Each shape's reveal message
  ```
  --- Phase 2: Factory Pattern ---
  You chose to print circle
  You chose to print rectangle
  You chose to print square
  ```

- **Singleton Pattern**: Database instances equality check
  ```
  --- Phase 3: Singleton Pattern ---
  true
  ```

- **SOLID Principles**: Payment system output
  ```
  --- Phase 4: SOLID Principles ---
  Payment made with cash
  Payment made with credit card
  ```

### Flutter Application UI
Run `flutter run` to capture the Clean Architecture Flutter app screenshot:

- **Clean Architecture UI**: Users list screen with professional design
  - AppBar with "Users" title
  - Loading state with indicator and text
  - User cards with avatars, names, and emails
  - Error state with retry functionality
  - Empty state handling

## Code Quality

- Each class, widget, and screen in separate Dart files
- Clear, self-explanatory naming conventions
- Short comments explaining design patterns and architecture
- No duplicate code - shared logic extracted and reused
- Unused code removed
- All files formatted with `dart format .`

## Submission Requirements

✅ Public GitHub repository
✅ README.md documentation
✅ Each class in separate file
✅ Clear naming and comments
✅ No duplicate/unused code
✅ Formatted code
✅ All design patterns demonstrated
✅ Clean Architecture implemented
✅ Dependency injection configured
✅ State management with BLoC/Cubit
✅ Professional UI implementation

## Author

Flutter Design Patterns & Clean Architecture Training Project
