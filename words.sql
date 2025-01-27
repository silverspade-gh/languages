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
ADD COLUMN hanzi_radicals VARCHAR(300),
ADD COLUMN word_type VARCHAR(20);

-- Modification of a row
UPDATE words
SET 
  bengali =  'পারতে',
  bengali_latin = 'parte',
  english = 'can',
  spanish = 'puedo',
  hanzi_story = 'The man meets at two inside of a private room.',
  hanzi_mnemonic = 'A man who can run such errands is able to (hui3)t.',
  hanzi_radicals = 'man, two, private',
  word_type = 'modal verb'
WHERE hanzi = '会';

-- Adding a new row (which could also be done from a .csv, API or other manner)
INSERT INTO words (hanzi, pinyin, bengali, bengali_latin, english, spanish, hanzi_story, hanzi_mnemonic, hanzi_radicals)
VALUES 
(
    '们', 'men5', 'রা', 'ra', '-s', '-s',
    'You apply the magical powers of the staff onto the gate to widen it for more than one.',
    'Now multiple (men5) and women can pass through the gate!',
    'staff, gate' -- Note that there is a null entry: word_type was not specified because plurals don't classify as types.
)

-- Modification of a column
ALTER TABLE words
ALTER COLUMN bengali VARCHAR(100);
