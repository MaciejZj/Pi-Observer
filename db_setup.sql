sudo mysql --user=root
DROP USER 'root'@'localhost';
CREATE USER 'root'@'localhost' IDENTIFIED BY 'balloonSroot';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost'

CREATE DATABASE balloonS_users;
USE balloonS_users;

CREATE TABLE users(id int, login varchar(25), pass varchar(25));

CREATE TABLE press_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, log_val real, unit varchar(6), PRIMARY KEY (num));

CREATE TABLE alt_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, log_val real, unit varchar(6), PRIMARY KEY (num));

CREATE TABLE temp_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, log_val real, unit varchar(6), PRIMARY KEY (num));

CREATE TABLE int_temp_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, log_val real, unit varchar(6), PRIMARY KEY (num));

CREATE TABLE hum_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, log_val real, unit varchar(6), PRIMARY KEY (num));

CREATE TABLE loc_log(num int NOT NULL AUTO_INCREMENT, log_time timestamp, latitude real, longitude real, velocity real, course real, PRIMARY KEY (num));