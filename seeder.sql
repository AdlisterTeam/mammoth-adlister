USE adlister_db;

INSERT INTO users (username, email, password) VALUES ("freddy", "fred@test.com", "$2a$12$GtFLXHMHT0IgZLOPcbddAOyJeiBrdm24e.Lo/bfO6cl1rMZUghFcK");

INSERT INTO ads (user_id, title, description, location) VALUES (1, "Tiesto Tickets", "I have 2 tickets to Tiesto on Saturday Night", "Las Vegas, Nevada");

INSERT INTO categories (id, category) VALUES (1, "Alternative"),
  (2, "Blues"),
  (3, "Classic Rock"),
  (4, "Children’s Music"),
  (5, "Classical"),
  (6, "Comedy"),
  (7, "Country"),
  (8, "Electronic"),
  (9,"Easy Listening"),
  (10, "Hip-Hop/Rap"),
  (11, "Holiday"),
  (12, "Christian & Gospel"),
  (13, "Jazz"),
  (14, "Latin"),
  (15, "New Age"),
  (16, "Pop"),
  (17, "R&B/Soul"),
  (18, "Reggae"),
  (19, "Rock"),
  (20, "Singer/Songwriter"),
  (21, "Tejano"),
  (22, "Vocal"),
  (23, "International");




