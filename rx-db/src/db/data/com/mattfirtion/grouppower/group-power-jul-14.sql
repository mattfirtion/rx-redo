INSERT INTO release (name, program_id) VALUES ('JUL 14', (select id from program where name = 'Group Power'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Safe And Sound', 'Capital Cities', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Warm Up'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Crazy', 'Seal', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 1'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Gonna Make You Sweat (Everyone Dance Now)', 'C+C Music Factory', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Chest'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Applause', 'Lady Gaga', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Back'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Boom Shack-A-Lak', 'Apache Indian', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Triceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Epic', 'Faith No More', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Biceps'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Wake Me Up!', 'Avicii', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Legs 2'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Stomp!', 'DJ Aligator', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Shoulders'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ("Chloe (You're The One I Want)", 'Emblem3', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Core'));
INSERT INTO track (track, artist, release_id, muscle_id) VALUES ('Rebel Beat', 'Goo Goo Dolls', (select id from release where name = 'JUL 14' AND id = (select id from program where name = 'Group Power')), (select id from muscle where name = 'Stretch'));


GroupPower – JUL 14

01.[WARM-UP] Safe And Sound / Capital Cities
02.[LEGS] Crazy / Seal
03.[CHEST] Gonna Make You Sweat (Everybody Dance Now) / C+C Music Factory
04.[BACK & LEGS] Applause / Lady Gaga
05.[TRICEPS] Boom Shack-A-Lak / Apache Indian
06.[BICEPS] Epic / Faith No More
07.[MORE LEGS] Wake Me Up! / Avicii
08.[SHOULDERS] Stomp! / DJ Aligator
09.[CORE] Chloe (You’re The One I Want) / Emblem3
10.[STRETCH] Rebel Beat / Goo Goo Dolls
11.[BONUS LEGS(2)] You Give Love A Bad Name / Bon Jovi
12.[BONUS BACK & LEGS(4)] Closer / Tegan and Sara