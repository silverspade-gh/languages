/* words.sql
** Words in Bangla, Mandarin Chinese and English
** Including stories and tools to aid learning of the Hanzi
*/

-- Creation of the table
CREATE TABLE words (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  hanzi VARCHAR(10),
  pinyin VARCHAR(100),
  bengali VARCHAR(10),
  bengali_latin VARCHAR(100),
  english VARCHAR(100),
  spanish VARCHAR(100)
);

-- Insertion of a row
INSERT INTO words (hanzi, pinyin) 
VALUES (
  '我', 'wo3'
);

-- Addition of columns
ALTER TABLE words
ADD COLUMN hanzi_story VARCHAR(500),
ADD COLUMN hanzi_mnemonic VARCHAR(500),
ADD COLUMN hanzi_radicals VARCHAR(300);

-- Modification of a row
UPDATE words
SET 
  bengali =  'আমি',
  bengali_latin = 'Ami',
  english = 'I',
  spanish = 'yo',
  hanzi_story = 'The umbrella acts as a halberd that slashes monsters across the fence',
  hanzi_mnemonic = 'The (wo3)rrior carries the mighty umbrella.',
  hanzi_radicals = 'umbrella, halberd, slash'
WHERE hanzi = '我';

-- Adding a new row (which could also be done from a .csv, API or other manner)
INSERT INTO words (hanzi, pinyin, bengali, bengali_latin, english, spanish, hanzi_story, hanzi_mnemonic, hanzi_radicals)
VALUES 
(
    '们', 'men5', 'রা', 'ra', '-s', '-s',
    'You apply the magical powers of the staff onto the gate to widen it for more than one.',
    'Now multiple (men5) and women can pass through the gate!',
    'staff, gate'
)
