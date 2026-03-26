const users = []; // In-memory storage for users

// Function to register a new user
function registerUser(username, password) {
    const user = { username, password };
    users.push(user);
    return { message: 'User registered successfully!', user };
}

// Function to login a user
function loginUser(username, password) {
    const user = users.find(u => u.username === username && u.password === password);
    if (user) {
        return { message: 'Login successful!', user };
    }
    return { message: 'Invalid username or password.' };
}

// Function to get user profile
function getUserProfile(username) {
    const user = users.find(u => u.username === username);
    if (user) {
        return { message: 'User profile retrieved successfully!', user };
    }
    return { message: 'User not found.' };
}

// Function to update user profile
function updateUserProfile(username, newProfile) {
    const userIndex = users.findIndex(u => u.username === username);
    if (userIndex !== -1) {
        users[userIndex] = { ...users[userIndex], ...newProfile };
        return { message: 'Profile updated successfully!', user: users[userIndex] };
    }
    return { message: 'User not found.' };
}

module.exports = { registerUser, loginUser, getUserProfile, updateUserProfile };