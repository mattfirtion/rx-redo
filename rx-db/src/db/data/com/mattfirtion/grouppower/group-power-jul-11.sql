INSERT INTO release (name, program_id) VALUES ('JUL 11', (select id from program where name = 'Group Power'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ("Club Can't Handle Me", 'Flo Rida', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Warm Up'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('867-5309', 'Tommy Tutone', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 1'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Good Vibrations', 'Marky Mark and the Funky Bunch', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Chest'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Firework', 'Katy Perry', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Back'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Waka Waka (This Time For Africa)', 'Shakira feat. Freshlyground', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Triceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Hot Blooded', 'Foreigner', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Biceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Stairway To Heaven', 'Led Zeppelin', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 2'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Tribal Dance', '2 Unlimited', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Shoulders'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ("DJ Hot Us Fallin' In Love", 'User feat. Pitbull', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Core'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Just the Way You Are', 'Bruno Mars', (select id from release where name = 'JUL 11' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Stretch'));