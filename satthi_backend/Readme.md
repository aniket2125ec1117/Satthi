
# **Satthi Backend**

The backend for the **Satthi App**, a healthcare management platform, built with Node.js, Express, and MongoDB. This backend provides RESTful APIs for user authentication, profile management, and other core functionalities.

---

## **Features**

- User authentication with JWT (Register/Login).
- Role-based support for **patients**, **doctors**, and **admins**.
- MongoDB integration using Mongoose.
- Secure password hashing with bcrypt.
- CORS-enabled for frontend integration.

---

## **Tech Stack**

- **Node.js**: JavaScript runtime for building scalable server-side applications.
- **Express.js**: Web framework for creating APIs.
- **MongoDB**: NoSQL database for data storage.
- **Mongoose**: Object Data Modeling (ODM) library for MongoDB.
- **JWT**: For secure authentication.
- **bcryptjs**: For hashing passwords.

---

## **Setup Instructions**

### **1. Clone the Repository**
```bash
git clone https://github.com/your-username/satthi-backend.git
cd satthi-backend
```

### **2. Install Dependencies**
```bash
npm install
```

### **3. Configure Environment Variables**
Create a `.env` file in the root directory and add the following:

```env
MONGO_URI=mongodb+srv://<username>:<password>@<cluster>.mongodb.net/<database>?retryWrites=true&w=majority
JWT_SECRET=your_jwt_secret
PORT=5001
```

Replace:
- `<username>`: Your MongoDB username.
- `<password>`: Your MongoDB password.
- `<cluster>`: Your MongoDB cluster name.
- `<database>`: The name of the database (e.g., `satthi`).
- `your_jwt_secret`: A secure string for generating JWTs.

### **4. Start the Server**
```bash
npm run dev
```

The server will run on `http://localhost:5001` by default.

---

## **API Endpoints**

### **Authentication**
| Method | Endpoint         | Description            | Body                                  |
|--------|------------------|------------------------|---------------------------------------|
| POST   | `/api/auth/register` | Register a new user     | `{ "name": "John", "email": "john@example.com", "password": "123456", "role": "patient" }` |
| POST   | `/api/auth/login`    | Login an existing user  | `{ "email": "john@example.com", "password": "123456" }` |

### **User Management**
| Method | Endpoint          | Description                | Authorization |
|--------|-------------------|----------------------------|---------------|
| GET    | `/api/users/profile` | Get logged-in user's profile | Bearer Token  |

---

## **Development Scripts**

| Command         | Description                    |
|------------------|--------------------------------|
| `npm start`      | Starts the server in production mode. |
| `npm run dev`    | Starts the server with Nodemon for development. |

---

## **Folder Structure**

```
backend/
├── server.js                 # Main server entry point
├── config/
│   └── db.js                 # MongoDB connection configuration
├── models/
│   ├── User.js               # User schema
│   ├── Patient.js            # Patient-specific schema
│   ├── Doctor.js             # Doctor-specific schema
├── controllers/
│   ├── authController.js     # Authentication logic
│   ├── userController.js     # User-related logic
├── routes/
│   ├── authRoutes.js         # Routes for authentication
│   ├── userRoutes.js         # Routes for user management
├── middlewares/
│   └── authMiddleware.js     # Middleware for JWT authentication
├── utils/
│   └── generateToken.js      # Helper function for JWT token generation
├── .env                      # Environment variables
├── package.json              # Dependencies and scripts
└── README.md                 # Project documentation
```

---

## **Security Features**

1. **Password Hashing**:
   - User passwords are hashed using `bcryptjs` before being stored in the database.
2. **JWT Authentication**:
   - Each user receives a JSON Web Token (JWT) for secure session management.
3. **CORS Protection**:
   - CORS middleware ensures that only trusted origins can access the backend.

---



### **Common Issues**
1. **MongoDB Connection Error**:
   - Ensure your `MONGO_URI` in the `.env` file is correct.
   - Whitelist your IP in the MongoDB Atlas dashboard.

2. **Port Already in Use**:
   - Another process might be using the specified port. Run:
     ```bash
     npx kill-port <port_number>
     ```

3. **CORS Error**:
   - Ensure the frontend origin is allowed in the CORS configuration in `server.js`.

---

## **Future Enhancements**

- Add more role-based functionalities (e.g., appointment management).
- Integrate payment gateways for healthcare services.
- Add more robust error handling and logging.

---




