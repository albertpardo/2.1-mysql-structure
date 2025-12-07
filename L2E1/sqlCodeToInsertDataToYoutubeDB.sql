USE youtubeDB;

INSERT INTO youtubeDB.tags (tags_id, tags_name) VALUES
(1, 'tutorial'),
(2, 'gaming'),
(3, 'vlog'),
(4,'review'),
(5, 'unboxing');


INSERT INTO youtubeDB.users (user_id, users_name, users_dob, users_email, users_password_hash, users_gender, users_country, users_zip) VALUES
(1, 'John Miller',        '1990-03-12', 'john.miller@example.com',       '$2b$10$A1n3Ud8xPq9zKp7fXh92YeWgP8aJR0lMvQdZ8iQz1XeHkL7Sf7nXW', 'M',  'USA',        '90210'),
(2, 'Emily Johnson',      '1994-07-21', 'emily.johnson@example.com',     '$2b$10$B9AkPq3Ns91teUu6Fy1tLeFZlD8rRzE9uSJ3sm2C9XN0UvC8pQ2bC', 'F',  'Canada',     'H2B3L4'),
(3, 'Carlos Rivera',      '1988-11-02', 'carlos.rivera@example.com',     '$2b$10$G4PqKc9Lx3nQVe8zWa5lUeM1pQXsLZy8t3wNnBu4y2SoJfHe9S2hW', 'M',  'Mexico',     '01020'),
(4, 'Sarah Thompson',     '1999-01-17', 'sarah.thompson@example.com',    '$2b$10$J7QpPz9Kc6uAeVf2Xd2cFOWjTQKn8p1q2eTz0Rm5tLkMhNyE4a1i9K', 'F',  'UK',         'SW1A1AA'),
(5, 'David Kim',          '1992-05-30', 'david.kim@example.com',         '$2b$10$M1nQy7XbA0vFwTj7Dz4uEeXfVjQr2cW0sLtPm6XkOQnBzP0Lk7yK6', 'M',  'South Korea','04524'),
(6, 'Laura Smith',        '1985-12-09', 'laura.smith@example.com',       '$2b$10$T8zLn9QeP3aJvFk9Bx1dUeM5zRyNn3oA4hGm0Sx2tJpFk6Rz2pQ1K', 'F',  'USA',        '33101'),
(7, 'Yuki Tanaka',        '1996-04-14', 'yuki.tanaka@example.com',       '$2b$10$Q0pAm6NcL8kYtKz3Fx7uPeN9bRqJm5nU1aSp4Qd3oXeTy2Ui8bHqO', 'OP', 'Japan',      '1500001'),
(8, 'Oliver Brown',       '1983-09-27', 'oliver.brown@example.com',      '$2b$10$U7nKs2JdA4pQvTl9Hw3zEeXb8LqSz5eN2fKm8Nd3oJrHs1Ek6wTq2', 'M',  'Australia',  '3000'),
(9, 'Sofia Martínez',     '1997-02-08', 'sofia.martinez@example.com',    '$2b$10$L4kBv8NzC1mDxVf6Xe2hQeR9oJsNr1q6zYfKp5Rm2sSaKz7Cr3mT2', 'F',  'Spain',      '28001'),
(10,'Marcus Schneider',   '1989-06-25', 'marcus.schneider@example.com',  '$2b$10$D3mHs6VeA9pXgWk8Ty5eBeW8tQjKr9rB2fFp4Cn1yQvGw3Nd8yLuO', 'M',  'Germany',    '10115');


INSERT INTO youtubeDB.videos (videos_id, users_user_id, videos_title, videos_description, videos_size, videos_filename, videos_runtime, videos_thumbnail, videos_reproduction_num, videos_total_likes, videos_total_dislakes, videos_state, videos_created) VALUES
-- 10 videos públicos, uno por usuario
(1, 1, 'How to Build a Gaming PC', 'Step-by-step guide to assembling a powerful gaming PC.', 854233221, 'gaming_pc_build.mp4', '00:12:45', 'thumb_pc_build.jpg', 15230, 1430, 25, 'PU', '2024-02-10 14:22:10'),
(2, 2, 'Vegan Breakfast Recipes', 'Quick and healthy vegan breakfast ideas.', 422112300, 'vegan_breakfast.mp4', '00:08:12', 'thumb_vegan_breakfast.jpg', 9821, 912, 14, 'PU', '2024-01-18 09:15:44'),
(3, 3, 'Mexico Travel Guide 2024', 'Full guide with tips and best places to visit.', 1099004432, 'mexico_travel_guide.mp4', '00:15:30', 'thumb_mexico.jpg', 25400, 1883, 41, 'PU', '2024-03-01 20:30:10'),
(4, 4, 'Studying Techniques for 2024', 'Improve your study time with these tricks.', 312003210, 'study_tips.mp4', '00:06:55', 'thumb_study.jpg', 7760, 690, 5, 'PU', '2024-02-05 11:02:17'),
(5, 5, 'K-Pop Dance Tutorial', 'Beginner choreography explained step by step.', 688220100, 'kpop_dance_tutorial.mp4', '00:10:20', 'thumb_kpop.jpg', 32011, 2700, 33, 'PU', '2024-01-12 17:44:59'),
(6, 6, 'Healthy Meal Prep Ideas', 'Prepare meals for the whole week.', 511002234, 'meal_prep.mp4', '00:09:35', 'thumb_meal.jpg', 14000, 1233, 18, 'PU', '2024-02-20 08:55:33'),
(7, 7, 'Japanese Calligraphy Basics', 'Introductory strokes and techniques.', 298003001, 'japanese_calligraphy.mp4', '00:05:48', 'thumb_calligraphy.jpg', 6521, 521, 7, 'PU', '2024-03-11 16:33:12'),
(8, 8, 'Surfing for Beginners', 'Basic surfing techniques and safety tips.', 766432998, 'surfing_basics.mp4', '00:11:11', 'thumb_surf.jpg', 19000, 1421, 19, 'PU', '2024-02-16 10:41:50'),
(9, 9, 'Spanish Guitar Lesson #1', 'Learn chords and rhythm patterns.', 415005499, 'guitar_lesson1.mp4', '00:07:20', 'thumb_guitar1.jpg', 11045, 987, 8, 'PU', '2024-01-30 19:01:01'),
(10, 10, 'Berlin Street Photography', 'Capturing the essence of Berlin through the lens.', 500230887, 'berlin_photography.mp4', '00:09:02', 'thumb_berlin.jpg', 17022, 1500, 12, 'PU', '2024-03-05 12:25:27'),

-- 10 videos adicionales: mezclados, incluyendo privados (PR) y ocultos (H)
(11, 1, 'Advanced PC Cable Management', 'Make your PC look clean and professional.', 633221001, 'cable_management.mp4', '00:06:22', 'thumb_cable.jpg', 4221, 380, 4, 'PR', '2024-03-10 10:10:10'),
(12, 3, 'Street Food in Mexico City', 'Exploring top street food spots.', 943221009, 'mexico_street_food.mp4', '00:08:48', 'thumb_streetfood.jpg', 12000, 1055, 10, 'H', '2024-03-12 18:22:59'),
(13, 4, 'Morning Routine for Productivity', 'Daily routine to maximize productivity.', 232100432, 'morning_routine.mp4', '00:04:55', 'thumb_morning.jpg', 8900, 830, 6, 'PR', '2024-02-28 07:50:29'),
(14, 5, 'K-Pop Dance Intermediate Choreo', 'Level up your choreography skills!', 702331122, 'kpop_intermediate.mp4', '00:12:11', 'thumb_kpop2.jpg', 31000, 2601, 22, 'PU', '2024-03-06 15:12:11'),
(15, 7, 'Japanese Ink Preparation', 'How to prepare traditional sumi ink.', 188002341, 'ink_preparation.mp4', '00:03:45', 'thumb_ink.jpg', 5100, 432, 3, 'H', '2024-03-09 14:40:41'),
(16, 8, 'Surfboard Care Guide', 'How to keep your surfboard in top condition.', 322110554, 'surfboard_care.mp4', '00:05:55', 'thumb_surfcare.jpg', 8700, 710, 9, 'PR', '2024-02-22 09:18:00'),
(17, 9, 'Spanish Guitar Lesson #2', 'Learning arpeggios and scales.', 430002345, 'guitar_lesson2.mp4', '00:07:44', 'thumb_guitar2.jpg', 9300, 800, 6, 'PU', '2024-03-03 20:44:55'),
(18, 2, 'Vegan Smoothie Recipes', '3 delicious smoothie bowls.', 366110987, 'vegan_smoothies.mp4', '00:06:40', 'thumb_smoothies.jpg', 14500, 1312, 11, 'PU', '2024-02-14 13:10:33'),
(19, 10, 'Editing Photos with Lightroom', 'Basic Lightroom editing workflow.', 501220667, 'lightroom_editing.mp4', '00:09:50', 'thumb_lightroom.jpg', 14778, 1200, 10, 'PR', '2024-03-08 17:12:18'),
(20, 6, 'Weekly Meal Prep Advanced', 'More complex recipes for weekly prep.', 611332009, 'meal_prep_advanced.mp4', '00:10:15', 'thumb_meal2.jpg', 13000, 1190, 7, 'H', '2024-03-11 11:01:55');

INSERT INTO youtubeDB.comments (comments_id, users_user_id, videos_videos_id, comments_text, comments_created) VALUES
-- Video 1 (3 comentarios)
(1, 2, 1, 'Great guide, very detailed!', '2024-03-12 10:15:00'),
(2, 3, 1, 'I learned a lot, thanks!', '2024-03-12 11:22:00'),
(3, 4, 1, 'Can you show a budget version?', '2024-03-12 12:35:00'),

-- Video 2 (1 comentario)
(4, 1, 2, 'These recipes look delicious!', '2024-03-13 09:10:00'),

-- Video 3 (1 comentario)
(5, 2, 3, 'Mexico City is on my bucket list!', '2024-03-13 10:05:00'),

-- Video 4 (1 comentario)
(6, 5, 4, 'Very useful tips, thanks!', '2024-03-14 08:45:00'),

-- Video 5 (3 comentarios)
(7, 6, 5, 'Loved the choreography!', '2024-03-14 14:15:00'),
(8, 7, 5, 'Can you make a tutorial for beginners?', '2024-03-14 15:30:00'),
(9, 8, 5, 'Amazing moves, I tried it myself!', '2024-03-14 16:05:00'),

-- Video 6 (1 comentario)
(10, 3, 6, 'Meal prep is a lifesaver, thanks!', '2024-03-15 09:20:00'),

-- Video 8 (1 comentario)
(11, 4, 8, 'I want to try surfing next summer!', '2024-03-15 11:40:00'),

-- Video 9 (3 comentarios)
(12, 1, 9, 'Guitar lesson was clear and easy to follow!', '2024-03-16 12:10:00'),
(13, 2, 9, 'Loved the arpeggios explanation!', '2024-03-16 13:25:00'),
(14, 5, 9, 'More lessons like this please!', '2024-03-16 14:40:00'),

-- Video 10 (1 comentario)
(15, 3, 10, 'Berlin photography looks stunning!', '2024-03-17 10:00:00');

INSERT INTO youtubeDB.videos_has_tags (videos_videos_id, tags_tags_id) VALUES
(1, 1),   -- How to Build a Gaming PC → tutorial
(2, 1),   -- Vegan Breakfast Recipes → tutorial
(3, 3),   -- Mexico Travel Guide 2024 → vlog
(4, 1),   -- Studying Techniques for 2024 → tutorial
(5, 2),   -- K-Pop Dance Tutorial → gaming (movimiento/actividad)
(6, 1),   -- Healthy Meal Prep Ideas → tutorial
(7, 1),   -- Japanese Calligraphy Basics → tutorial
(8, 2),   -- Surfing for Beginners → gaming / actividad
(9, 4),   -- Spanish Guitar Lesson #1 → review (instrumento)
(10, 3),  -- Berlin Street Photography → vlog
(11, 1),  -- Advanced PC Cable Management → tutorial
(12, 3),  -- Street Food in Mexico City → vlog
(13, 1),  -- Morning Routine for Productivity → tutorial
(14, 2),  -- K-Pop Dance Intermediate Choreo → gaming
(15, 1),  -- Japanese Ink Preparation → tutorial
(16, 1),  -- Surfboard Care Guide → tutorial
(17, 4),  -- Spanish Guitar Lesson #2 → review
(18, 1),  -- Vegan Smoothie Recipes → tutorial
(19, 4),  -- Editing Photos with Lightroom → review
(20, 1);  -- Weekly Meal Prep Advanced → tutorial

INSERT INTO youtubeDB.video_likes (users_user_id, videos_videos_id, video_likes_status, video_likes_datatime) VALUES
-- Video 1 (How to Build a Gaming PC)
(2, 1, 'L', '2024-03-12 11:30:00'),
(3, 1, 'L', '2024-03-12 12:05:00'),
(4, 1, 'D', '2024-03-12 12:40:00'),

-- Video 2 (Vegan Breakfast Recipes)
(1, 2, 'L', '2024-03-13 09:20:00'),
(3, 2, 'L', '2024-03-13 10:30:00'),

-- Video 3 (Mexico Travel Guide 2024)
(1, 3, 'L', '2024-03-13 10:15:00'),
(2, 3, 'D', '2024-03-13 10:50:00'),

-- Video 4 (Studying Techniques for 2024)
(5, 4, 'L', '2024-03-14 08:50:00'),
(6, 4, 'L', '2024-03-14 09:15:00'),

-- Video 5 (K-Pop Dance Tutorial)
(6, 5, 'L', '2024-03-14 14:30:00'),
(7, 5, 'L', '2024-03-14 15:45:00'),
(8, 5, 'D', '2024-03-14 16:15:00'),

-- Video 6 (Healthy Meal Prep Ideas)
(3, 6, 'L', '2024-03-15 09:30:00'),
(1, 6, 'L', '2024-03-15 09:50:00'),

-- Video 8 (Surfing for Beginners)
(4, 8, 'L', '2024-03-15 11:50:00'),
(5, 8, 'D', '2024-03-15 12:20:00'),

-- Video 9 (Spanish Guitar Lesson #1)
(1, 9, 'L', '2024-03-16 12:15:00'),
(2, 9, 'L', '2024-03-16 13:30:00'),
(5, 9, 'D', '2024-03-16 14:50:00'),

-- Video 10 (Berlin Street Photography)
(3, 10, 'L', '2024-03-17 10:10:00'),
(4, 10, 'L', '2024-03-17 10:45:00'),
(5, 10, 'D', '2024-03-17 11:20:00'),

-- Videos adicionales públicos de la lista de 20 videos
(2, 14, 'L', '2024-03-06 15:25:00'),  -- K-Pop Dance Intermediate Choreo
(6, 17, 'L', '2024-03-03 21:00:00'),  -- Spanish Guitar Lesson #2
(9, 18, 'L', '2024-02-14 13:20:00');  -- Vegan Smoothie Recipes

INSERT INTO youtubeDB.playlist (playlist_id, users_user_id, videos_videos_id) VALUES
-- Usuario 1 (3 videos)
(1, 1, 2),
(2, 1, 5),
(3, 1, 6),

-- Usuario 2 (2 videos)
(4, 2, 1),
(5, 2, 3),

-- Usuario 3 (4 videos)
(6, 3, 4),
(7, 3, 6),
(8, 3, 8),
(9, 3, 10),

-- Usuario 4 (1 video)
(10, 4, 2),

-- Usuario 5 (2 videos)
(11, 5, 5),
(12, 5, 9),

-- Usuario 6 (0 videos) → no se insertan registros

-- Usuario 7 (1 video)
(13, 7, 5),

-- Usuario 8 (3 videos)
(14, 8, 1),
(15, 8, 6),
(16, 8, 8),

-- Usuario 9 (2 videos)
(17, 9, 3),
(18, 9, 9),

-- Usuario 10 (2 videos)
(19, 10, 4),
(20, 10, 10);

INSERT INTO youtubeDB.comments_likes (comments_likes_id, users_user_id, comments_comments_id, comments_users_user_id, comments_videos_videos_id, comments_likes_status, comments_likes_created) VALUES
-- Comentario 1
(1, 3, 1, 2, 1, 'L', '2024-03-12 11:40:00'),
(2, 4, 1, 2, 1, 'L', '2024-03-12 12:10:00'),

-- Comentario 2
(3, 1, 2, 3, 1, 'L', '2024-03-12 12:45:00'),
(4, 5, 2, 3, 1, 'D', '2024-03-12 13:05:00'),

-- Comentario 3
(5, 2, 3, 4, 1, 'L', '2024-03-12 13:30:00'),

-- Comentario 4
(6, 3, 4, 1, 2, 'L', '2024-03-13 09:25:00'),

-- Comentario 5
(7, 1, 5, 2, 3, 'L', '2024-03-13 10:20:00'),
(8, 4, 5, 2, 3, 'D', '2024-03-13 10:50:00'),

-- Comentario 6
(9, 1, 6, 5, 4, 'L', '2024-03-14 08:55:00'),

-- Comentario 7
(10, 1, 7, 6, 5, 'L', '2024-03-14 14:35:00'),
(11, 2, 7, 6, 5, 'L', '2024-03-14 14:45:00'),

-- Comentario 8
(12, 1, 8, 7, 5, 'D', '2024-03-14 15:35:00'),

-- Comentario 9
(13, 6, 9, 8, 5, 'L', '2024-03-14 16:10:00'),

-- Comentario 10
(14, 1, 10, 3, 6, 'L', '2024-03-15 09:35:00'),

-- Comentario 11
(15, 5, 11, 4, 8, 'L', '2024-03-15 11:55:00'),

-- Comentario 12
(16, 6, 12, 1, 9, 'L', '2024-03-16 12:20:00'),
(17, 2, 12, 1, 9, 'D', '2024-03-16 12:40:00'),

-- Comentario 13
(18, 3, 13, 2, 9, 'L', '2024-03-16 13:35:00'),

-- Comentario 14
(19, 4, 14, 5, 9, 'L', '2024-03-16 14:50:00'),
(20, 6, 14, 5, 9, 'D', '2024-03-16 15:05:00'),

-- Comentario 15
(21, 2, 15, 3, 10, 'L', '2024-03-17 10:15:00'),
(22, 5, 15, 3, 10, 'D', '2024-03-17 10:45:00'),
(23, 6, 15, 3, 10, 'L', '2024-03-17 11:05:00'),
(24, 1, 15, 3, 10, 'L', '2024-03-17 11:20:00'),
(25, 4, 15, 3, 10, 'D', '2024-03-17 11:50:00');

INSERT INTO youtubeDB.channels (channels_id, users_user_id, channels_name, channels_description, channels_created) VALUES
(1, 1, 'TechSavvy', 'Channel dedicated to PC builds, gaming and tech tutorials.', '2024-01-10'),
(2, 2, 'VeganDelights', 'Vegan recipes, healthy lifestyle and smoothie ideas.', '2024-01-15'),
(3, 3, 'TravelWithMe', 'Exploring cities, travel guides and vlogs.', '2024-02-01'),
(4, 4, 'StudySmart', 'Tips and tricks to improve your study routines.', '2024-02-05'),
(5, 5, 'KPopMoves', 'K-Pop dance tutorials and choreography lessons.', '2024-01-12'),
(6, 6, 'MealPrepMaster', 'Weekly meal prep ideas and healthy recipes.', '2024-02-20'),
-- Usuario 7 sin canal
(7, 8, 'SurfingLife', 'Surfing guides, safety tips and travel adventures.', '2024-02-16'),
(8, 9, 'GuitarHero', 'Spanish guitar lessons and music tutorials.', '2024-01-30'),
(9, 10, 'BerlinLens', 'Street photography and photo editing tutorials.', '2024-03-05');

INSERT INTO youtubeDB.channel_has_user_videos (channels_channels_id, videos_videos_id) VALUES
-- Canal 1 → Usuario 1
(1, 1),  -- How to Build a Gaming PC
(1, 2),  -- Vegan Breakfast Recipes (también puede incluir otro video público suyo)
(1, 6),  -- Healthy Meal Prep Ideas

-- Canal 2 → Usuario 2
(2, 2),  -- Vegan Breakfast Recipes
(2, 18), -- Vegan Smoothie Recipes

-- Canal 3 → Usuario 3
(3, 3),  -- Mexico Travel Guide 2024
(3, 4),  -- Studying Techniques for 2024
(3, 6),  -- Healthy Meal Prep Ideas

-- Canal 4 → Usuario 4
(4, 4),  -- Studying Techniques for 2024

-- Canal 5 → Usuario 5
(5, 5),  -- K-Pop Dance Tutorial
(5, 14), -- K-Pop Dance Intermediate Choreo

-- Canal 6 → Usuario 6
(6, 6),  -- Healthy Meal Prep Ideas
(6, 18), -- Vegan Smoothie Recipes

-- Canal 7 → Usuario 8
(7, 8),  -- Surfing for Beginners

-- Canal 8 → Usuario 9
(8, 9),  -- Spanish Guitar Lesson #1
(8, 17), -- Spanish Guitar Lesson #2

-- Canal 9 → Usuario 10
(9, 10); -- Berlin Street Photography

INSERT INTO youtubeDB.user_channel_subscription
(users_user_id, channels_channels_id)
VALUES
-- Canal 1 → TechSavvy (Usuario 1)
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),

-- Canal 2 → VeganDelights (Usuario 2)
(1, 2),
(3, 2),
(4, 2),
(5, 2),

-- Canal 3 → TravelWithMe (Usuario 3)
(1, 3),
(2, 3),
(4, 3),
(5, 3),
(6, 3),
(8, 3),

-- Canal 4 → StudySmart (Usuario 4)
(1, 4),
(2, 4),
(3, 4),
(5, 4),

-- Canal 5 → KPopMoves (Usuario 5)
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),

-- Canal 6 → MealPrepMaster (Usuario 6)
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),

-- Canal 7 → SurfingLife (Usuario 8)
(1, 7),
(2, 7),
(3, 7),
(4, 7),

-- Canal 8 → GuitarHero (Usuario 9)
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),

-- Canal 9 → BerlinLens (Usuario 10)
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9);
