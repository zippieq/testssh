-- Create the 'users' table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create the 'profiles' table with a foreign key referencing 'users'
CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    bio TEXT,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Insert sample data into the 'users' table
INSERT INTO users (username, email)
VALUES
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com'),
('mike_johnson', 'mike@example.com');

-- Insert sample data into the 'profiles' table
-- Assuming user IDs 1, 2, and 3 exist in the 'users' table
INSERT INTO profiles (bio, user_id)
VALUES
('Software Developer', 1),
('Data Scientist', 2),
('Product Manager', 3);

-- Verify the inserted data
SELECT * FROM users;
SELECT * FROM profiles;
