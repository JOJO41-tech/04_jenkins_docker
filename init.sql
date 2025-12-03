-- Create the database
CREATE DATABASE IF NOT EXISTS dit312_6703466
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE dit312_6703466;

-- Drop table if it already exists (prevents errors when re-running)
DROP TABLE IF EXISTS `videogame`;

-- Create table: videogame
CREATE TABLE `videogame` (
  `id` INT(11) NOT NULL,
  `title` VARCHAR(191) NOT NULL,
  `genre` VARCHAR(120) NOT NULL,
  `description` TEXT,
  `coverimage` VARCHAR(255) DEFAULT NULL,
  `platform` VARCHAR(120) NOT NULL,
  `year` INT(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert sample video games
INSERT INTO `videogame`
(`id`, `title`, `genre`, `description`, `coverimage`, `platform`, `year`)
VALUES
(1, 'The Legend of Zelda: Breath of the Wild', 'Action-Adventure',
'Open-world adventure game developed by Nintendo.',
'https://upload.wikimedia.org/wikipedia/en/0/0e/The_Legend_of_Zelda_Breath_of_the_Wild.jpg',
'Nintendo Switch', 2017),

(2, 'Elden Ring', 'RPG',
'Dark fantasy open-world RPG created by FromSoftware.',
'https://upload.wikimedia.org/wikipedia/en/b/b9/Elden_Ring_Box_art.jpg',
'PC / PS5 / Xbox', 2022),

(3, 'Minecraft', 'Sandbox',
'Sandbox block-building game with infinite exploration.',
'https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png',
'All Platforms', 2011),

(4, 'GTA V', 'Action',
'Open-world crime adventure game set in Los Santos.',
'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
'PC / PS / Xbox', 2013),

(5, 'Fortnite', 'Battle Royale',
'A fast-paced online battle royale game with building.',
'https://upload.wikimedia.org/wikipedia/en/0/09/Fortnite_cover.jpg',
'PC / PS / Xbox / Switch', 2017),

(6, 'Red Dead Redemption 2', 'Action-Adventure',
'A western-themed open-world adventure by Rockstar.',
'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg',
'PC / PS4 / Xbox', 2018),

(7, 'Cyberpunk 2077', 'RPG',
'Sci-fi open-world RPG in Night City.',
'https://upload.wikimedia.org/wikipedia/en/9/9f/Cyberpunk_2077_box_art.jpg',
'PC / PS5 / Xbox', 2020),

(8, 'God of War (2018)', 'Action',
'Norse mythology action game following Kratos and Atreus.',
'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg',
'PS4 / PS5', 2018),

(9, 'Horizon Zero Dawn', 'Action RPG',
'Explore a world filled with robotic creatures.',
'https://upload.wikimedia.org/wikipedia/en/4/42/Horizon_Zero_Dawn.jpg',
'PC / PS4', 2017),

(10, 'The Witcher 3: Wild Hunt', 'RPG',
'A story-rich RPG following Geralt of Rivia.',
'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg',
'PC / PS / Xbox / Switch', 2015),

(11, 'Super Mario Odyssey', 'Platformer',
'A 3D Mario platformer with creative world exploration.',
'https://upload.wikimedia.org/wikipedia/en/8/8d/Super_Mario_Odyssey.jpg',
'Nintendo Switch', 2017),

(12, 'Call of Duty: Modern Warfare II', 'FPS',
'Fast-paced military first-person shooter.',
'https://upload.wikimedia.org/wikipedia/en/8/89/Call_of_Duty_Modern_Warfare_II_2022.jpg',
'PC / PS5 / Xbox', 2022),

(13, 'Apex Legends', 'Battle Royale',
'A hero-based battle royale with fast mobility.',
'https://upload.wikimedia.org/wikipedia/en/d/db/Apex_legends_cover.jpg',
'PC / PS / Xbox / Switch', 2019),

(14, 'Valorant', 'FPS',
'A tactical shooter with unique agent abilities.',
'https://upload.wikimedia.org/wikipedia/en/5/5f/Valorant_cover_art.jpg',
'PC', 2020),

(15, 'League of Legends', 'MOBA',
'A competitive 5v5 multiplayer online battle arena game.',
'https://upload.wikimedia.org/wikipedia/en/7/77/League_of_Legends_logo.png',
'PC', 2009);

-- Add primary key + auto-increment
ALTER TABLE `videogame`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `videogame`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
