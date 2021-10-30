# Requirement 7: Restrict Access to Cardholder Data by Business Need to Know
1. Assign ROLES based on job and function
2. Create role
`CREATE ROLE 'web_developer';`{{execute}}
3. Grant privileges to role
`GRANT INSERT,UPDATE ON wordpress.* TO 'web_developer';`{{execute}}
4. Give role to user
`GRANT 'web_developer' TO 'dev'@'localhost';`{{execute}}