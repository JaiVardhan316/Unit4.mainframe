--This is everything I did to solve the workshop

--querry the database to get all the authors and their posts in the forum from April 2028:
SELECT author, content FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
--this gives us the author: smart-money-44
--now that we have the username we can look up this persons name in forum-accounts:
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
--from this we are able to figure out that this person's name is Brad Steele 
--next, in form_accounts we can query all the accounts that have this last name
--After that we takle a look at all the accounts in emptystack_accounts that have a last name Steele:
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
--Here we see that the emptystack employee who also has a forum account is Andrew Steele
--We plug his credentials into Node Mainframe to get a new SQL file to run
--After running it we have access to emptystack messages
--Next we query the messages to find the person that mentions a project involving self driving taxis:
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
--The person who sent this is your-boss-99
--We use this information to get this persons first name, last name, and password in emptystack_accounts:
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
--using code TAXI we can get the id of the project in empty_stack projects:
SELECT * FROM emptystack_projects WHERE code = 'TAXI';
--using Username: your-boss-99, Password: notagaincarter, and Project ID: DczE0v2b, we can complete project shutdown sequence.




