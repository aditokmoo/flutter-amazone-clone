// Imports from packages
const express = require('express');
const mongoose = require('mongoose');
// Imports from other files
const authRouter = require('./routes/auth');
// Init
const PORT = 3000;
const app = express();
const DB = 'mongodb+srv://Adi:snorlaks123@cluster0.noyejxd.mongodb.net/?retryWrites=true&w=majority';

// Middleware
app.use(express.json());
app.use(authRouter); 

// Connection
mongoose.connect(DB).then(() => {
    console.log('Connection Successful');
}).catch((error) => {
    console.log(error)
});

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Connected at port ${PORT}`);
});