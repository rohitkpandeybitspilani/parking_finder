# Parking Finder - Development Setup Guide

## Quick Start

### Prerequisites
- Node.js 18+
- Flutter 3.13+
- PostgreSQL 13+
- Docker & Docker Compose (optional)

---

## Backend Setup

### Installation
```bash
cd backend
npm install
```

### Configuration
```bash
cp .env.example .env
# Edit .env with your database credentials
```

### Database Setup
```bash
npm run db:generate
npm run db:migrate
```

### Development
```bash
npm run dev
# API runs on http://localhost:3000
```

### Available Commands
```bash
npm run build      # Build for production
npm start          # Start production server
npm run test       # Run tests
npm run lint       # Check code quality
npm run format     # Format code
```

### API Authentication
All protected endpoints require JWT token:
```
Authorization: Bearer <token>
```

Get token from `/auth/login` endpoint.

---

## Mobile/Web App Setup

### Installation
```bash
cd mobile
flutter pub get
flutter pub run build_runner build
```

### Development
```bash
# Android
flutter run -d android

# Web
flutter run -d chrome

# iOS (later)
flutter run -d ios
```

### Building for Production
```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# Web
flutter build web --release
```

---

## Docker Setup

### Run Everything with Docker
```bash
docker-compose up --build
```

This starts:
- PostgreSQL database (port 5432)
- Backend API (port 3000)

### View Logs
```bash
docker-compose logs -f backend
docker-compose logs -f postgres
```

### Stop Services
```bash
docker-compose down
```

---

## Backend API Endpoints

### Authentication
```
POST   /auth/register    - Create new account
POST   /auth/login       - Login user
```

### Expected Structure (Add Later)
```
GET    /users/profile    - Get user info (Protected)
PUT    /users/profile    - Update user (Protected)
GET    /meters           - List parking meters
GET    /meters/:id       - Get meter details
POST   /sessions         - Create parking session (Protected)
GET    /sessions         - Get user sessions (Protected)
POST   /payments         - Process payment (Protected)
GET    /payments         - Payment history (Protected)
```

---

## Folder Structure Explained

### Backend (`backend/`)
- **src/**: Source code
  - **app.module.ts**: Root application module
  - **main.ts**: Application entry point
  - **modules/**: Feature modules (auth, users, meters, etc.)
  - **common/**: Shared utilities, guards, filters
  - **config/**: Configuration files

- **prisma/**: Database
  - **schema.prisma**: Database schema
  - **migrations/**: Migration files

### Mobile (`mobile/`)
- **lib/**: Flutter source code
  - **main.dart**: App entry point
  - **core/**: Core utilities, theme, constants
  - **data/**: API client, models, repositories
  - **features/**: Feature screens (auth, meters, etc.)
  - **routes/**: Navigation configuration
  - **widgets/**: Reusable UI components

- **assets/**: Images, icons, fonts
- **pubspec.yaml**: Dependencies

---

## Environment Variables

### Backend (.env)
```env
# Database
DATABASE_URL=postgresql://user:password@localhost:5432/parking_finder

# JWT
JWT_SECRET=your-secret-key-change-in-production

# Server
PORT=3000
NODE_ENV=development

# CORS
CORS_ORIGIN=http://localhost:3000,http://localhost:5000
```

### Mobile
Create `lib/core/constants/api_constants.dart`:
```dart
class ApiConstants {
  static const String baseUrl = 'http://localhost:3000';
  static const String apiVersion = 'v1';
}
```

---

## Testing

### Backend Tests
```bash
cd backend
npm run test
npm run test:watch    # Watch mode
npm run test:cov      # With coverage
```

### Mobile Tests
```bash
cd mobile
flutter test
flutter test --coverage
```

---

## Code Quality

### Backend
```bash
cd backend
npm run lint      # Run ESLint
npm run format    # Format with Prettier
```

### Mobile
```bash
cd mobile
flutter analyze               # Static analysis
flutter format lib test       # Format code
```

---

## Troubleshooting

### Common Issues

**Flutter packages not syncing**
```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

**Backend won't start**
```bash
cd backend
rm -rf node_modules
npm install
npm run build
npm run dev
```

**Database connection error**
```bash
# Check PostgreSQL is running
# Verify DATABASE_URL in .env
# Test connection:
psql $DATABASE_URL
```

**Port already in use**
```bash
# Kill process on port 3000
lsof -ti:3000 | xargs kill -9
```

---

## Git Workflow

### Branch Naming
- `main` - Production ready code
- `develop` - Development branch
- `feature/feature-name` - Feature branches
- `fix/bug-name` - Bug fix branches

### Commit Convention
```
<type>: <subject>

<body>

<footer>
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

Example:
```
feat: add parking meter search functionality

- Add filtering by location
- Add sorting by price
- Add pagination

Closes #123
```

---

## Deployment

### Backend Deployment
```bash
# Build Docker image
docker build -t parking-finder-backend .

# Push to registry
docker push parking-finder-backend:latest
```

### Mobile Deployment
```bash
# Android Play Store
flutter build appbundle --release

# iOS App Store (coming later)
flutter build ios --release
```

### Web Deployment
```bash
flutter build web --release
# Output in build/web - deploy to any static hosting
```

---

## Useful Commands Reference

### Flutter
```bash
flutter doctor              # Check environment
flutter pub get            # Install dependencies
flutter run               # Run app
flutter build apk         # Build Android
flutter build web         # Build web
flutter analyze           # Code analysis
flutter format lib test   # Format code
```

### Backend (npm)
```bash
npm install              # Install dependencies
npm run dev             # Development mode
npm run build           # Build for production
npm start               # Start production
npm run lint            # Code linting
npm run format          # Format code
npm run test            # Run tests
npm run db:migrate      # Run migrations
```

### Docker
```bash
docker-compose up              # Start services
docker-compose down            # Stop services
docker-compose logs -f         # View logs
docker-compose exec backend sh # Access container
```

---

## Additional Resources

- [NestJS Documentation](https://docs.nestjs.com)
- [Flutter Documentation](https://flutter.dev/docs)
- [PostgreSQL Documentation](https://www.postgresql.org/docs)
- [Prisma Documentation](https://www.prisma.io/docs)
- [Docker Documentation](https://docs.docker.com)

---

## Support

For issues or questions:
1. Check relevant README files
2. Review REQUIREMENTS.md
3. Check existing GitHub issues
4. Contact development team

---

**Last Updated**: December 28, 2025
**Status**: Sprint 1 Complete ✅
