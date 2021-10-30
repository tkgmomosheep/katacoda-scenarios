# Requirement 4: Encrypt transmission of cardholder data across open, public networks
1. Start a bash shell into the mysql container
`docker exec -it mysql bash`{{execute}}
2. Connect to mysql using the following command
`mysql -u root -padmin`{{execute}}
3. Observe the current connection status
`\s`{{execute}}
4. Terminate current session to mysql
`exit`{{execute}}
5. Reconnect with the following command
`mysql -padmin -h 127.0.0.1 -u root`{{execute}}
6. Observe the current connection status
`\s`{{execute}}
7. Notice that the SSL column will state the current connection is SSL enabled or not
8. Users can be required to use SSL to connect to the database by using the following command
`CREATE USER 'dev'@'localhost' REQUIRE SSL;`{{execute}}
9. Terminate the current session
`exit`{{execute}}

# Requirement 2: Not Using Vendor Default Passwords and Security Settings
## Requirement 2.4 Disable anonymous accounts and defaults
1. Enter the following command
`mysql_secure_installation`{{execute}}
2. Follow the on-scree prompt to secure the server, select 1 for password validation policy
The command covers the following requirements:<br>
    ○ Setup of VALIDATE PASSWORD plugin <br>
    ○ Level of password validation policy <br>
    ○ Setting password for root <br>
    ○ Removal of anonymous users <br>
    ○ Revoking remote root logins <br>
    ○ Removal of default schemas and grants for it
3. Reconnect with the following command and password `admin`
`mysql -p -h 127.0.0.1 -u root`{{execute}}
4. Notice that access is denied with remote login