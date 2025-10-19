-- Seed data for Story Time application
-- This file contains initial data for objects, values, genres, and plans

-- Insert default plans
INSERT INTO plans (code, name, monthly_price_cents, yearly_price_cents, limits_json) VALUES
('free', 'Free Plan', 0, 0, '{
  "max_characters": 1,
  "max_objects_per_story": 1,
  "max_values_per_story": 1,
  "allowed_genres": ["funny", "adventure"],
  "max_word_count": 500,
  "allow_custom_prompt": false,
  "allow_pdf_export": false,
  "max_stories_per_day": 1,
  "image_resolution": "low",
  "allow_bookshelves": false
}'),
('basic', 'Basic Plan', 999, 9999, '{
  "max_characters": 5,
  "max_objects_per_story": 3,
  "max_values_per_story": 3,
  "allowed_genres": ["funny", "adventure", "mystery", "friendship"],
  "max_word_count": 1200,
  "allow_custom_prompt": true,
  "allow_pdf_export": true,
  "max_stories_per_day": 10,
  "image_resolution": "high",
  "allow_bookshelves": true
}'),
('pro', 'Pro Plan', 1999, 19999, '{
  "max_characters": 10,
  "max_objects_per_story": 5,
  "max_values_per_story": 5,
  "allowed_genres": ["funny", "adventure", "mystery", "friendship", "magical", "educational"],
  "max_word_count": 2000,
  "allow_custom_prompt": true,
  "allow_pdf_export": true,
  "max_stories_per_day": 50,
  "image_resolution": "high",
  "allow_bookshelves": true,
  "priority_queue": true,
  "upscaling_enabled": true
}');

-- Insert default objects
INSERT INTO objects (code, name, is_curated) VALUES
('treasure', 'Treasure Chest', TRUE),
('magic-wand', 'Magic Wand', TRUE),
('crown', 'Crown', TRUE),
('book', 'Book', TRUE),
('ball', 'Ball', TRUE),
('teddy-bear', 'Teddy Bear', TRUE),
('bicycle', 'Bicycle', TRUE),
('camera', 'Camera', TRUE),
('scissors', 'Scissors', TRUE),
('paintbrush', 'Paintbrush', TRUE),
('compass', 'Compass', TRUE),
('key', 'Key', TRUE),
('map', 'Map', TRUE),
('lantern', 'Lantern', TRUE),
('flower', 'Flower', TRUE),
('rocket', 'Rocket', TRUE),
('castle', 'Castle', TRUE),
('tree', 'Tree', TRUE),
('rainbow', 'Rainbow', TRUE),
('star', 'Star', TRUE);

-- Insert default values
INSERT INTO story_values (code, name, description) VALUES
('kindness', 'Kindness', 'Being gentle, caring, and considerate towards others'),
('bravery', 'Bravery', 'Having courage to face fears and challenges'),
('honesty', 'Honesty', 'Telling the truth and being trustworthy'),
('friendship', 'Friendship', 'Building and maintaining meaningful relationships'),
('forgiveness', 'Forgiveness', 'Letting go of anger and offering second chances'),
('generosity', 'Generosity', 'Sharing with others and giving freely'),
('patience', 'Patience', 'Waiting calmly and not rushing'),
('perseverance', 'Perseverance', 'Not giving up when things get difficult'),
('respect', 'Respect', 'Treating others with dignity and consideration'),
('responsibility', 'Responsibility', 'Taking ownership of actions and duties'),
('gratitude', 'Gratitude', 'Being thankful and appreciative'),
('empathy', 'Empathy', 'Understanding and sharing others feelings'),
('creativity', 'Creativity', 'Using imagination to create new things'),
('curiosity', 'Curiosity', 'Wanting to learn and discover new things'),
('cooperation', 'Cooperation', 'Working together with others'),
('fairness', 'Fairness', 'Treating everyone equally and justly'),
('loyalty', 'Loyalty', 'Being faithful and devoted to others'),
('optimism', 'Optimism', 'Having a positive outlook on life'),
('self-control', 'Self-Control', 'Managing emotions and impulses'),
('wisdom', 'Wisdom', 'Making good decisions based on experience');

-- Insert default genres
INSERT INTO genres (code, name, description) VALUES
('funny', 'Funny', 'Humorous stories that make children laugh'),
('adventure', 'Adventure', 'Exciting journeys and quests'),
('mystery', 'Mystery', 'Stories with puzzles and secrets to solve'),
('friendship', 'Friendship', 'Stories about building and maintaining friendships'),
('magical', 'Magical', 'Stories with fantasy elements and magic'),
('educational', 'Educational', 'Stories that teach important lessons'),
('bedtime', 'Bedtime', 'Calm, soothing stories perfect for bedtime'),
('nature', 'Nature', 'Stories about animals, plants, and the environment'),
('family', 'Family', 'Stories about family relationships and bonds'),
('courage', 'Courage', 'Stories about overcoming fears and challenges');

-- Insert default marketplace items (for future expansion)
INSERT INTO marketplace_items (type, code, name, description, price_cents, is_active) VALUES
('object', 'superhero-cape', 'Superhero Cape', 'A magical cape that gives special powers', 299, TRUE),
('object', 'fairy-wings', 'Fairy Wings', 'Sparkly wings that let you fly', 299, TRUE),
('value', 'leadership', 'Leadership', 'Learning to guide and inspire others', 199, TRUE),
('value', 'teamwork', 'Teamwork', 'Working together to achieve common goals', 199, TRUE),
('genre', 'science-fiction', 'Science Fiction', 'Stories about space, robots, and future technology', 399, TRUE),
('genre', 'historical', 'Historical', 'Stories set in different time periods', 399, TRUE),
('style', 'watercolor', 'Watercolor Style', 'Soft, artistic illustrations in watercolor style', 499, TRUE),
('style', 'pixel-art', 'Pixel Art Style', 'Retro-style illustrations with pixel art', 499, TRUE);

-- Create a default admin user (password: admin123)
-- Note: In production, this should be created through a secure admin setup process
INSERT INTO users (email, password_hash, role) VALUES
('admin@storytime.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');

-- Create a default test user (password: test123)
INSERT INTO users (email, password_hash, role) VALUES
('test@storytime.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user');
