USE adlister_db;

INSERT INTO users (username, email, password) VALUES ("freddy", "fred@test.com", "$2a$12$GtFLXHMHT0IgZLOPcbddAOyJeiBrdm24e.Lo/bfO6cl1rMZUghFcK");

INSERT INTO ads (user_id, title, description) VALUES (1, "coffee", "We have the best coffee folks"),
  ( 1, "Tickets to Spurs Game", "I have two tix to tomorrow night's game vs the Warriors.  ROW 1 Seat 1&2 Section 1. $15,000 OBO"),

  (1, "Bulls Tix", "Front Row amazing seats.  I just need you to wire the money 1st $500."),
  (1, "Tickets TO Bonnaroo", "We have backstage passes TO meet ALL your favorite artists!"),
  (1, "Concert Tickets", "We have plenty of tickets to all the best concerts For example;
Tiesto, Kid Cudi, Dave Mathews Band, Bonnaroo, Ultra Music Festival"),
  (1, "Two tickets TO Aerosmith Concert", "Front ROW WITH backstage passes! A can't miss good time."),
  (1, "Entradas para Conciertos", "Metallica, Tiesto, Dave Mathews Band y muchos mÃ¡s artistas."),
  (1, "Abrir lugar para Codeup Student", "A finales de 2013, los tres cofundadores de Codeup -Michael Girdley, Jason Straughan y Chris Turner- notaron que muchos de sus compaÃ±eros programadores y empresarios estaban teniendo dificultades para encontrar desarrolladores de software de calidad para hacer crecer sus negocios. DespuÃ©s de una lluvia de ideas e investigaciones, el trÃ­o decidiÃ³ abrir el primer acelerador de la carrera de codificaciÃ³n de San Antonio con la misiÃ³n de cambiar la vida de las personas a travÃ©s de una inmersiva educaciÃ³n en desarrollo de software.

Los tres cofundadores redondearon un grupo dedicado de instructores y miembros del personal y crearon un espacio en San Antonio donde la gente puede aprender la programaciÃ³n en un ambiente de apoyo y creativo.

El equipo de Codeup espera hacer su rincÃ³n del mundo un poco mejor resolviendo un problema grande y significativo para la comunidad y el paÃ­s - una persona a la vez.");

