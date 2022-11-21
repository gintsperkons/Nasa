CREATE TABLE IF NOT EXISTS myAsteroidInfo (
      id int NOT NULL AUTO_INCREMENT,
      name varchar(255) NOT NULL,
      url varchar(255) NOT NULL,
      dt_utc varchar(25) NOT NULL,
      diam_min decimal(30, 5) NOT NULL,
      diam_max decimal(30, 5) NOT NULL,
      speed int(10) NOT NULL,
      distance bigint(30) NOT NULL,
      PRIMARY KEY(id)
    )