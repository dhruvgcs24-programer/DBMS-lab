use mysql;
create user vikas IDENTIFIED BY "vikas1234";
GRANT ALL PRIVILEGES ON *.* TO "vikas";
FLUSH PRIVILEGES; 