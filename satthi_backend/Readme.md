satthi_backend/
├── src/
│   ├── routes/
│   │   ├── authRoutes.js          # Handles API routes related to user authentication
│   │   └── bookingRoutes.js       # Handles API routes related to appointment bookings
│   ├── controllers/
│   │   ├── authController.js      # Business logic for user authentication (signup, login)
│   │   └── bookingController.js   # Business logic for handling appointments (create, update, delete)
│   ├── models/
│   │   ├── User.js                # Mongoose schema for user data (patients, doctors, admins)
│   │   └── Appointment.js         # Mongoose schema for appointment data (booking, status, details)
│   ├── middleware/
│   │   └── authMiddleware.js      # Custom middleware for authenticating JWT tokens for secured routes
│   ├── config/
│   │   └── db.js                  # MongoDB connection setup
│   ├── app.js                     # Main Express app, sets up middlewares and API routes
│   └── server.js                  # Server file that starts the Node.js app on the specified port
├── .env                           # Contains sensitive environment variables (DB connection, JWT secret)
├── package.json                   # Dependencies and scripts required for the backend
└── README.md                      # Project documentation and instructions
