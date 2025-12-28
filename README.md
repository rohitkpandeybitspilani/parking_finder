# Parking Finder 

## Project Summary

**Parking Finder** is a comprehensive mobile and web application for finding, managing, and paying for parking spaces. Sprint 1 has been successfully completed with a production-ready foundation.

---

## What's Included

### Backend (NestJS + TypeScript)
- **Status**: Production Ready
- User registration with email validation
- Secure login with JWT authentication
- Password hashing with bcrypt
- PostgreSQL database with Prisma ORM

### Mobile (Flutter)
- **Status**: UI Framework Ready
- Platforms: Android, Web (iOS ready for future)
- Splash screen with branding
- Registration screen with validation
- Login screen with JWT support
- Parking meters listing
- User profile management

### CI/CD Pipeline
- **Status**: Automated
- Automated testing
- Code quality checks
- Build verification
- Docker image building

---

## Quick Start

### Backend
```bash
cd backend
npm install
npm run db:migrate
npm run dev
```

### Mobile
```bash
cd mobile
flutter pub get
flutter run -d chrome
```

### Docker
```bash
docker-compose up --build
```

---

## Documentation

- **REQUIREMENTS.md** - Full project specifications
- **DEVELOPMENT_GUIDE.md** - Setup & development
- **backend/README.md** - Backend API docs
- **mobile/README.md** - Mobile setup
- **SPRINT_1_SUMMARY.md** - Sprint overview

---

**Version**: 1.0.0 | **Date**: December 28, 2025 | **Status**: Dev
