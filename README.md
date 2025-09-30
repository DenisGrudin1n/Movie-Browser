# Movie Browser

A Flutter application that allows users to browse and favorite movies using The Movie Database (TMDB) API. Built with clean architecture principles, separating concerns into data, domain, and presentation layers for better maintainability and testability.

## Screenshots

<img width="270" height="555" alt="Screenshot_1759254938" src="https://github.com/user-attachments/assets/ed937360-8cd5-40be-af6e-b66633d3464b" />ㅤㅤㅤ
<img width="270" height="555" alt="Screenshot_1759254946" src="https://github.com/user-attachments/assets/3333b710-43a8-42be-bcfd-e2321ee59afe" />ㅤㅤㅤ
<img width="270" height="555" alt="Screenshot_1759254964" src="https://github.com/user-attachments/assets/d41de033-1f49-4400-bf21-d589cad654fa" />

## Features

### Home Page
- Carousel slider displaying popular movies
- Dynamic card sizing with smooth animations
- Movie overview with adaptive text display
- Quick favorite toggle functionality

### Movie Details
- Full-screen movie poster
- Detailed movie information
- Title and complete overview
- Release date
- Add/remove from favorites

### Favorites
- List of user's favorite movies
- Persistent storage across app restarts
- Quick access to movie details
- Easy removal from favorites

## Architecture & Dependencies

### Architecture
- Clean Architecture implementation
- Separation of concerns (data, domain, presentation layers)
- Dependency injection using GetIt
- Repository pattern for data management

### Core Dependencies
- `provider: ^6.1.5+1` - State management
- `auto_route: ^7.8.3` - Navigation and routing
- `dio: ^5.3.3` - HTTP client for API requests
- `get_it: ^7.6.4` - Dependency injection
- `shared_preferences: ^2.2.2` - Local storage for favorites
- `flutter_screenutil: ^5.9.0` - Responsive UI scaling
- `carousel_slider: ^4.2.1` - Movie carousel implementation
- `flutter_dotenv: ^5.1.0` - Environment configuration

## Getting Started

1. Clone the repository
2. Create a .env file in the root directory and add your TMDB API key:
```
TMDB_API_KEY=your_api_key_here
```
3. Run `flutter pub get`
4. Run the app using `flutter run`
---

*Note: This project uses the TMDB API but is not endorsed or certified by TMDB.*
