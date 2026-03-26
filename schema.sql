-- SQL Schema for Kila Project  

CREATE TABLE users (  
    user_id SERIAL PRIMARY KEY,  
    username VARCHAR(255) UNIQUE NOT NULL,  
    password_hash VARCHAR(255) NOT NULL,  
    email VARCHAR(255) UNIQUE NOT NULL,  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);

CREATE TABLE merchants (  
    merchant_id SERIAL PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,  
    email VARCHAR(255) UNIQUE NOT NULL,  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);

CREATE TABLE categories (  
    category_id SERIAL PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,  
    description TEXT  
);

CREATE TABLE products (  
    product_id SERIAL PRIMARY KEY,  
    name VARCHAR(255) NOT NULL,  
    description TEXT,  
    price DECIMAL(10, 2) NOT NULL,  
    category_id INT REFERENCES categories(category_id),  
    merchant_id INT REFERENCES merchants(merchant_id),  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);

CREATE TABLE orders (  
    order_id SERIAL PRIMARY KEY,  
    user_id INT REFERENCES users(user_id),  
    product_id INT REFERENCES products(product_id),  
    quantity INT NOT NULL,  
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);