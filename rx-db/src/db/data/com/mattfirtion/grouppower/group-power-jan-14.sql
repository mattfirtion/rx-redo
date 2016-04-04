INSERT INTO release (name, program_id) VALUES ('JAN 14', (select id from program where name = 'Group Power'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('This''ll Be My Year', 'Train', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Warm Up'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Run To Paradise', 'The Choirboys', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 1'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('#thatPOWER', 'will.i.am feat. Justin Bieber', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Chest'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('People Like Us', 'Kelly Clarkson', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Back'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Humpin'' Around', 'Bobby Brown', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Triceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Paradise City', 'Guns N'' Roses', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Biceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Sweet Nothing', 'Calvin Harris featl. Florence Welch', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 2'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Dirty Deeds DOne Dirt Cheap', 'AC/DC', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Shoulders'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Black Or White', 'Michael Jackson', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Core'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Suit & Tie', 'Justin Timberlake feat. Jay-Z', (select id from release where name = 'JAN 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Stretch'));