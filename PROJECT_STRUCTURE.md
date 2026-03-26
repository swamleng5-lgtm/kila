# Kila E-commerce Platform

## Project Directory Structure

```plaintext
kila/
├── backend/
│   ├── config/
│   │   ├── db.js
│   │   └── server.js
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   ├── middleware/
│   ├── .env
│   └── package.json
└── frontend/
    ├── public/
    ├── src/
    │   ├── components/
    │   ├── pages/
    │   ├── styles/
    │   └── App.js
    ├── .env
    └── package.json
```

### Configuration Files

#### backend/config/db.js
```javascript
const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'kila_db'
});

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to database!');
});

module.exports = connection;
```

#### backend/config/server.js
```javascript
const express = require('express');
const app = express();
const port = process.env.PORT || 5000;

app.use(express.json());

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
```

### Notes
- Make sure to run `npm install` in both backend and frontend directories to install required packages.
- Update the .env files with appropriate configuration.