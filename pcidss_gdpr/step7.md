# Requirement 7: Restrict Access to Cardholder Data by Business Need to Know
1. Assign ROLES based on job and function
2. Connect to mysql using the following command and password `admin`
`mysql -u root -p`{{execute}}
3. Create role
`CREATE ROLE 'web_developer';`{{execute}}
4. Grant privileges to role
`GRANT INSERT,UPDATE ON wordpress.* TO 'web_developer';`{{execute}}
5. Give role to user
`GRANT 'web_developer' TO 'dev'@'localhost';`{{execute}}