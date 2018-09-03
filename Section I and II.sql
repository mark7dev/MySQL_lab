*****Section I. Create Database and Tables*****

Create a database called JS09_MessagesBy_YOURNAME, with two tables:
    Users (structure):
        User_Id, make it auto increment and primary key.
        Username, length of 50.
        Password, length of 41, user CHAR MySQL Data Type.
    Messages
        Message_Id, should be auto_increment and primary_key.
        User_Id, the foreign key from Users table.
        Content, user TEXT MySQL Data Type.
        Created_At, use TIMESTAMP Data Type, and add a default value of the current time that it’s created.

CREATE DATABASE JS09_MessagesBy_YOURNAME;
CREATE TABLE Users (
    User_Id INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    Password CHAR(41));
CREATE TABLE Messages ( 
    Message_Id INT AUTO_INCREMENT PRIMARY KEY, 
    User_Id INT, 
    Content TEXT, 
    Created_At TIMESTAMP DEFAULT NOW());

ALTER TABLE Messages ADD FOREIGN KEY (User_Id) REFERENCES Users(User_Id);



*****Section II. Basic Operations.*****
Insert two users:
    User 1:
        Username: tapeface
        Password: tapeface. Make sure to encrypt the content using PASSWORD native function.
    User 2:
        Username: butterface
        Password: butterface. Make sure to encrypt the content using PASSWORD native function.

Save the next three messages:
    Message 1
        Username: typeface
        Content: How is it going my friend!?
        Date: 2017-09-10 23:45:12
    Message 2
        Username: typeface
        Content: Are u there?
        Date: 2017-09-10 23:55:25
    Message 3
        Username: butterface
        Content: I’m here! Really cool. How about you man? Tell me something.
        Date: 2017-09-11 00:20:33