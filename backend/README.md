# Backend API Documentation

The backend API for the Parking Finder application is built with NestJS and TypeScript.

## Setup Instructions

### Prerequisites
- Node.js 18+
- PostgreSQL 13+
- npm or yarn

### Installation

1. Install dependencies:
```bash
cd backend
npm install
```

2. Create a `.env` file based on `.env.example`:
```bash
cp .env.example .env
```

3. Update the `.env` file with your database credentials.

4. Generate Prisma client:
```bash
npm run db:generate
```

5. Run database migrations:
```bash
npm run db:migrate
```

### Running the Application

Development mode with auto-reload:
```bash
npm run dev
```

Production build:
```bash
npm run build
npm start
```

## API Endpoints

### Authentication
- **POST** `/auth/register` - Register a new user
- **POST** `/auth/login` - Login user

### Users (Protected)
- **GET** `/users/profile` - Get current user profile
- **PUT** `/users/profile` - Update user profile

### Parking Meters
- **GET** `/meters` - Get all available parking meters
- **GET** `/meters/:id` - Get meter details

### Sessions (Protected)
- **POST** `/sessions` - Create a new parking session
- **GET** `/sessions` - Get user's sessions
- **PUT** `/sessions/:id` - Update session
- **DELETE** `/sessions/:id` - Cancel session

### Payments (Protected)
- **POST** `/payments` - Process payment
- **GET** `/payments` - Get payment history

## Database Schema

The application uses Prisma ORM with PostgreSQL. Schema includes:
- Users
- ParkingMeters
- Sessions
- Payments
- Notifications

See `prisma/schema.prisma` for detailed schema.
