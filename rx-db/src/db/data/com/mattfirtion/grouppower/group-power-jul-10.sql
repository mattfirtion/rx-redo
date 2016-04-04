INSERT INTO release (name, program_id) VALUES ('JUL 10', (select id from program where name = 'Group Power'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Release Me', 'Agnes', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Warm Up'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Mony Mony', 'Billy Idol', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 1'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Push It', 'Salt-N-Pepa', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Chest'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ("We Weren't Born To Follow", 'Bon Jovix', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Back'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('I Know You Want Me', 'Pitbull', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Triceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Bad Romance', 'Lady Gaga', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Biceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Careless Whisper', 'George Michael', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 2'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Get Ready For This', '2 Unlimited', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Shoulders'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('3', 'Britney Spears', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Core'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Hold On', 'Wilson Phillips', (select id from release where name = 'JUL 10' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Stretch'));